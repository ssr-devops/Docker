#Base image
FROM ://registry.access.redhat.com

#set the working directory
WORKDIR /app

#copy requirements file
COPY requirement.txt .

#update the package repo and install nessery dependences
RUN pip insall --no-cache-dir -r requirements.txt

#copy project files
COPY . .

#expose app
EXPOSE 5000

#Run app
CMD ["python", "app.py"]