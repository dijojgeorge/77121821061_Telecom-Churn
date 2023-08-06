FROM python
WORKDIR /mnt/gdrive
ENV DRIVE_PATH="/mnt/gdrive"
COPY requirements.txt ./
EXPOSE 8000
# Install the dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
#RUN /mnt/gdrive
COPY . https://drive.google.com/open?id=10LrCSxYhRjpM9Ur-oFjJjZ142g6-VyRA&usp=drive_fs
ENTRYPOINT ["python3"]
CMD [https://drive.google.com/open?id=110znBSHTggG5Lv_2h0ggsvOfBZxxcSiT&usp=drive_fs]
