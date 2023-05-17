FROM python:3.11

ENV PYTHONNUNBUFFERED=1

WORKDIR /Users/davidhan/Desktop/todo-list-django

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

WORKDIR /Users/davidhan/Desktop/todo-list-django/mysite

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]