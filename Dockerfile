FROM python:2.7.15

COPY ./variant_generation_requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
CMD ["/bin/bash", "-c", "cd ./src && scons -u"]