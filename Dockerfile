FROM jupyter/scipy-notebook:latest

# Install jupyterlab
RUN conda install -c conda-forge jupyterlab
RUN jupyter serverextension enable --py jupyterlab --sys-prefix

# install a package into the default (python 3.x) environment
RUN conda install geopandas Cython matplotlib numpy scipy sklearn pandas Pillow descartes Fiona osmnx pykml pyshp rasterio shapely pysal geojsonio scrapy geopy contextily

USER jovyan

# Add in our custom theming
ADD custom/ $HOME/.jupyter/custom/
ADD custom/logo.png /opt/conda/lib/python3.5/site-packages/notebook/static/base/images/logo.png
