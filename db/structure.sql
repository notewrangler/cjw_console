--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ebay_categories; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ebay_categories (
    id integer NOT NULL,
    main_category character varying,
    sub_category1 character varying,
    sub_category2 character varying,
    sub_category3 character varying,
    sub_category4 character varying,
    sub_category5 character varying,
    children integer,
    category_id character varying,
    parent_id character varying
);


--
-- Name: ebay_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ebay_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ebay_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ebay_categories_id_seq OWNED BY ebay_categories.id;


--
-- Name: packages; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE packages (
    id integer NOT NULL,
    product_id integer,
    package_type character varying,
    length character varying,
    width character varying,
    height character varying,
    weight character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: packages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE packages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: packages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE packages_id_seq OWNED BY packages.id;


--
-- Name: photos; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE photos (
    id integer NOT NULL,
    product_id integer,
    name character varying,
    image character varying,
    main boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: photos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE photos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE photos_id_seq OWNED BY photos.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE products (
    id integer NOT NULL,
    title character varying,
    description text,
    purchase_date date,
    purchase_source character varying,
    purchase_price numeric(5,2),
    store_category character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    workflow_state character varying,
    ebay_category character varying,
    upc character varying,
    condition character varying,
    quantity integer,
    item_specifics hstore,
    listing_format character varying,
    listing_price numeric(6,2),
    listing_duration character varying,
    item_location character varying,
    payment_policy character varying,
    listing_date_time time without time zone,
    listing_title character varying,
    country_region_of_manufacture character varying
);


--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE products_id_seq OWNED BY products.id;


--
-- Name: return_policies; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE return_policies (
    id integer NOT NULL,
    product_id integer,
    accepted_or_not character varying,
    contact_time_limit character varying,
    refund_type character varying,
    shipping character varying,
    details hstore,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: return_policies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE return_policies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: return_policies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE return_policies_id_seq OWNED BY return_policies.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


--
-- Name: ship_details; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ship_details (
    id integer NOT NULL,
    product_id integer,
    handling_time character varying,
    shipping_services character varying,
    international character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: ship_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ship_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ship_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ship_details_id_seq OWNED BY ship_details.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ebay_categories ALTER COLUMN id SET DEFAULT nextval('ebay_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY packages ALTER COLUMN id SET DEFAULT nextval('packages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY photos ALTER COLUMN id SET DEFAULT nextval('photos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY products ALTER COLUMN id SET DEFAULT nextval('products_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY return_policies ALTER COLUMN id SET DEFAULT nextval('return_policies_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ship_details ALTER COLUMN id SET DEFAULT nextval('ship_details_id_seq'::regclass);


--
-- Name: ebay_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ebay_categories
    ADD CONSTRAINT ebay_categories_pkey PRIMARY KEY (id);


--
-- Name: packages_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY packages
    ADD CONSTRAINT packages_pkey PRIMARY KEY (id);


--
-- Name: photos_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY photos
    ADD CONSTRAINT photos_pkey PRIMARY KEY (id);


--
-- Name: products_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: return_policies_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY return_policies
    ADD CONSTRAINT return_policies_pkey PRIMARY KEY (id);


--
-- Name: ship_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ship_details
    ADD CONSTRAINT ship_details_pkey PRIMARY KEY (id);


--
-- Name: index_packages_on_product_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_packages_on_product_id ON packages USING btree (product_id);


--
-- Name: index_return_policies_on_product_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_return_policies_on_product_id ON return_policies USING btree (product_id);


--
-- Name: index_ship_details_on_product_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_ship_details_on_product_id ON ship_details USING btree (product_id);


--
-- Name: products_item_specifics; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX products_item_specifics ON products USING gin (item_specifics);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user",public;

INSERT INTO schema_migrations (version) VALUES ('20150725220338');

INSERT INTO schema_migrations (version) VALUES ('20150726211419');

INSERT INTO schema_migrations (version) VALUES ('20150728044155');

INSERT INTO schema_migrations (version) VALUES ('20150728233452');

INSERT INTO schema_migrations (version) VALUES ('20150730015127');

INSERT INTO schema_migrations (version) VALUES ('20150731010939');

INSERT INTO schema_migrations (version) VALUES ('20150731033943');

INSERT INTO schema_migrations (version) VALUES ('20150731035242');

INSERT INTO schema_migrations (version) VALUES ('20150731165757');

INSERT INTO schema_migrations (version) VALUES ('20150731195757');

INSERT INTO schema_migrations (version) VALUES ('20150731221129');

INSERT INTO schema_migrations (version) VALUES ('20150803003513');

INSERT INTO schema_migrations (version) VALUES ('20150805210000');

INSERT INTO schema_migrations (version) VALUES ('20150805211504');

INSERT INTO schema_migrations (version) VALUES ('20150810211330');

INSERT INTO schema_migrations (version) VALUES ('20150811173615');

INSERT INTO schema_migrations (version) VALUES ('20150811174455');

INSERT INTO schema_migrations (version) VALUES ('20150812061032');

INSERT INTO schema_migrations (version) VALUES ('20150812214022');

INSERT INTO schema_migrations (version) VALUES ('20150813205619');

INSERT INTO schema_migrations (version) VALUES ('20150813231140');

INSERT INTO schema_migrations (version) VALUES ('20150815202149');

INSERT INTO schema_migrations (version) VALUES ('20150816202351');

INSERT INTO schema_migrations (version) VALUES ('20150816202648');

INSERT INTO schema_migrations (version) VALUES ('20150816202812');

INSERT INTO schema_migrations (version) VALUES ('20150816205259');

INSERT INTO schema_migrations (version) VALUES ('20150819000913');

