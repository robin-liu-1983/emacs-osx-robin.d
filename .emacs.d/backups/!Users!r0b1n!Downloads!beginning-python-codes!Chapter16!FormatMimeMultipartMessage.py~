#!/usr/bin/python
from email.mime.multipart import MIMEMultipart
import os
import sys
filename='C:\Python30\photos.jpg'
msg = MIMEMultipart()
msg['From'] = 'Me <me@example.com>'
msg['To'] = 'You <you@example.com>'
msg['Subject'] = 'Your picture'
from email.mime.text import MIMEText
text = MIMEText("Here's that picture I took of you.")
msg.attach(text)
from email.mime.image import MIMEImage
image = MIMEImage(open(filename, 'rb').read(), name=os.path.split(filename)[1])
msg.attach(image)
