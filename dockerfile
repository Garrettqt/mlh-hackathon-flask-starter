FROM postgres:15.2
RUN echo virtualenv venv
RUN echo source venv/bin/activate
RUN echo pip install -r requirements.txt