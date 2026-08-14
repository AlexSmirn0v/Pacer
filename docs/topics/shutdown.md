## Описание сервиса `\shutdown`
(Важно, что сервис, а не топик!)

| **Service name** |`shutdown`|
| --- | ---
|**srv format** |[`std_srvs/srv/Trigger`](https://docs.ros.org/en/ros2_packages/jazzy/api/std_srvs/srv/Trigger.html)|
|**Limit** |10|
| **Client** | [`serial_read`](../nodes/serial_read.md) |
| **Server** | [`shutdown_srv`](../nodes/shutdown_srv.md)|
| **Статус** | `Запланировано`|

Сигнал выключения, который подается с кнопки, подключенной к *Arduino*