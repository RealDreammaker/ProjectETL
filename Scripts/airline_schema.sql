-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Airlines] (
    [Airline_id] int  NOT NULL ,
    [Airline] varchar(100)  NOT NULL ,
    [Alias] varchar(100)  NOT NULL ,
    [IATA] varchar(2)  NULL ,
    [ICAO] varchar(3)  NOT NULL ,
    [Callsign] varchar(100)  NOT NULL ,
    [Country] varchar(100)  NOT NULL ,
    [Active] boolean  NOT NULL ,
    CONSTRAINT [PK_Airlines] PRIMARY KEY CLUSTERED (
        [Airline_id] ASC
    )
)

CREATE TABLE [Operations] (
    [id] int  NOT NULL ,
    [Month_Year] date  NOT NULL ,
    [Airline_id] int  NOT NULL ,
    [Port_Country] varchar(100)  NOT NULL ,
    [Passangers_In] int  NOT NULL ,
    [Freight_In_tonnes] numeric(7,3)  NOT NULL ,
    [Mail_In_tonnes] numeric(6,3)  NOT NULL ,
    [Passengers_Out] int  NOT NULL ,
    [Freight_Out_tonnes] numeric(7,3)  NOT NULL ,
    [Mail_Out_tonnes] numeric(7,3)  NOT NULL ,
    CONSTRAINT [PK_Operations] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

ALTER TABLE [Operations] WITH CHECK ADD CONSTRAINT [FK_Operations_Airline_id] FOREIGN KEY([Airline_id])
REFERENCES [Airlines] ([Airline_id])

ALTER TABLE [Operations] CHECK CONSTRAINT [FK_Operations_Airline_id]

COMMIT TRANSACTION QUICKDBD