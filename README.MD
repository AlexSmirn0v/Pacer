# Pacer Project

A robot that allows sportsmen to maintain a constant pace during their runs

## Setup
Clone the repository
```shell
git clone https://github.com/AlexSmirn0v/Pacer
````

To setup *ROS*, you need to build and run the *Docker* image. Use the following commands:

```shell
docker build -f Dockerfile -t ros2-dev .
docker run --rm --mount type=bind,src=<abs/path/to/the/repo>,dst=<abs/path/to/the/repo> -it ros2-dev /bin/bash
```

Then, in the terminal inside the container, compile the *ROS workspace* using the following command:

```shell
colcon build
source /opt/ros/lyrical/setup.bash
```

After that, in **VS Code**, press *Ctrl + Shift + P* and select *Dev Containers: Attach to Running Container* (install the **Dev Containers** extension if necessary).

## Development

The technical specification describing the required nodes can be found in the [node_descriptions](/docs/node_descriptions) folder.

---
## Русская версия

Робот, позволяющий спортсменам поддерживать постоянный темп во время пробежек

## Запуск проекта
Склонируйте репозиторий
```shell
git clone https://github.com/AlexSmirn0v/Pacer
```
Для использования *ROS* нужно собрать и запустить *Docker*-образ. Используйте команду
```shell
docker build -f Dockerfile -t ros2-dev .
docker run --rm --mount type=bind,src=<abs/path/to/the/repo>,dst=/home/ws -it ros2-dev /bin/bash
```
Затем в терминале внутри контейнера скомпилировать *ROS workspace* с помощью команды
```shell
colcon build
source /opt/ros/lyrical/setup.bash
```
После этого в **VS Code** нажмите *Ctrl + Shift + P* и выберите *Dev Containers: Attach to Running Container* (установите расширение **Dev Containers**, если необходимо). 

## Разработка
Техническое задание с описанием нужных нод находится в папке [node_descriptions](/docs/node_descriptions)