# 베이스 이미지로 공식 Nginx 이미지를 사용합니다.
FROM nginx:alpine

# 로컬의 index.html 파일을 컨테이너의 Nginx 웹 루트 디렉토리로 복사합니다.
# 이렇게 하면 Nginx 이미지에 포함된 기본 index.html 파일을 덮어쓰게 됩니다.
COPY ./index.html /usr/share/nginx/html/index.html

# Nginx는 기본적으로 80번 포트를 사용합니다.
EXPOSE 80