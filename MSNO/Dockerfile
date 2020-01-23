FROM alpine

WORKDIR /etc/msno
COPY Config/config.yaml /etc/msno

WORKDIR /App
COPY App/ /App

CMD /App/storage & /App/msno & /App/msc_mock & /App/adaptationLayer_mock
