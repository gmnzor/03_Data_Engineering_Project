-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "CEOs" (
    "CeoID" int   NOT NULL,
    "CeoName" string   NOT NULL,
    "FirstYear" date   NOT NULL,
    "LastFullYear" date   NOT NULL,
    "CompanyID" int   NOT NULL,
    CONSTRAINT "pk_CEOs" PRIMARY KEY (
        "CeoID"
     )
);

CREATE TABLE "Stock" (
    "CompanyID" int   NOT NULL,
    "Date" date   NOT NULL,
    "Open" float   NOT NULL,
    "high" float   NOT NULL,
    "low" float   NOT NULL,
    "close" float   NOT NULL,
    "adj_close" float   NOT NULL,
    "volume" int   NOT NULL,
    CONSTRAINT "pk_Stock" PRIMARY KEY (
        "CompanyID","Date"
     )
);

CREATE TABLE "Company" (
    "CompanyID" int   NOT NULL,
    "CompanyName" string   NOT NULL,
    "Founded" date   NOT NULL,
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

