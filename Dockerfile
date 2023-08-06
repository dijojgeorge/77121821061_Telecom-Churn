FROM python
WORKDIR /AppPython
ENV DRIVE_PATH="/mnt/gdrive"
COPY requirements.txt ./
EXPOSE 8000
# Install the dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN /mnt/gdrive
COPY . /G:/My Drive/Colab Notebooks/Telecom_Chrun/
ENTRYPOINT ["python3"]
CMD ["https://drive.google.com/open?id=11BXbqIpzXEbNeN-UfTGAUEgSBbpKndo5&usp=drive_fs"]
