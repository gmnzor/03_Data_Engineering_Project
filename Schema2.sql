-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "CEOs" (
    "CompanyID" int   NOT NULL,
    "CeoName" varchar(64)   NOT NULL,
    "FirstYear" date   NOT NULL,
    "LastYear" date   NOT NULL
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

CREATE TABLE "YearlyWorth" (
    "CompanyID" int   NOT NULL,
    "Year" date   NOT NULL,
    "Valuation" float   NOT NULL,
    CONSTRAINT "pk_YearlyWorth" PRIMARY KEY (
        "CompanyID","Year"
     )
);

ALTER TABLE "CEOs" ADD CONSTRAINT "fk_CEOs_CompanyID" FOREIGN KEY("CompanyID")
REFERENCES "Company" ("CompanyID");

ALTER TABLE "Stock" ADD CONSTRAINT "fk_Stock_CompanyID" FOREIGN KEY("CompanyID")
REFERENCES "Company" ("CompanyID");

ALTER TABLE "YearlyWorth" ADD CONSTRAINT "fk_YearlyWorth_CompanyID" FOREIGN KEY("CompanyID")
REFERENCES "Company" ("CompanyID");

