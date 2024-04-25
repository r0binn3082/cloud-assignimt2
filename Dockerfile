FROM jupyter/datascience-notebook:latest

WORKDIR /home/jovyan/work
COPY . /home/jovyan/work

RUN pip install pandas scipy

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]

