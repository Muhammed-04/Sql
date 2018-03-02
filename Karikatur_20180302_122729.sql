--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.11
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: hash; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE hash (
    "hashID" integer NOT NULL,
    hash_code character(64) NOT NULL,
    "krkID" integer
);


ALTER TABLE hash OWNER TO postgres;

--
-- Name: hash_hashID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "hash_hashID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "hash_hashID_seq" OWNER TO postgres;

--
-- Name: hash_hashID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "hash_hashID_seq" OWNED BY hash."hashID";


--
-- Name: karikatur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE karikatur (
    "krkID" integer NOT NULL,
    base64 character varying(2000000) NOT NULL,
    tarih date NOT NULL
);


ALTER TABLE karikatur OWNER TO postgres;

--
-- Name: karikatur_krkID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "karikatur_krkID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "karikatur_krkID_seq" OWNER TO postgres;

--
-- Name: karikatur_krkID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "karikatur_krkID_seq" OWNED BY karikatur."krkID";


--
-- Name: hash hashID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY hash ALTER COLUMN "hashID" SET DEFAULT nextval('"hash_hashID_seq"'::regclass);


--
-- Name: karikatur krkID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY karikatur ALTER COLUMN "krkID" SET DEFAULT nextval('"karikatur_krkID_seq"'::regclass);


--
-- Data for Name: hash; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: karikatur; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: hash_hashID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"hash_hashID_seq"', 1, true);


--
-- Name: karikatur_krkID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"karikatur_krkID_seq"', 1, true);


--
-- Name: hash hashPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY hash
    ADD CONSTRAINT "hashPK" PRIMARY KEY ("hashID");


--
-- Name: karikatur krkPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY karikatur
    ADD CONSTRAINT "krkPK" PRIMARY KEY ("krkID");


--
-- Name: hash krkFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY hash
    ADD CONSTRAINT "krkFK" FOREIGN KEY ("krkID") REFERENCES karikatur("krkID");


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

