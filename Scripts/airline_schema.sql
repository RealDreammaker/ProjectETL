-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Airlines" (
    "Airline" varchar(100)   NOT NULL,
    "Alias" varchar(100)   NOT NULL,
    "IATA" varchar(2)   NOT NULL,
    "ICAO" varchar(3)   NOT NULL,
    "Callsign" varchar(100)   NOT NULL,
    "Country" (varchar(100)   NOT NULL,
    "Active" boolean   NOT NULL,
    CONSTRAINT "pk_Airlines" PRIMARY KEY (
        "Airline"
     )
);

CREATE TABLE "Operations" (
    "id" int   NOT NULL,
    "Month_Year" date   NOT NULL,
    "Airline" varchar(100)   NOT NULL,
    "Port_Country" varchar(100)   NOT NULL,
    "Passangers_In" int   NOT NULL,
    "Freight_In_tonnes" numeric(7,3)   NOT NULL,
    "Mail_In_tonnes" numeric(6,3)   NOT NULL,
    "Passengers_Out" int   NOT NULL,
    "Freight_Out_tonnes" numeric(7,3)   NOT NULL,
    "Mail_Out_tonnes" numeric(7,3)   NOT NULL,
    CONSTRAINT "pk_Operations" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "Operations" ADD CONSTRAINT "fk_Operations_Airline" FOREIGN KEY("Airline")
REFERENCES "Airlines" ("Airline");

