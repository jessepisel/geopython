FROM jupyter/scipy-notebook:latest

# Install jupyterlab
RUN conda install -c conda-forge jupyterlab
RUN jupyter serverextension enable --py jupyterlab --sys-prefix

USER root

RUN conda update -n base conda

# install the packages into the default (python 3.x) environment
RUN conda install \
  contextily \
  geopandas \
  cartopy \
  rasterio

USER jovyan
