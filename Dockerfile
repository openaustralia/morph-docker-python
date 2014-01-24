FROM openaustralia/morph-base
MAINTAINER Matthew Landauer <matthew@oaf.org.au>

RUN apt-get -y install apt-utils
RUN apt-get -y install python
RUN apt-get -y install wget

# Install python setuptools
RUN wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O - | python

RUN wget http://arshaw.com/scrapemark/downloads/scrapemark-0.9-py2.7.egg; easy_install scrapemark-0.9-py2.7.egg

# Install pip
RUN wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py; python get-pip.py

RUN apt-get -y install build-essential
RUN apt-get -y install python-dev
RUN pip install pillow

# Warning: cannot find svn location for rpy2==2.2.4dev-20111102
RUN pip install BeautifulSoup==3.2.0
RUN pip install Creoleparser==0.7.4

#RUN pip install Fom==0.9.3
RUN pip install Genshi==0.6
#RUN pip install GeoIP-Python==1.2.4
#RUN pip install GnuPGInterface==0.3.2
RUN pip install Jinja2==2.6

RUN apt-get -y install swig
RUN pip install M2Crypto==0.21.1
RUN pip install Markdown==2.2.0
#RUN pip install PIL==1.1.7
#RUN pip install Pattern==2.3
#RUN pip install PyYAML==3.09
RUN pip install Pygments==1.4
RUN pip install SQLAlchemy==0.6.6
#RUN pip install Scrapy==0.14.0.2841
RUN pip install Twisted==11.1.0
RUN pip install Unidecode==0.04.9
#RUN pip install adspygoogle.adwords==15.2.4
RUN pip install anyjson==0.3.3
RUN pip install argparse==1.2.1
RUN pip install beautifulsoup4==4.1.3
RUN pip install bitlyapi==0.1.1
RUN pip install blinker==1.2
RUN pip install cartodb==0.6
RUN pip install certifi==0.0.8
RUN pip install chardet==2.1.1
# Gosh compiling this caused an internal gcc compiler error
#RUN pip install chromium-compact-language-detector==0.031415
RUN pip install ckanclient==0.10
#RUN pip install colorific==0.2.0
RUN pip install colormath==1.0.8
RUN pip install csvkit==0.3.0
RUN pip install demjson==1.6
#RUN pip install dexy==0.5.1
#RUN pip install distribute==0.6.21
RUN pip install dropbox==1.4
#RUN pip install dstk==1.20
RUN pip install errorhandler==1.1.1
RUN pip install feedparser==5.0.1
RUN pip install fluidinfo.py==1.1.2
#RUN pip install freesteelpy==2012.2.22
RUN pip install gdata==2.0.15
#RUN pip install gensim==0.8.3
RUN pip install geopy==0.94.1

RUN apt-get -y install libevent-dev
RUN pip install gevent==0.13.6
RUN pip install google-api-python-client==1.0beta8
RUN pip install googlemaps==1.0.2
RUN pip install greenlet==0.3.2
#RUN pip install gviz-api.py==1.8.1
RUN pip install html5lib==0.90
RUN pip install httplib2==0.7.4
#RUN pip install icalendar==3.0.1b1
#RUN pip install idiopidae==0.5.1

RUN apt-get -y install python-protobuf libprotobuf-dev
RUN pip install imposm.parser==1.0.3
RUN pip install jellyfish==0.2.0

#RUN pip install lxml==2.3.3
# getting another gcc internal compiler error here
#RUN pip install numpy==1.6.1
#RUN pip install matplotlib==1.0.1
RUN pip install mechanize==0.2.5
RUN pip install mock==0.7.2
RUN pip install networkx==1.6
RUN pip install ngram==3.3.0
#RUN pip install nltk==2.0b9
RUN pip install nose==1.1.2
RUN pip install oauth==1.0.1
RUN pip install oauth2==1.5.170
RUN pip install oauthlib==0.1.2
RUN pip install openpyxl==1.5.7
RUN pip install ordereddict==1.1
#RUN pip install pandas==0.4.3
RUN pip install pbkdf2==1.3
RUN pip install pdfminer==20110515
RUN pip install pexpect==2.4
RUN pip install pipe2py==0.9.2
RUN pip install pyOpenSSL==0.13
#RUN pip install pyPdf==1.13
RUN pip install pycrypto==2.5

RUN apt-get -y install libcurl4-gnutls-dev
RUN pip install pycurl==7.19.0
#RUN pip install pydot==1.0.25
RUN pip install pyephem==3.7.5.1
#RUN pip install pygooglechart==0.3.0
RUN pip install pyparsing==1.5.6
#RUN pip install -e git+http://github.com/fizx/pyparsley.git@0eea1362bc38c5e0e3a1caa2358c472c8f6eb3bd#egg=pyparsley-dev
#RUN pip install pyquery==1.0
RUN pip install pyth==0.5.6
RUN pip install python-Levenshtein==0.10.2
#RUN pip install python-apt==0.7.100.3ubuntu6.1
RUN pip install python-dateutil==1.5
RUN pip install python-gflags==2.0
# TODO Install igraph https://launchpad.net/igraph
#RUN pip install python-igraph==0.5.3
RUN pip install python-modargs==1.2
RUN pip install python-stdnum==0.7
#RUN pip install pytidylib==0.2.1
RUN pip install pytz==2011k
RUN pip install rdflib==3.1.0
RUN pip install requests==1.0.4
RUN pip install requests-foauth==0.1.1
#RUN pip install rpy2==2.2.4dev-20111102
#RUN pip install scipy==0.10.0
#RUN pip install scrapely==0.9
#RUN pip install -e git+http://github.com/arshaw/scrapemark.git@9acbea3ddf7b15632a34926ebabca376a9d569b9#egg=scrapemark-RUN pip install dev
RUN pip install selenium==2.5.0
RUN pip install simplejson==2.2.1
RUN pip install suds==0.4
RUN pip install tweepy==1.7.1
RUN pip install tweetstream==1.1.1
#RUN pip install twill==0.9
#RUN pip install unattended-upgrades==0.1
RUN pip install w3lib==1.0
RUN pip install wsgiref==0.1.2
RUN pip install xlrd==0.7.1
RUN pip install xlutils==1.4.1
RUN pip install xlwt==0.7.2
RUN pip install xmltodict==0.4
RUN pip install yql==0.7.2
#RUN pip install zapps==0.5
RUN pip install zope.interface==3.8.0