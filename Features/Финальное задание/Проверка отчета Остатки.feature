﻿#language: ru

@tree

Функционал: Проверка отчета для вывода остатков товаров

Как Тестировщик я хочу
проверить отчет Остатки
чтобы проверить возможность вывода остатков товаров   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка отчета Остатки Основной
	И я закрываю все окна клиентского приложения
	Дано Я открываю навигационную ссылку "e1cib/app/Отчет.ОстаткиТоваровНаСкладах"
	И я нажимаю на кнопку с именем 'ФормаЗагрузитьВариант'
	Когда открылось окно 'Выбор варианта отчета'
	И в таблице "СписокНастроек" я перехожу к строке:
		| 'Представление' |
		| 'Основной'      |		
	И я нажимаю на кнопку с именем 'Загрузить'
	И я нажимаю кнопку выбора у поля с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Значение"
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000020' | 'Валенки'      |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение" я выбираю точное значение 'Малый'
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И табличный документ "Результат" равен:
		| 'Отбор:'  | 'Товар Равно "Валенки" И\nСклад Равно "Малый"' | ''                   |
		| ''        | ''                                             | ''                   |
		| 'Товар'   | 'Малый'                                        | 'Итого'              |
		| ''        | 'Количество Остаток'                           | 'Количество Остаток' |
		| 'Валенки' | '21,00'                                        | '21,00'              |
		| 'Итого'   | '21,00'                                        | '21,00'              |
	И я закрываю все окна клиентского приложения