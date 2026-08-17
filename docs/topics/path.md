## Описание топика `\path`
(Важно, что сервис, а не топик!)

| **Topic name** |`path`|
| --- | ---
|**msg format** |[`geographic_msgs/msg/GeoPoint[]`](https://docs.ros.org/en/ros2_packages/jazzy/api/geographic_msgs/msg/GeoPoint.html) (собственный формат *srv*: текущая локация на вход, на выход - список из целевых точек маршрута)|
|**Limit** |10|
| **Client** | [`compass`](../nodes/compass.md) |
| **Server** | [`web_connect`](../nodes/web_connect.md)|
| **Статус** | `Запланировано`|

Маршрут на сервере разбивается на список точек, которые можно соединить прямыми и передается на робота