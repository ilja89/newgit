FROM ubuntu
RUN apt-get update -y && \
    apt-get install -y python3-pip python3-flask python3 gunicorn
WORKDIR /app
COPY main.py /app/main.py
CMD ["gunicorn", "--workers", "10", "--bind", "[::]:5000", "main:app", "--timeout", "90"]
#EXPOSE 5000/tcp
