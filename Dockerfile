FROM j6mes/docker-base-image

RUN mkdir /work/
RUN mkdir /work/src
RUN mkdir /work/configs
RUN mkdir /work/scripts
RUN mkdir /work/resources

WORKDIR /work/

ADD requirements.txt /work/
RUN pip install -r requirements.txt

ADD src /work/src
ADD configs /work/configs
ADD scripts /work/scripts

RUN mkdir /results
VOLUME /results

RUN python -m spacy download en
ENV PYTHONPATH /work/src
ENV ALLENNLP_CACHE_ROOT /results/data
