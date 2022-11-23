FROM public.ecr.aws/lambda/python:3.9

COPY src/* ./src/
COPY requirements.txt ./
#RUN chmod 755 src/app.py
RUN python3 -m pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["python3", "src/main.py"]
