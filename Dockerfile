FROM amazonlinux
EXPOSE 8888
COPY ./bootstrap.sh /
RUN chmod +x /bootstrap.sh
RUN /bootstrap.sh
ENV SPARK_HOME="/tools/spark-2.4.5-bin-hadoop2.7"
ENV MINI_CONDA_HOME="/root/miniconda3"
ENV PATH="$MINI_CONDA_HOME/bin:$SPARK_HOME/bin:$PATH"
ENV PYSPARK_DRIVER_PYTHON=jupyter
ENV PYSPARK_DRIVER_PYTHON_OPTS='notebook --ip=0.0.0.0 --allow-root'
ENTRYPOINT ["pyspark"]