FROM postgres:15.2
RUN virtualenv venv
RUN source venv/bin/activate
RUN pip install -r requirements.txt