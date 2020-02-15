yum update -y && \
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
sh ./Miniconda3-latest-Linux-x86_64.sh -b && \
/root/miniconda3/bin/conda install -y -c conda-forge notebook && \
/root/miniconda3/bin/pip install pandas && \
yum install -y java-1.8.0-openjdk && \
yum install -y procps && \
yum install -y tar && \
yum install -y nano && \
mkdir /tools && \
cd /tools && \
curl -O http://mirrors.ocf.berkeley.edu/apache/spark/spark-2.4.5/spark-2.4.5-bin-hadoop2.7.tgz && \
tar -xvzf spark-2.4.5-bin-hadoop2.7.tgz