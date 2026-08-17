## Описание ноды `shutdown_srv`

| **Node name** |`shutdown_srv`|
| --- | ---
|**Package** |[`system_utils`](../packages/system_utils.md)|
| **Subscriber** | - |
| **Publisher** | -|
| **Client** | -|
| **Service** | [`\shutdown`](../topics/shutdown.md) |
| **Исполнитель** |`TBD`|
| **Статус** | `Запланировано`|

### Вход
Сообщение от сервиса `\shutdown`

### Выход
Выключение *Raspberry Pi* и робота в целом

### Действие
Защита от уезжания робота куда-то далеко - возможность выключить его по кнопке, связанной с *Arduino*. Если кнопка нажата, плата перед выключением посылает *shutdown* на *Raspberry Pi* и благодаря этой ноде, она должна выключиться