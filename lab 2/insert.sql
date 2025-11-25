INSERT INTO Users(user_id, name, surname, email, phone_number, address, region) VALUES
('1001', 'Марина', 'Павленко', 'pavlenkomarina@gmail.com', '+380686439201', 'вул. Петра Дорошенка', 'Львів'),
('1002', 'Тимофій', 'Кузьменко', 'timofiikuzmenko@gmail.com', '+380974437301', 'вул. Степова', 'Одеса'),
('1003', 'Матильда', 'Петренко', 'matildapetrenko@gmail.com', '+380681134387', 'вул. Срібнокільська 12', 'Київ');

INSERT INTO Category(category_name) VALUES
('Побутова техніка'),
('Шкільне приладдя'),
('Книги');

INSERT INTO Product(product_name, info, price, categories) VALUES
('Пральна машина', 'Пральна машина Midea', '8999', 'Побутова техніка'),
('Набір зошитів Kite', 'Набір зошитів Kite 48+24 аркушів 10 шт', '290', 'Шкільне приладдя'),
('Я бачу вас цікавить пітьма', 'Я бачу вас цікавить пітьма; Автор - Ілларіон', '600', 'Книги');

INSERT INTO Delivery(delivery_method, delivery_address, order_status) VALUES
('Кур`єр', 'вул. Срібнокільська 12', 'В дорозі'),
('В віділення нової пошти', 'вул. Шевченка 321', 'Доставлено'),
('В віділення укр пошти', 'вул. Преображенська 83', 'Скасовано');

INSERT INTO Payment(transaction_date, payment_method, payment_status) VALUES
('--.--.----', 'Готівка', 'Чекає на оплату'),
('20.10.2025', 'Картка', 'Оплачено'),
('20.11.2025', 'Картка', 'Повернення коштів');