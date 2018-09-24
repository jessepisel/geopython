FROM jupyter/scipy-notebook:latest

# Install jupyterlab
RUN conda install -c conda-forge jupyterlab
RUN jupyter serverextension enable --py jupyterlab --sys-prefix

# install a package into the default (python 3.x) environment
RUN conda install contextily geopandas cartopy fiona rasterio
RUN pip install GDAL>=2.0.3
USER jovyan
