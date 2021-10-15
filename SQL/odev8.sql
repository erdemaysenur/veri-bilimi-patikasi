/*test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.*/

CREATE TABLE employee (id INTEGER, name VARCHAR(50), birthday DATE, email VARCHAR(100));

/*Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.*/

insert into employee (id, name, birthday, email) values (1, 'Pate Comfort', '1983-03-26', 'pcomfort0@dyndns.org');
insert into employee (id, name, birthday, email) values (2, 'Dannie Upex', '1985-01-19', 'dupex1@phpbb.com');
...

/*Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.*/

--- id = 1 olan verinin idsini 0 yap.
UPDATE employee
SET id = 0
WHERE id = 1
RETURNING *

---Donni adını Donna yap.
UPDATE employee
SET name = 'Donna Pandya'
WHERE name = 'Donni Pandya'
RETURNING *

/*Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.*/

---1996'dan sonra doğanları sil.
DELETE FROM employee
WHERE birthday < '1997-01-01'
RETURNING *
