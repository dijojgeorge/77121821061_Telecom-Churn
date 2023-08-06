FROM python
WORKDIR /AppPython
ENV DRIVE_PATH="/mnt/gdrive"
COPY requirements.txt ./
EXPOSE 8000
# Install the dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN /mnt/gdrive
COPY . /My Drive/Colab Notebooks/Telecom_Chrun
ENTRYPOINT ["python3"]
#CMD ["G:\My Drive\Colab Notebooks\Telecom_Chrun\app.py"]
