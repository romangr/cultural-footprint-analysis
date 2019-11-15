FROM python:3

RUN pip install pymongo
RUN pip install numpy
RUN pip install scipy
RUN pip install --upgrade cython
RUN pip install -U scikit-learn
RUN pip install stop-words

ADD main.py /
ADD stopwords.json /

CMD [ "python", "./main.py" ]
