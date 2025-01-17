FROM python:3.8-slim-buster
WORKDIR /AI_Yoga_Assistant
RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y 
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]