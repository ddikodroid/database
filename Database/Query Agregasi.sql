QUERY AGREGASI
SUM, AVG, MIN, MAX, COUNT

-- Rata-Rata Harga Beli Produk
SELECT AVG(buyPrice) AS RATA_PRODUK FROM products;

-- Berapa Total Stok untuk Seluruh Produk
SELECT SUM(quantityInStock) AS TOTAL_STOK FROM products;

-- Berapa Jumlah Produk yang ada di tabel products?
SELECT COUNT(1) FROM products;

-- Berapa Harga Terkecil produk, berapa harga terbesar produk
SELECT MIN(buyPrice) FROM products;
SELECT MAX(buyPrice) FROM products;

-- Tampilkan Haga Rata-Rata setiap kategori product (productLine)
SELECT productLine,AVG(buyPrice) AS RATA
FROM products 
GROUP BY productLine;

-- Tampilkan Haga Rata-Rata setiap kategori product (productLine)
-- Urutkan dari yang terendah sampai tertinggi
SELECT productLine,AVG(buyPrice) AS RATA
FROM products 
GROUP BY productLine
ORDER BY RATA;

-- Tampilkan Haga Rata-Rata setiap kategori product (productLine)
-- Yang Rata-ratanya diatas 50
-- Urutkan dari yang terendah sampai tertinggi
SELECT productLine,AVG(buyPrice) AS RATA
FROM products 
GROUP BY productLine
HAVING RATA>50
ORDER BY RATA;

-- Tampilkan buyPrice Rata-Rata setiap kategori product (productLine)
-- Yang  buyPrice nya lebih dari 40 & Rata-ratanya diatas 50
-- Urutkan dari yang terendah sampai tertinggi
SELECT productLine,AVG(buyPrice) AS RATA
FROM products 
WHERE buyPrice>50
GROUP BY productLine
HAVING RATA>50
ORDER BY RATA;

-- Tampilkan rata-rata keuntungan setiap productLine
SELECT productLine,AVG(MSRP-buyPrice) AS RATA_UNTUNG
FROM products
GROUP BY productLine;

-- Tampilkan jumlah karyawan setiap officeCode
SELECT officeCode,COUNT(1) AS JUMLAH
FROM employees
GROUP BY officeCode;


-- Tampilkan city dan employeeName dari tabel offices dan employees
SELECT city,CONCAT(firstName," ",lastName) AS fullName
FROM employees 
     JOIN offices ON employees.officeCode = offices.officeCode;

-- Tampilkan jumlah karyawan setiap city
SELECT city,COUNT(1) AS JUMLAH
FROM employees 
     JOIN offices ON employees.officeCode = offices.officeCode
GROUP BY city;

-- Tampilkan jumlah penjualan (quantityOrdered) setiap productName
SELECT productName,SUM(quantityOrdered) AS JUMLAH_PENJUALAN 
FROM products p JOIN orderdetails o ON p.productCode = o.productCode
GROUP BY productName;

-- Tampilkan TOP 5 (Terbesar) jumlah penjualan (quantityOrdered) 
-- setiap productName
SELECT productName,SUM(quantityOrdered) AS JUMLAH_PENJUALAN 
FROM products p JOIN orderdetails o ON p.productCode = o.productCode
GROUP BY productName
ORDER BY JUMLAH_PENJUALAN DESC
LIMIT 5;




















