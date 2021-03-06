Функционал: Создание команды
    Чтобы игроки могли объединяться и играть в командах
    Любой зарегестрированный пользователь может создать свою команду

Сценарий: Пользователь только что зарегистрировался
    Допустим я залогинен как Iv
    Если я захожу в личный кабинет
    То должен увидеть "Вы не состоите ни в одной из команд"

Сценарий: Пользователь создаёт команду
    Допустим я залогинен как Iv
    И захожу в личный кабинет
    Если я иду по ссылке "Создать команду"
    И ввожу "Плакучие Ивы" в поле "Название"
    И нажимаю "Создать команду"
    То должен быть перенаправлен в личный кабинет
    И там должен увидеть "Вы - капитан команды Плакучие Ивы"    

Сценарий: Попытка создания второй команды с тем же названием
    Допустим зарегистрирована команда "Mushrooms" под руководством Noel
    А я залогинен как Iv
    Если я пытаюсь создать команду "Mushrooms"
    То должен увидеть "Команда с таким названием уже существует"
    Если я захожу в личный кабинет
    То должен увидеть "Вы не состоите ни в одной из команд"

Сценарий: Попытка создания команды с пустым названием
    Допустим я залогинен как Iv
    Если я пытаюсь создать команду "   "
    То должен увидеть "Название команды должно быть непустым"
    Если я захожу в личный кабинет
    То должен увидеть "Вы не состоите ни в одной из команд"

Сценарий: Гость пытается создать команду
    Допустим я не залогинен
    Если я захожу по адресу /teams/new
    То должен увидеть "Вы не авторизованы для посещения этой страницы"

Сценарий: Действующий член или капитан команды пытается создать другую команду
    Допустим зарегистрирована команда "Mushrooms" под руководством Noel
    И я логинюсь как Noel
    Если я захожу по адресу /teams/new
    То должен увидеть "Вы уже являетесь членом команды"

Сценарий: Действующий член или капитан команды не видит кнопки "Создать команду" в личном кабинете
    Допустим зарегистрирована команда "Mushrooms" под руководством Noel
    И я логинюсь как Noel
    Если я захожу в личный кабинет
    То не должен видеть "Создать команду"