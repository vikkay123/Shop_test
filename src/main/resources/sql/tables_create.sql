-- Table: Customers

CREATE TABLE IF NOT EXISTS "customers"
(
    id serial NOT NULL,
    customerName character varying(50) NOT NULL,
    contactFirstName character varying(50),
    contactLastName character varying(50),
    phoneNumber character varying(50),
    addressLine1 character varying(50),
    addressLine2 character varying(50),
    city character varying(50),
    state character varying(50),
    postalCode character varying(8),
    country character varying(50),
    CONSTRAINT "Customers_pkey" PRIMARY KEY (id)
);

	
-- Table: OrderDetails

CREATE TABLE IF NOT EXISTS "orderDetails"
(
    "orderNumber" integer NOT NULL,
    "productId" integer NOT NULL,
    "quantityOrdered" integer,
    "price" numeric(9,2) NOT NULL,
    CONSTRAINT "OrderDetails_pkey" PRIMARY KEY ("orderNumber")
);

	
-- Table: Orders

CREATE TABLE IF NOT EXISTS "orders"
(
    "orderNumber" integer NOT NULL,
    "orderDate" date NOT NULL,
    "requiredDate" date,
    "shippedDate" date,
    "status" character varying(20),
    "comments" character varying(50),
    "customerId" integer,
    CONSTRAINT "Orders_pkey" PRIMARY KEY ("orderNumber")
);


-- Table: Payments

CREATE TABLE IF NOT EXISTS "payments"
(
    "customerId" integer NOT NULL,
    "checkNumber" character varying(20)NOT NULL,
    "paymentDate" date,
    "amount" numeric(9,2),
    CONSTRAINT "Payments_pkey" PRIMARY KEY ("customerId")
);


-- Table: Books

CREATE TABLE IF NOT EXISTS "books"
(
    "ISBN" character varying(20) NOT NULL,
    "bookTitle" text NOT NULL,
    "bookType" character varying(15) NOT NULL,
    "publishingYear" int NOT NULL,
    "pages" int,
    "price" int NOT NULL,
    PRIMARY KEY ("ISBN")
);

	
-- Table: Genres

CREATE TABLE IF NOT EXISTS "genres"
(
    "ISBN" character varying(20) NOT NULL,
    "genre" character varying (50) NOT NULL,
    PRIMARY KEY ("ISBN", "genre")
);

	
-- Table: BooksByAuthors

CREATE TABLE IF NOT EXISTS "booksByAuthors"
(
    "authorId" int NOT NULL,
    "ISBN" character varying(20) NOT NULL,
    PRIMARY KEY ("authorId", "ISBN")
);


	
-- Table: Authors

CREATE TABLE IF NOT EXISTS "authors"
(
    "authorId" bigint NOT NULL,
    "name" character varying(50) NOT NULL,
    PRIMARY KEY ("authorId")
);

--STOCK TABLE
CREATE TABLE IF NOT EXISTS "stock"
(
    "ISBN" character varying(20) REFERENCES "books" ("ISBN") PRIMARY KEY,
    "total" int NOT NULL,
    "sold" int NOT NULL,
    "reserve" int NOT NULL,
    "available" int NOT NULL
);


	
	
