// Mesher
// Copyright (C) 2017 Christopher Marsh

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

#include "raster.h"

void raster::open(std::string path)
{
    ds = nullptr;
    ds = (GDALDataset *) GDALOpen( path.c_str(), GA_ReadOnly);
    if(!ds)
    {
        std::cout << "Unable to open " << path << std::endl;
        exit(1);
    }

    gt = new double[6];
    GDALGetGeoTransform( ds, gt );

    band = ds->GetRasterBand( 1 );

}

raster::raster()
{
    mask = nullptr;
    data = nullptr;
    ds = nullptr;
    band = nullptr;
    gt = nullptr;
}

raster::~raster()
{
    if(gt) delete[] gt;
    if(mask) delete[] mask;
    if(ds) GDALClose(ds);
    if(data) delete[] data;

}

double raster::getXY(double x, double y)
{

    auto pxpy = xy_to_pxpy(x,y);
    int px = pxpy.first;
    int py = pxpy.second;

    return getpXpY(px,py);
}


std::pair<int,int> raster::xy_to_pxpy(double x, double y)
{
//    adfGeoTransform[0] /* top left x */
//    adfGeoTransform[1] /* w-e pixel resolution */
//    adfGeoTransform[2] /* 0 */
//    adfGeoTransform[3] /* top left y */
//    adfGeoTransform[4] /* 0 */
//    adfGeoTransform[5] /* n-s pixel resolution (negative value) */
//
    int px = (int) ((x - gt[0]) / gt[1]);  // x pixel
    int py = (int) ((y - gt[3]) / gt[5]);  // y pixel

    int xsize = ds->GetRasterXSize();
    int ysize = ds->GetRasterYSize();
    //out of bound issue when we are off by one because of UTM -> pixel round off
    if (px == xsize)
        px = xsize - 1;

    if (py == ysize)
        py = ysize - 1;

    if(py == -1)
        py = 0;

    if(px == -1)
        px = 0;

    return std::make_pair(px,py);
}

double *raster::getGt() const
{
    return gt;
}

GDALDataset* raster::getDs() const
{
    return ds;
}

GDALRasterBand* raster::getBand() const
{
    return band;
}


void raster::setDs(GDALDataset* ds)
{
    raster::ds = ds;
    if(gt)
        delete[] gt;

    gt = new double[6];
    GDALGetGeoTransform( this->ds, gt );

    band = this->ds->GetRasterBand( 1 );
}

void raster::setMask(float *mask)
{
    raster::mask = mask;
}

double raster::getpXpY(int px, int py)
{
    float pafScanline; //needs to be float because GDT_Float32

//    GDALRasterIO(band, GF_Read, px, py, 1, 1,
//                 &pafScanline, 1, 1, GDT_Float32,
//                 0, 0);

    int width = ds->GetRasterXSize();
    auto idx = px + py * width;
    pafScanline = data[idx];

    double value = pafScanline; //cast up
    if(mask)
    {
        //col + NCOLS * row
        int idx = px+ds->GetRasterXSize()*py;
        if (mask[idx] == 0) // 0 = no triangle touching this cell
        {
            value = nan("");
        }
    }

    value = value == band->GetNoDataValue(NULL) ? nan("") : value;
    return value;
}




void raster::setBand(float *data, int xsize, int ysize)
{
    auto err = band->RasterIO( GF_Write, 0, 0, xsize, ysize,
                      data, xsize, ysize, GDT_Float32, 0, 0 );
    if (err != CE_None )
    {
        std::cout << "Error when updating raster band. GDAL CPLE error = "<<err<<std::endl;
        exit(1);
    }

    this->data = data;
}

