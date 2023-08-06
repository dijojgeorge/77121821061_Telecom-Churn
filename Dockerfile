From python
WORKDIR /AppPython
COPY requirements.txt ./
EXPOSE 8000
# Install the dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . /G:/My Drive/Colab Notebooks/Telecom_Chrun
ENTRYPOINT ["python"]
CMD ["app.py"]
