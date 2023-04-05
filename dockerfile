FROM python:3
RUN apt update
RUN apt install sudo
RUN apt update
RUN sudo apt install -y virtualenv
RUN apt update
RUN python3 -m venv /opt/venv
RUN pip install -r requirements.txt