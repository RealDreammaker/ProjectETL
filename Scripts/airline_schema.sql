-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Airlines" (
    "Airline_id" int   NOT NULL,
    "Airline" varchar(100)   NOT NULL,
    "Alias" varchar(100)   NULL,
    "IATA" varchar(4)   NULL,
    "ICAO" varchar(7)   NULL,
    "Callsign" varchar(100)   NULL,
    "Country" varchar(100)   NULL,
    "Active" boolean   NOT NULL,
    CONSTRAINT "pk_Airlines" PRIMARY KEY (
        "Airline_id"
     )
);

CREATE TABLE "Operations" (
    "id" int   NOT NULL,
    "Month_Year" varchar(6)   NOT NULL,
    "Airline_id" int   NOT NULL,
    "Port_Country" varchar(100)   NOT NULL,
    "Passengers_In" int   NOT NULL,
    "Freight_In_tonnes" numeric(7,3)   NOT NULL,
    "Mail_In_tonnes" numeric(6,3)   NOT NULL,
    "Passengers_Out" int   NOT NULL,
    "Freight_Out_tonnes" numeric(7,3)   NOT NULL,
    "Mail_Out_tonnes" numeric(7,3)   NOT NULL,
    CONSTRAINT "pk_Operations" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "Operations" ADD CONSTRAINT "fk_Operations_Airline_id" FOREIGN KEY("Airline_id")
REFERENCES "Airlines" ("Airline_id");

