## Описание ноды `decision`

| **Node name** |`decision`|
| --- | ---
|**Package** |[`trajectory`](../packages/trajectory.md)|
| **Subscriber** | [`\azimuth`](../topics/azimuth.md), [`\obstacles`](../topics/obstacles.md) |
| **Publisher** | [`\angle`](../topics/angle.md)|
| **Client** | - |
| **Service** | - |
| **Исполнитель** |`TBD`|
| **Статус** | `Запланировано`|

### Вход
Желаемое значение поворота из топика `\azimuth` и препятствия вокруг от `\obstacles`

### Выход
Публикация итогового значения поворота в градусах в топик `\angle`

### Действие
Необходимо либо отправлять значение из `\azimuth`, либо если на пути есть преграда, выбирать кратчайший путь объезда и отправлять направление на него