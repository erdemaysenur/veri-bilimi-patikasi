/*film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?*/

SELECT AVG(rental_rate) FROM film;

        avg
--------------------
 2.9800000000000000

/*film tablosunda bulunan filmlerden kaçtanesi 'C' karekteri ile başlar?*/

SELECT COUNT(*) FROM film
WHERE title LIKE 'C%';

 count
-------
    92

/*film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?*/

SELECT MAX(length) FROM film
WHERE rental_rate = 0.99;

 max
-----
 184

/*film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?*/

SELECT COUNT(DISTINCT replacement_cost) FROM film
WHERE length > 150;

 count
-------
    21
