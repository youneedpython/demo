FROM openjdk:17-jdk-slim

## HOME DIR =========================
## 이동할 경로
## 경로가 없을 경우, 생성 후 이동
## 이후 명령어 WORKDIR에서 실행
WORKDIR /good

## Copy files
## [문법] COPY 현재파일위치 복사할위치 
COPY build/libs/demo-0.0.1-SNAPSHOT.jar ./demo.jar

COPY hello.sh ./hello.sh

## RUN 리눅스 명령어
## hello.sh 파일에 실행 권한 추가
RUN chmod +x ./hello.sh

ENTRYPOINT [ "sh", "./hello.sh" ]
