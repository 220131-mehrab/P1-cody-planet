CREATE TABLE "planets"(
    "PlanetId" INT PRIMARY KEY NOT NULL,
    "Name" VARCHAR
);

CREATE TABLE "Info"(
    "InfoId" INT NOT NULL;
    "Title" VARCHAR NOT NULL
    "PlanetId" INT NOT NULL;
    CONSTRAINT "PK_Info" PRIMARY KEY ("Info")
    CONSTRAINT "FK_InfoPlanetId" FOREIGN KEY ("PlanetId") REFERENCES "planets" ("PlanetId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

    CREATE INDEX "IFK_InfoPlanetsId" ON "Info" ("PlanetId");

    INSERT INTO "Planets" VALUES (1, 'Mercury');
    INSERT INTO "Planets" VALUES (2, 'Venus');