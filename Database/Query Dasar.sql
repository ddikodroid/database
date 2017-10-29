/* BENTUK DASAR */
SELECT [nama_kolom]
FROM [tables]

/* Tampilkan officeCode dan City di tabel offices */
SELECT officeCode,city
FROM offices;

/* Untuk semua kolom menggunakan (*) */
SELECT *
FROM offices;

SELECT productCode,productName,productLine
FROM products;

/* DISTINCT */
/* Tampilkan daftar kota unique asal customer */
SELECT DISTINCT city FROM customers;

/* WHERE */
/* customer yang berasal dari NYC */
SELECT customerName,city
FROM customers
WHERE city="NYC";

/* Tampilkan firstName lastName 
employees yang jobtitle nya Sales Rep */
SELECT firstName,lastName
FROM employees
WHERE jobTitle = "Sales Rep";

/* Tampilkan daftar jobTitle (unique) 
yang ada di employees */
SELECT DISTINCT jobTitle
FROM employees;

/* = <> > < <= >= */
/* Tampilkan productName dan buyPrice dari products
yang memiliki buyPrice kurang dari 30 */
SELECT productName,buyPrice
FROM products
WHERE buyPrice < 30;

/* BETWEEN */
/* antara 30 dan 50 */

SELECT productName,buyPrice
FROM products
WHERE buyPrice BETWEEN 30 AND 50;

/* tidak diantara 30 dan 50 */
SELECT productName,buyPrice
FROM products
WHERE buyPrice NOT BETWEEN 30 AND 50;

/* Tampilkan order yang dibuat antara
tanggal 1 Januari 2004 s/d 1 Juni 2004 */
SELECT orderNumber,orderDate
FROM orders
WHERE orderDate BETWEEN '2004-01-01' AND '2004-06-01';

/* LIKE */
/* Tampilkan semua employee yang berawalan huruf L */
SELECT firstName,lastName
FROM employees
WHERE firstName LIKE "L%";

/* Tampilkan semua employee yang berakhiran dengan "on" */
SELECT firstName,lastName
FROM employees
WHERE lastName LIKE "%on";

/* Tampilkan semua employee yang mengandung "on" */
SELECT firstName,lastName
FROM employees
WHERE lastName LIKE "%on%";

SELECT firstName,lastName
FROM employees
WHERE lastName NOT LIKE "%on%";

/* Tampilkan semua employee yang firstName nya berawalan 
dengan huruf T , berakhiran m, dan 3 kata */
SELECT firstName,lastName
FROM employees
WHERE firstName LIKE "T_m"

/* Tampilkan nama product yang berawalan dengan
huruf A B atau C */
SELECT productname
FROM products
WHERE productname REGEXP '^(A|B|C)';

/* IN */
/* Tampilkan offices yang berada di country
USA atau France */

SELECT officeCode,city,country,phone
FROM offices
WHERE country IN ('USA','France');

SELECT officeCode,city,country,phone
FROM offices
WHERE country NOT IN ('USA','France');

/* Employee yang berakhiran "on" 
dan dia adalah Sales Rep */

SELECT firstName,lastName,jobTitle
FROM employees
WHERE lastName LIKE "%on" AND jobTitle="Sales Rep";

/* Employee yang berakhiran "on" 
atau dia adalah Sales Rep */

SELECT firstName,lastName,jobTitle
FROM employees
WHERE lastName LIKE "%on" OR jobTitle="Sales Rep";

/* Cari product yang berawalan dengan "196" harga beli
kurang dari 50 dan stok > 1000 */

SELECT productName,buyPrice,quantityInStock
FROM products
WHERE buyPrice<50 
	AND quantityInStock>1000 
	AND productName LIKE "196%";
	
/* Cari product yang berawalan dengan "196" dan
harga beli kurang dari 50 atau stok > 1000 */

SELECT productName,buyPrice,quantityInStock
FROM products
WHERE (buyPrice<50 
	OR quantityInStock>1000) 
	AND productName LIKE "196%";

/* mengurutkan hasil 
hasil dari query di atas akan saya urutkan
dari buyPrice terendah sampai tertinggi
*/

SELECT productName,buyPrice,quantityInStock
FROM products
WHERE (buyPrice<50 
	OR quantityInStock>1000) 
	AND productName LIKE "196%"
ORDER BY buyPrice;

/* dari buyPrice tertinggi sampai terendah */

SELECT productName,buyPrice,quantityInStock
FROM products
WHERE (buyPrice<50 
	OR quantityInStock>1000) 
	AND productName LIKE "196%"
ORDER BY buyPrice DESC;

/* Multiple Order */
SELECT productName,productLine,buyPrice
FROM products
ORDER BY productLine DESC,buyPrice ASC;

/* LIMIT */
SELECT productName 
FROM products 
LIMIT 0,10;


/* Tampilkan 5 produk termahal (MSRP) dari products */
SELECT productName,MSRP
FROM products
ORDER BY MSRP DESC
LIMIT 5;

/* Tampilkan 5 produk 
dengan keuntungan tertinggi */

SELECT productName AS nama,MSRP-buyPrice AS keuntungan
FROM products
ORDER BY MSRP-buyPrice DESC
LIMIT 5;































