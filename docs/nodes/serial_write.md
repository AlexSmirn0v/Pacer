## Описание ноды `serial_write`

| **Node name** |`serial_write`|
| --- | ---
|**Package** |[`serial_arduino`](../packages/serial_arduino.md)|
| **Subscriber** | [\angle](../topics/angle.md)|
| **Publisher** | - |
| **Client** | - |
| **Service** | - |
| **Исполнитель** |`AlexSmirn0v`|
| **Статус** | `Запланировано`|

### Вход
В topic `\angle` приходит угол поворота робота от ноды [`decision`](./decision.md)

### Выход
Отправка по serial-порту с частотой 9600 угла поворота робота на *Arduino*

### Действие
Пересылка команды по USB-каналу