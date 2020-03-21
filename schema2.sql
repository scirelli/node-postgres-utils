--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Debian 12.2-2.pgdg100+1)
-- Dumped by pg_dump version 12.1

-- Started on 2020-03-21 01:40:12 UTC

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 2912 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 16386)
-- Name: county_emergency_management_offices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.county_emergency_management_offices (
    id integer NOT NULL,
    county character varying(50) NOT NULL,
    emergency_manager character varying(100) NOT NULL,
    " address" character varying(200) NOT NULL,
    " city" character varying(100) NOT NULL,
    " state" character(2) NOT NULL,
    " zip_code" character(5) NOT NULL,
    " business_phone" character varying(16) NOT NULL,
    " latitude" character varying(100) NOT NULL,
    " longitude" character varying(100) NOT NULL,
    " location_1" character varying(200) NOT NULL
);


ALTER TABLE public.county_emergency_management_offices OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16384)
-- Name: county_emergency_management_offices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.county_emergency_management_offices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.county_emergency_management_offices_id_seq OWNER TO postgres;

--
-- TOC entry 2913 (class 0 OID 0)
-- Dependencies: 202
-- Name: county_emergency_management_offices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.county_emergency_management_offices_id_seq OWNED BY public.county_emergency_management_offices.id;


--
-- TOC entry 2778 (class 2604 OID 16389)
-- Name: county_emergency_management_offices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.county_emergency_management_offices ALTER COLUMN id SET DEFAULT nextval('public.county_emergency_management_offices_id_seq'::regclass);


--
-- TOC entry 2780 (class 2606 OID 16394)
-- Name: county_emergency_management_offices county_emergency_management_offices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.county_emergency_management_offices
    ADD CONSTRAINT county_emergency_management_offices_pkey PRIMARY KEY (id);


-- Completed on 2020-03-21 01:40:12 UTC

--
-- PostgreSQL database dump complete
--

