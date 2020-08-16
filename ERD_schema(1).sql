CREATE TABLE "HealthExpenditure" (
    "id" INT   NOT NULL,
    "country_id" INT   NOT NULL,
    "health_expenditure" FLOAT   NOT NULL,
    CONSTRAINT "pk_HealthExpenditure" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Covid_Counts" (
    "id" INT   NOT NULL,
    "country_id" INT   NOT NULL,
    "covid_deaths" INT   NOT NULL,
    "covid_confirmed" INT   NOT NULL,
    CONSTRAINT "pk_Covid_Counts" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Population" (
    "id" INT   NOT NULL,
    "country_id" INT   NOT NULL,
    "region" VARCHAR   NOT NULL,
    "population" INT   NOT NULL,
    CONSTRAINT "pk_Population" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Country" (
    "id" INT   NOT NULL,
    "country" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Country" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "HealthExpenditure" ADD CONSTRAINT "fk_HealthExpenditure_country_id" FOREIGN KEY("country_id")
REFERENCES "Country" ("id");

ALTER TABLE "Covid_Counts" ADD CONSTRAINT "fk_Covid_Counts_country_id" FOREIGN KEY("country_id")
REFERENCES "Country" ("id");

ALTER TABLE "Population" ADD CONSTRAINT "fk_Population_country_id" FOREIGN KEY("country_id")
REFERENCES "Country" ("id");

