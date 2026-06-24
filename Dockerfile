FROM python:3.10-slim-bookworm

RUN apt-get update && apt-get upgrade -y && apt-get install -y git
COPY requirements.txt /requirements.txt

RUN pip install -U pip && pip install -U -r requirements.txt
WORKDIR /FlixBoxsStreamBot
COPY . /FlixBoxsStreamBot

CMD ["python", "bot.py"]
