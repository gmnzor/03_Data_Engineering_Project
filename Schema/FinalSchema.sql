-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "CEOs" (
    "CompanyID" int   NOT NULL,
    "CeoName" varchar(64)   NOT NULL,
    "FirstYear" int   NOT NULL,
    "LastYear" int   NOT NULL
);

CREATE TABLE "Stock" (
    "CompanyID" int   NOT NULL,
    "Date" date   NOT NULL,
    "Open" float   NOT NULL,
    "High" float   NOT NULL,
    "Low" float   NOT NULL,
    "Close" float   NOT NULL,
    "Adj_Close" float   NOT NULL,
    "Volume" float   NOT NULL,
    CONSTRAINT "pk_Stock" PRIMARY KEY (
        "CompanyID","Date"
     )
);

CREATE TABLE "Company" (
    "CompanyID" int   NOT NULL,
    "CompanyName" varchar(16)   NOT NULL,
    "Founded" int   NOT NULL,
    CONSTRAINT "pk_Company" PRIMARY KEY (
        "CompanyID"
     )
);

CREATE TABLE "MarketCap" (
    "MarketCap(Billions)" float   NOT NULL,
    "CompanyID" int   NOT NULL,
    "Year" int   NOT NULL,
    "Change" float   NOT NULL,
    CONSTRAINT "pk_MarketCap" PRIMARY KEY (
        "CompanyID","Year"
     )
);

ALTER TABLE "CEOs" ADD CONSTRAINT "fk_CEOs_CompanyID" FOREIGN KEY("CompanyID")
REFERENCES "Company" ("CompanyID");

ALTER TABLE "Stock" ADD CONSTRAINT "fk_Stock_CompanyID" FOREIGN KEY("CompanyID")
REFERENCES "Company" ("CompanyID");

ALTER TABLE "MarketCap" ADD CONSTRAINT "fk_MarketCap_CompanyID" FOREIGN KEY("CompanyID")
REFERENCES "Company" ("CompanyID");

