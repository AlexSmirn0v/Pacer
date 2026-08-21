## Описание топика `\obstacles`

| **Topic name** |`obstacles`|
| --- | ---
|**msg format** |int16[2][] (в ROS реализуется через список кастомных obstacle.msg)|
|**Limit** |10|
| **Subscriber** | [`decision`](../nodes/decision.md) |
| **Publisher** | [`slam_node`](../nodes/slam_node.md)|
| **Статус** | `Запланировано`|

Передается информация о препятствиях. Список включает в себя значения начала и конца препятствия в градусах (оба значения включительно)