FROM jupyter/minimal-notebook

RUN pip install tensorflow keras

RUN jupyter notebook --generate-config
COPY config.json .jupyter/jupyter_notebook_config.json

RUN git clone https://github.com/Cheukting/Style-mimicking-text-generator
