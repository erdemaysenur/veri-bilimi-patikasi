/*film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?*/

SELECT COUNT(*) FROM film
WHERE length > ALL
(
  SELECT AVG(length) FROM film
)

--489

/*film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?*/

SELECT COUNT(*) FROM film
WHERE rental_rate = ANY
(
  SELECT MAX(rental_rate) FROM film
)

--336

/*film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.*/

SELECT * FROM film
WHERE rental_rate = ALL
(
  SELECT MIN(rental_rate) FROM film
) AND
replacement_cost = ALL
(
SELECT MIN(replacement_cost) FROM film)

/*payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.*/

SELECT DISTINCT(customer_id) FROM payment
WHERE customer_id = ANY
(
	SELECT COUNT(*) FROM payment
	GROUP BY customer_id
);

