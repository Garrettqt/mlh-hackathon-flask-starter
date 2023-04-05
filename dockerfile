FROM python:3
RUN apt update
RUN apt install sudo
RUN apt update
RUN sudo apt install -y virtualenv
RUN apt update
RUN python3 -m venv /opt/venv
COPY requirements.txt .
RUN . /opt/venv/bin/activate && pip install -r requirements.txt
COPY myApp.py .
ENTRYPOINT [ "python" ]
CMD ["myApp.py"]