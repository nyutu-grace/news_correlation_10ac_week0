CREATE TABLE "country_code" (
  "SourceCommonName" varchar,
  "location" varchar,
  "Country" varchar
);

CREATE TABLE "country_domain_counts" (
  "Country" varchar PRIMARY KEY,
  "Media_Organization_Count" int
);

CREATE TABLE "country_article_counts" (
  "article_id" int PRIMARY KEY,
  "Country" varchar,
  "country_article_count" int
);

CREATE TABLE "region_article_code" (
  "Region" varchar PRIMARY KEY,
  "Countries" varchar,
  "region_article_count" int
);

ALTER TABLE "country_domain_counts" ADD FOREIGN KEY ("Country") REFERENCES "country_code" ("Country");

ALTER TABLE "country_article_counts" ADD FOREIGN KEY ("Country") REFERENCES "country_code" ("Country");

ALTER TABLE "region_article_code" ADD FOREIGN KEY ("region_article_count") REFERENCES "country_article_counts" ("country_article_count");
