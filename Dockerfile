FROM python:2.7

COPY Cheetah-2.0.1.tar.gz .
RUN tar xvzf Cheetah-2.0.1.tar.gz
RUN cd Cheetah-2.0.1 && python setup.py install

COPY stats /stats/
RUN mkdir /out
COPY templates /templates/
COPY *.py /

VOLUME /out

RUN ls -al

#python main.py --server=imap.gmail.com --use_ssl --username=me@mydomain.com --me=me@mydomain.com,me2@myotherdomain.com --skip_labels
