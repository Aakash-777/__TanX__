FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
#RUN python -m pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# Default can be overridden when running the container
CMD ["python", "task.py"]  