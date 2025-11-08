# LET’S PRACTICE SQL
I'll be working on some exercises to sharpen my knowledge in MySQL soon 🙂

---

## 🥗 Recyclable and Low Fat Products

### Table: `Products`
<table>
<tr><th>Column Name</th><th>Type</th></tr>
<tr><td>product_id</td><td>int</td></tr>
<tr><td>low_fats</td><td>enum</td></tr>
<tr><td>recyclable</td><td>enum</td></tr>
</table>

`product_id` is the primary key (column with unique values) for this table.  
`low_fats` is an ENUM (category) of type ('Y', 'N') where 'Y' means this product is low fat and 'N' means it is not.  
`recyclable` is an ENUM (category) of type ('Y', 'N') where 'Y' means this product is recyclable and 'N' means it is not.

---

Write a solution to find the IDs of products that are both low fat and recyclable.  
Return the result table in any order.

### Example 1:

**Input:**  
Products table:
<table>
<tr><th>product_id</th><th>low_fats</th><th>recyclable</th></tr>
<tr><td>0</td><td>Y</td><td>N</td></tr>
<tr><td>1</td><td>Y</td><td>Y</td></tr>
<tr><td>2</td><td>N</td><td>Y</td></tr>
<tr><td>3</td><td>Y</td><td>Y</td></tr>
<tr><td>4</td><td>N</td><td>N</td></tr>
</table>

**Output:**  
<table>
<tr><th>product_id</th></tr>
<tr><td>1</td></tr>
<tr><td>3</td></tr>
</table>

**Explanation:**  
Only products 1 and 3 are both low fat and recyclable.

---

## 👥 Find Customer Referee

### Table: `Customer`
<table>
<tr><th>Column Name</th><th>Type</th></tr>
<tr><td>id</td><td>int</td></tr>
<tr><td>name</td><td>varchar</td></tr>
<tr><td>referee_id</td><td>int</td></tr>
</table>

`id` is the primary key column for this table.  
Each row of this table indicates the ID of a customer, their name, and the ID of the customer who referred them.

---

Find the names of customers that are either:
- referred by any customer with `id != 2`, or  
- not referred by any customer.

Return the result table in any order.

### Example 1:

**Input:**  
Customer table:
<table>
<tr><th>id</th><th>name</th><th>referee_id</th></tr>
<tr><td>1</td><td>Will</td><td>null</td></tr>
<tr><td>2</td><td>Jane</td><td>null</td></tr>
<tr><td>3</td><td>Alex</td><td>2</td></tr>
<tr><td>4</td><td>Bill</td><td>null</td></tr>
<tr><td>5</td><td>Zack</td><td>1</td></tr>
<tr><td>6</td><td>Mark</td><td>2</td></tr>
</table>

**Output:**  
<table>
<tr><th>name</th></tr>
<tr><td>Will</td></tr>
<tr><td>Jane</td></tr>
<tr><td>Bill</td></tr>
<tr><td>Zack</td></tr>
</table>

---

## 🌍 Big Countries

### Table: `World`
<table>
<tr><th>Column Name</th><th>Type</th></tr>
<tr><td>name</td><td>varchar</td></tr>
<tr><td>continent</td><td>varchar</td></tr>
<tr><td>area</td><td>int</td></tr>
<tr><td>population</td><td>int</td></tr>
<tr><td>gdp</td><td>bigint</td></tr>
</table>

`name` is the primary key (column with unique values) for this table.  
Each row gives information about a country's name, continent, area, population, and GDP value.

---

A country is **big** if:
- it has an area of at least three million (i.e., 3,000,000 km²), or  
- it has a population of at least twenty-five million (i.e., 25,000,000).

Write a solution to find the **name**, **population**, and **area** of the big countries.  
Return the result table in any order.

### Example 1:

**Input:**  
World table:
<table>
<tr><th>name</th><th>continent</th><th>area</th><th>population</th><th>gdp</th></tr>
<tr><td>Afghanistan</td><td>Asia</td><td>652230</td><td>25500100</td><td>20343000000</td></tr>
<tr><td>Albania</td><td>Europe</td><td>28748</td><td>2831741</td><td>12960000000</td></tr>
<tr><td>Algeria</td><td>Africa</td><td>2381741</td><td>37100000</td><td>188681000000</td></tr>
<tr><td>Andorra</td><td>Europe</td><td>468</td><td>78115</td><td>3712000000</td></tr>
<tr><td>Angola</td><td>Africa</td><td>1246700</td><td>20609294</td><td>100990000000</td></tr>
</table>

**Output:**  
<table>
<tr><th>name</th><th>population</th><th>area</th></tr>
<tr><td>Afghanistan</td><td>25500100</td><td>652230</td></tr>
<tr><td>Algeria</td><td>37100000</td><td>2381741</td></tr>
</table>

## 🧾 Article Views – Authors Who Viewed Their Own Articles

### Table: `Views`
<table>
<tr><th>Column Name</th><th>Type</th></tr>
<tr><td>article_id</td><td>int</td></tr>
<tr><td>author_id</td><td>int</td></tr>
<tr><td>viewer_id</td><td>int</td></tr>
<tr><td>view_date</td><td>date</td></tr>
</table>

There is **no primary key** (column with unique values) for this table — it may contain duplicate rows.  
Each row indicates that a certain viewer viewed an article (written by a specific author) on a specific date.  

Note: if `author_id` and `viewer_id` are equal, it means the **author viewed their own article**.

---

### 🧠 Task

Write a solution to find all **authors who viewed at least one of their own articles**.  
Return the result table **sorted by `id` in ascending order**.

---

### Example 1

**Input:**  
Views table:
<table>
<tr><th>article_id</th><th>author_id</th><th>viewer_id</th><th>view_date</th></tr>
<tr><td>1</td><td>3</td><td>5</td><td>2019-08-01</td></tr>
<tr><td>1</td><td>3</td><td>6</td><td>2019-08-02</td></tr>
<tr><td>2</td><td>7</td><td>7</td><td>2019-08-01</td></tr>
<tr><td>2</td><td>7</td><td>6</td><td>2019-08-02</td></tr>
<tr><td>4</td><td>7</td><td>1</td><td>2019-07-22</td></tr>
<tr><td>3</td><td>4</td><td>4</td><td>2019-07-21</td></tr>
<tr><td>3</td><td>4</td><td>4</td><td>2019-07-21</td></tr>
</table>

**Output:**  
<table>
<tr><th>id</th></tr>
<tr><td>4</td></tr>
<tr><td>7</td></tr>
</table>

---
## 🐦 Invalid Tweets

### Table: `Tweets`
<table>
<tr><th>Column Name</th><th>Type</th></tr>
<tr><td>tweet_id</td><td>int</td></tr>
<tr><td>content</td><td>varchar</td></tr>
</table>

`tweet_id` is the primary key for this table.  
`content` consists of alphanumeric characters, '!', or spaces, and no other special characters.  

This table contains all tweets in a social media app.

---

### 🧠 Task

A tweet is **invalid** if the number of characters in its `content` is **strictly greater than 15**.  
Write a solution to find the **IDs of invalid tweets**. Return the result table in any order.

---

### Example 1

**Input:**  
Tweets table:
<table>
<tr><th>tweet_id</th><th>content</th></tr>
<tr><td>1</td><td>Let us Code</td></tr>
<tr><td>2</td><td>More than fifteen chars are here!</td></tr>
</table>

**Output:**  
<table>
<tr><th>tweet_id</th></tr>
<tr><td>2</td></tr>
</table>

**Explanation:**  
- Tweet 1 has length = 11 → valid  
- Tweet 2 has length = 33 → invalid

---



