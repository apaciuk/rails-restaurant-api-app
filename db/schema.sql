CREATE TABLE "public"."schema_migrations" ( 
  "version" VARCHAR NOT NULL,
  CONSTRAINT "schema_migrations_pkey" PRIMARY KEY ("version")
);
CREATE TABLE "public"."ar_internal_metadata" ( 
  "key" VARCHAR NOT NULL,
  "value" VARCHAR NULL,
  "created_at" TIMESTAMP NOT NULL,
  "updated_at" TIMESTAMP NOT NULL,
  CONSTRAINT "ar_internal_metadata_pkey" PRIMARY KEY ("key")
);
CREATE TABLE "public"."dishes" ( 
  "id" SERIAL,
  "name" VARCHAR NULL,
  "restaurant_id" BIGINT NOT NULL,
  "created_at" TIMESTAMP NOT NULL,
  "updated_at" TIMESTAMP NOT NULL,
  CONSTRAINT "dishes_pkey" PRIMARY KEY ("id")
);
CREATE TABLE "public"."ingredients" ( 
  "id" SERIAL,
  "name" VARCHAR NULL,
  "created_at" TIMESTAMP NOT NULL,
  "updated_at" TIMESTAMP NOT NULL,
  CONSTRAINT "ingredients_pkey" PRIMARY KEY ("id")
);
CREATE TABLE "public"."measurements" ( 
  "id" SERIAL,
  "name" VARCHAR NULL,
  "created_at" TIMESTAMP NOT NULL,
  "updated_at" TIMESTAMP NOT NULL,
  CONSTRAINT "measurements_pkey" PRIMARY KEY ("id")
);
CREATE TABLE "public"."measured_ingredients" ( 
  "id" SERIAL,
  "amount" INTEGER NULL,
  "dish_id" BIGINT NOT NULL,
  "ingredients_id" BIGINT NOT NULL,
  "measurements_id" BIGINT NOT NULL,
  "created_at" TIMESTAMP NOT NULL,
  "updated_at" TIMESTAMP NOT NULL,
  CONSTRAINT "measured_ingredients_pkey" PRIMARY KEY ("id")
);
CREATE TABLE "public"."restaurants" ( 
  "id" SERIAL,
  "name" VARCHAR NULL,
  "description" TEXT NULL,
  "created_at" TIMESTAMP NOT NULL,
  "updated_at" TIMESTAMP NOT NULL,
  CONSTRAINT "restaurants_pkey" PRIMARY KEY ("id")
);
ALTER TABLE "public"."dishes" ADD CONSTRAINT "fk_rails_d0358ace74" FOREIGN KEY ("restaurant_id") REFERENCES "public"."restaurants" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."measured_ingredients" ADD CONSTRAINT "fk_rails_2214e18bc0" FOREIGN KEY ("dish_id") REFERENCES "public"."dishes" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."measured_ingredients" ADD CONSTRAINT "fk_rails_cf447089c6" FOREIGN KEY ("ingredients_id") REFERENCES "public"."ingredients" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."measured_ingredients" ADD CONSTRAINT "fk_rails_ada1f2da03" FOREIGN KEY ("measurements_id") REFERENCES "public"."measurements" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
