FROM openaustralia/morph-base
MAINTAINER Matthew Landauer <matthew@oaf.org.au>

RUN apt-get -y install apt-utils python wget build-essential python-dev swig libevent-dev python-protobuf libprotobuf-dev libcurl4-gnutls-dev python-setuptools libxml2-dev libxslt-dev libblas-dev liblapack-dev gfortran libfreetype6-dev libpng-dev

RUN wget http://arshaw.com/scrapemark/downloads/scrapemark-0.9-py2.7.egg; easy_install scrapemark-0.9-py2.7.egg

# Install pip
RUN wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py; python get-pip.py

# This needs to be installed first
RUN pip install numpy==1.6.1

ADD pip_requirements.txt /etc/pip_requirements.txt
RUN pip install -r /etc/pip_requirements.txt

# Not available in pip
#RUN pip install GeoIP-Python==1.2.4
#RUN pip install GnuPGInterface==0.3.2
#RUN pip install PIL==1.1.7
#RUN pip install Pattern==2.3
#RUN pip install colorific==0.2.0
#RUN pip install dexy==0.5.1
#RUN pip install dstk==1.20
#RUN pip install freesteelpy==2012.2.22
#RUN pip install gviz-api.py==1.8.1
#RUN pip install idiopidae==0.5.1
#RUN pip install pyPdf==1.13
#RUN pip install pygooglechart==0.3.0
#RUN pip install python-apt==0.7.100.3ubuntu6.1
#RUN pip install pytidylib==0.2.1
#RUN pip install -e git+http://github.com/arshaw/scrapemark.git@9acbea3ddf7b15632a34926ebabca376a9d569b9#egg=scrapemark-RUN pip install dev
#RUN pip install twill==0.9
#RUN pip install unattended-upgrades==0.1
#RUN pip install zapps==0.5

# poppler-utils has a more recent pdftohtml than the pdftohtml package
RUN apt-get -y install poppler-utils
# Special handling to install scraperwiki library
RUN git clone https://github.com/openaustralia/scraperwiki-python.git /tmp/scraperwiki
RUN cd /tmp/scraperwiki; git checkout morph_defaults
RUN cd /tmp/scraperwiki; python ./setup.py install
RUN rm -rf /tmp/scraperwiki


