## Описание топика `\path`

| **Topic name** |`path`|
| --- | ---
|**msg format** |[`geographic_msgs/msg/GeoPoint[]`](https://docs.ros.org/en/ros2_packages/jazzy/api/geographic_msgs/msg/GeoPoint.html) (собственный формат *msg* в виде списка целевых точек маршрута)|
|**Limit** |10|
| **Subscriber** | [`compass`](../nodes/compass.md) |
| **Publisher** | [`web_connect`](../nodes/web_connect.md)|
| **Статус** | `Запланировано`|

Маршрут на сервере разбивается на список точек, которые можно соединить прямыми и передается на робота