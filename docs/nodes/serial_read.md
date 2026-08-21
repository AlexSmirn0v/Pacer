## Описание ноды `serial_read`

| **Node name** |`serial_read`|
| --- | ---
|**Package** |[`serial_arduino`](../packages/serial_arduino.md)|
| **Subscriber** | - |
| **Publisher** | [`\coordinates`](../topics/coordinates.md)|
| **Client** | [`\shutdown`](../topics/shutdown.md)|
| **Service** | - |
| **Исполнитель** |`AlexSmirn0v`|
| **Статус** | `Запланировано`|

### Вход
Чтение строк из связанного с *Arduino* USB-канала (serial-порт, 9600)

### Выход
Публикация GPS-координат робота в topic `\coordinates` ИЛИ отправка запроса на выключение робота в сервис `\shutdown`

### Действие
В зависимости от того, какая строка приходит по каналу либо строка GPS-координат с модуля, привязанного к Arduino, парсится в два double-числа и отправляется в сообщении `\coordinates`. Координаты приходят в формате `<десятичная широта> <десятичная долгота>`. Если приходит строка `shutdown`, то нужно отправить запрос на выключение