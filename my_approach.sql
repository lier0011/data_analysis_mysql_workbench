# 1st: check how many product types we have in our warehouses
# there are 110 types of product in stock
SELECT DISTINCT(productCode) count_product_types FROM products;

# 2nd: check how many product types are never ordered
# there is only one product S18_3233
SELECT productCode, productName, quantityInStock, warehouseCode 
FROM products WHERE productCode NOT IN 
(SELECT DISTINCT(productCode) FROM orderdetails);

# 3rd: check the quantity of each product in which warehouse
# for most product items, we have thounsand pieces of them in stock
SELECT warehouseCode, productCode, quantityInStock FROM products
GROUP BY warehouseCode, productCode, quantityInStock
ORDER BY quantityInStock DESC;

# 4th: overview of ordered products each year
# we can see that the max amount of sold product per year is only about 800
SELECT od.productCode, LEFT(o.orderDate, 4) _date, SUM(od.quantityOrdered) _sum
FROM orderdetails od, orders o 
WHERE o.orderNumber = od.orderNumber
GROUP BY od.productCode, _date
ORDER BY _sum DESC;

# 5th: check the warehouse capacity vs current items in stock
SELECT p.warehouseCode, SUM(p.quantityInStock) actual_sum, w.warehousePctCap
FROM products p, warehouses w 
WHERE p.warehouseCode = w.warehouseCode
GROUP BY p.warehouseCode;

# 6th: determine the possible overcapacity of each of product type in our warehouses
# you can specify the warehouseCode in WHERE clause for each warehouse a, b, c and d.
SELECT warehouseCode, productCode, (quantityInStock) actual_sum
FROM products
WHERE 1
# WHERE warehouseCode = "a"
# WHERE warehouseCode = "b"
# WHERE warehouseCode = "c"
# WHERE warehouseCode = "d"
GROUP BY warehouseCode, productCode
HAVING actual_sum > 2000;
