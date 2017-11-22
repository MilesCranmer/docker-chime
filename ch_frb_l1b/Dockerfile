FROM chime-ch-frb-l1

ENV PYTHONPATH=$PYTHONPATH:/usr/local/python:/usr/local/python2.7:/usr/lib/python

RUN pip install scikit-learn msgpack-python

ADD submodules/ch_frb_L1b /tmp/ch_frb_L1b

WORKDIR /tmp/ch_frb_L1b

RUN python setup.py install

WORKDIR /workspace
