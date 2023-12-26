# README

## GROUP 11

- Member 1: Trần Việt Dũng - 21070726
- Member 2: Nguyễn Phương Uyên - 21070734
- Member 3: Nguyễn Thị Bích Ngọc - 21070260
- Member 4: Trịnh Tuấn Vũ-21070210

## Starting server

- Run on your terminal `docker-compose up`
- Open browser at http://localhost:3000/
- Continue your work on a new terminal tab. Leave this terminal tab open until you want to stop the server.

## Stop server

`CTRL + C`

### Accessing docker container
**Remember to run this before any of the command below**

`docker exec -it ins20065-proj_app_1 /bin/bash`

### Bundle install
Installing required libraries, you can run this command multiple time. If there is an error, let make sure this command has been executed successfully.

`bundle install`

### Migrate database

`rails db:migrate`

## Optional

### Rails console

`rails c`
