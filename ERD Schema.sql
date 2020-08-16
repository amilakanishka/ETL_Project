CREATE TABLE "health_expenditure" (
    "country_id" INT   NOT NULL,
    "health_expenditure" FLOAT   NOT NULL
);

CREATE TABLE "covid_deaths" (
    "country_id" INT   NOT NULL,
    "deaths" INT   NOT NULL
);

CREATE TABLE "country_by_region" (
    "country_id" INT   NOT NULL,
    "region" VARCHAR   NOT NULL,
    "european_union" BOOLEAN   NOT NULL,
    "income_group" VARCHAR   NOT NULL
);

CREATE TABLE "country_id" (
    "country_id" INT   NOT NULL,
    "country" VARCHAR   NOT NULL,
    CONSTRAINT "pk_country_id" PRIMARY KEY (
        "country_id"
     )
);

ALTER TABLE "health_expenditure" ADD CONSTRAINT "fk_health_expenditure_country_id" FOREIGN KEY("country_id")
REFERENCES "country_id" ("country_id");

ALTER TABLE "covid_deaths" ADD CONSTRAINT "fk_covid_deaths_country_id" FOREIGN KEY("country_id")
REFERENCES "country_id" ("country_id");

ALTER TABLE "country_by_region" ADD CONSTRAINT "fk_country_by_region_country_id" FOREIGN KEY("country_id")
REFERENCES "country_id" ("country_id");

