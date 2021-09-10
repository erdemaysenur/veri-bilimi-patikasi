/*film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.*/

SELECT title FROM film
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5;

       title
--------------------
 Soldiers Evolution
 Sorority Queen
 King Evolution
 Frontier Cabin
 Wife Turn
(5 sat²r)

/*film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci 5 filmi sıralayınız.*/

SELECT title FROM film
WHERE title LIKE '%n'
ORDER BY length ASC
OFFSET 5
LIMIT 5;

      title
------------------
 Jekyll Frogmen
 Daughter Madigan
 Room Roman
 Camelot Vacation
 Birds Perdition
(5 sat²r)

/*customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.*/

SELECT * FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;

 customer_id | store_id | first_name | last_name |               email               | address_id | activebool | create_date |       last_update       | active 
 -------------+----------+------------+-----------+-----------------------------------+------------+------------+-------------+-------------------------+--------
          28 |        1 | Cynthia    | Young     | cynthia.young@sakilacustomer.org  |         32 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1
         402 |        1 | Luis       | Yanez     | luis.yanez@sakilacustomer.org     |        407 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1
         318 |        1 | Brian      | Wyman     | brian.wyman@sakilacustomer.org    |        323 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1
         107 |        1 | Florence   | Woods     | florence.woods@sakilacustomer.org |        111 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1
(4 sat²r)
