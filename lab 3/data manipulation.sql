SELECT * FROM Product WHERE categories = 'Книги';

SELECT * FROM Delivery WHERE delivery_method = 'В віділення нової пошти';

SELECT * FROM Users WHERE surname = 'Кузьменко';

INSERT INTO Users(user_id, name, surname, email, phone_number, address, region)
VALUES ('1005','Аліна', 'Мільковська', 'alinamilkovska@gmail.com', '+380687738495', 'просп. Миру 82', 'Хмельницький');

INSERT INTO Product(product_name, info, price, categories)
VALUES ('Набір ручок', 'Набір масляних ручок 50 штук 0,5 сине чорнило', '178', 'Шкільне приладдя');

INSERT INTO Users(name, surname, email, phone_number, address, region)
VALUES ('1006','Тарас', 'Слобожанський', 'slobozhanskitaras@gmail.com', '+380975432199', 'просп. Миру 84', 'Хмельницький');


UPDATE Users
SET address = 'вул. Шульгіних', region = 'Кропивницький'
WHERE user_id = 1002;

UPDATE Product
SET price = '800'
WHERE product_name = 'Я бачу вас цікавить пітьма';

UPDATE Product
SET product_name = 'Набір зошитів Kite 10 шт'
WHERE price = '290';

DELETE FROM Delivery WHERE order_status = 'Доставлено';

DELETE FROM Payment WHERE payment_status = 'Оплачено';

DELETE FROM Product WHERE product_name = 'Пральна машина';