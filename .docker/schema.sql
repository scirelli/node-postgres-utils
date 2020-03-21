--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Debian 12.2-2.pgdg100+1)
-- Dumped by pg_dump version 12.1

-- Started on 2020-03-20 23:31:01 UTC

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

DROP DATABASE postgres;
--
-- TOC entry 2914 (class 1262 OID 13408)
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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
-- TOC entry 203 (class 1259 OID 16386)
-- Name: county_emergency_management_offices; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE public.county_emergency_management_offices (
    id integer NOT NULL,
    county character varying(50) NOT NULL,
    emergency_manager character varying(100) NOT NULL,
    address character varying(200) NOT NULL,
    city character varying(100) NOT NULL,
    state character(2) NOT NULL,
    zip_code character(5) NOT NULL,
    business_phone character varying(16) NOT NULL,
    latitude character varying(100) NOT NULL,
    longitude character varying(100) NOT NULL,
    location_1 character varying(200) NOT NULL
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
--
-- TOC entry 2908 (class 0 OID 16386)
-- Dependencies: 203
-- Data for Name: county_emergency_management_offices; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('ALBANY', 'TOM REMMERT', '58 VERDA AVENUE PO BOX A', 'NEW SCOTLAND', 'NY', '12041', '(518) 720-8026', '42.774883', '-73.701253', '"(42.774883, -73.701253)"', 1);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('ALLEGANY', 'JEFF LUCKEY', '6087 STATE ROUTE 19', 'BELMONT', 'NY', '14813', '(585) 268-5290', '42.211386', '-78.017442', '"(42.211386, -78.017442)"', 2);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('BROOME', 'MIKE PONTICIELLO', '153 LT VAN WINKLE DRIVE', 'BINGHAMTON', 'NY', '13905', '(607) 778-1178', '42.11418', '-75.93491', '"(42.11418, -75.93491)"', 3);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('CATTARAUGUS', 'CHRISTOPHER BAKER', '303 COURT STREET', 'LITTLE VALLEY', 'NY', '14755', '(716) 938-2240', '42.251608', '-78.800712', '"(42.251608, -78.800712)"', 4);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('CAYUGA', 'BRIAN DAHL', '7445 COUNTY HOUSE ROAD', 'AUBURN', 'NY', '13021', '(315) 255-1161', '42.929799', '-76.569932', '"(42.929799, -76.569932)"', 5);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('CHAUTAUQUA', 'JULIUS LEONE JR', '2 ACADEMY STREET SUITE A ROOM 106', 'MAYVILLE', 'NY', '14757', '(716) 753-4341', '42.253374', '-79.50612', '"(42.253374, -79.50612)"', 6);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('CHEMUNG', 'MARK CICORA', '425 PENNSYLVANIA AVE PO BOX 588', 'ELMIRA', 'NY', '14902', '(607) 737-2928', '42.078162', '-76.80213', '"(42.078162, -76.80213)"', 7);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('CHEMUNG', 'KRISTEN CARD-GRIFFEN', '425 PENNSYLVANIA AVE PO BOX 588', 'ELMIRA', 'NY', '14902', '(607) 737-2095', '42.078162', '-76.80213', '"(42.078162, -76.80213)"', 8);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('CHENANGO', 'MATTHEW BECKWITH', '279 COUNTY RD 46', 'NORWICH', 'NY', '13815', '(607) 337-1862', '42.55025', '-75.56506', '"(42.55025, -75.56506)"', 9);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('CLINTON', 'ERIC DAY', '16 EMERGENCY SERVICES DRIVE', 'PLATTSBURGH', 'NY', '12903', '(518) 565-4792', '44.6723', '-73.45183', '"(44.6723, -73.45183)"', 10);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('COLUMBIA', 'BILL BLACK', '85 INDUSTRIAL TRACT', 'HUDSON', 'NY', '12534', '(518) 766-6689', '42.249267', '-73.782743', '"(42.249267, -73.782743)"', 11);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('CORTLAND', 'COURTNEY METCALF', '54 GREENBUSH STREET', 'CORTLAND', 'NY', '13045', '(607) 753-5065', '42.598721', '-76.175391', '"(42.598721, -76.175391)"', 12);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('CORTLAND', 'SCOTT ROMAN', '54 GREENBUSH STREET', 'CORTLAND', 'NY', '13045', '(607)753-5064', '42.598721', '-76.175391', '"(42.598721, -76.175391)"', 13);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('DELAWARE', 'MARGARET WILSON', '280 PHOEBE LN/SUITE 3', 'DELHI', 'NY', '13753', '(607) 746-9600', '42.17069', '-74.98658', '"(42.17069, -74.98658)"', 14);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('DUTCHESS', 'DANA SMITH', '392 CREEK RD', 'POUGHKEEPSIE', 'NY', '12601', '(845) 486-2080', '41.746862', '-73.899131', '"(41.746862, -73.899131)"', 15);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('DUTCHESS', 'WILLIAM BEALE', '392 CREEK RD', 'POUGHKEEPSIE', 'NY', '12601', '(845) 486-2082', '41.746862', '-73.899131', '"(41.746862, -73.899131)"', 16);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('ERIE', 'DANIEL NEAVERTH JR', '45 ELM ST', 'BUFFALO', 'NY', '14203', '(716) 858-4909', '42.882224', '-78.870261', '"(42.882224, -78.870261)"', 17);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('ERIE', 'GREG BUTCHER', '45 ELM ST', 'BUFFALO', 'NY', '14203', '(716) 858-2944', '42.882224', '-78.870261', '"(42.882224, -78.870261)"', 18);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('ESSEX', 'DONALD JAQUISH', '702 STOWERSVILLE RD PO BOX 30', 'LEWIS', 'NY', '12950', '(518) 873-3900', '44.282994', '-73.537311', '"(44.282994, -73.537311)"', 19);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('FRANKLIN', 'RICK PROVOST', '55 BARE HILL ROAD', 'MALONE', 'NY', '12953', '(518) 483-2580', '44.87014', '-74.317802', '"(44.87014, -74.317802)"', 20);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('FULTON', 'STEVEN SANTA MARIA', '2714 STATE HIGHWAY 29', 'JOHNSTOWN', 'NY', '12095', '(518) 736-5858', '43.00687', '-74.37955', '"(43.00687, -74.37955)"', 21);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('GENESEE', 'TIMOTHY YAEGER', '7690 STATE STREET ROAD', 'BATAVIA', 'NY', '14020', '(716) 344-0078', '43.041087', '-78.178225', '"(43.041087, -78.178225)"', 22);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('GREENE', 'JOHN FARRELL', '25 VOLUNTEER DRIVE', 'CAIRO', 'NY', '12413', '(518) 622-3643', '42.294536', '74.000529', '"(42.294536, 74.000529)"', 23);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('HAMILTON', 'DON PURDY', 'PO BOX 44 102 COUNTYVIEW RD', 'LAKE PLEASANT', 'NY', '12108', '(518) 548-6223', '43.55342', '-74.43809', '"(43.55342, -74.43809)"', 24);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('HERKIMER', 'ROBERT VANDAWALKER', '71 RESERVOIR ROAD', 'HERKIMER', 'NY', '13350', '(315) 867-1212', '43.032199', '-75.000385', '"(43.032199, -75.000385)"', 25);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('JEFFERSON', 'JOSEPH PLUMMER', '753 WATERMAN DRIVE', 'WATERTOWN', 'NY', '13601', '(315) 786-2654', '43.973533', '-75.928239', '"(43.973533, -75.928239)"', 26);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('LEWIS', 'ROBERT MACKENZIE', '5252 OUTER STOWE STREET PO BOX 233', 'LOWVILLE', 'NY', '13367', '(315) 376-5305', '43.79896', '-75.44781', '"(43.79896, -75.44781)"', 27);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('LIVINGSTON', 'KEVIN NIEDERMAIER', '3360 GYPSY LANE', 'MOUNT MORRIS', 'NY', '14510', '(585) 243-7160', '42.80106', '-77.79851', '"(42.80106, -77.79851)"', 28);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('MONROE', 'FRED RION', '1190 SCOTTSVILLE RD SUITE 200', 'ROCHESTER', 'NY', '14624', '(585) 753-3816', '43.119364', '-77.65439', '"(43.119364, -77.65439)"', 29);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('MONROE', 'KRISTINA DAUGHTERY', '1190 SCOTTSVILLE RD SUITE 200', 'ROCHESTER', 'NY', '14624', '(585) 753-3823', '43.119364', '-77.65439', '"(43.119364, -77.65439)"', 30);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('MONTGOMERY', 'JEFFERY SMITH', '64 BROADWAY PO BOX 1500', 'FONDA', 'NY', '12068', '(518) 853-4011', '42.95449', '-74.37497', '"(42.95449, -74.37497)"', 31);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('NASSAU', 'THOMAS DELANEY', '510 GRUMMAN ROAD WEST', 'BETHPAGE', 'NY', '11714', '(516) 573-0636', '40.751452', '-73.498952', '"(40.751452, -73.498952)"', 32);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('NASSAU', 'CRAIG CRAFT', '510 GRUMMAN ROAD WEST', 'BETHPAGE', 'NY', '11714', '(516) 573-0636', '40.751452', '-73.498952', '"(40.751452, -73.498952)"', 33);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('NASSAU', 'PAUL WILDERS', '510 GRUMMAN ROAD WEST', 'BETHPAGE', 'NY', '11714', '(516) 573-0636', '40.751452', '-73.498952', '"(40.751452, -73.498952)"', 34);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('ONEIDA', 'JOSEPH HERNON', '120 BASE RD', 'ORISKANY', 'NY', '13424', '(315) 765-2530', '43.154734', '-75.376453', '"(43.154734, -75.376453)"', 35);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('ONONDAGA', 'DANIEL WEARS', '421 MONTGOMERY STREET', 'SYRACUSE', 'NY', '13202', '(315) 435-2525', '43.046462', '-76.148725', '"(43.046462, -76.148725)"', 36);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('ONTARIO', 'JEFFREY HARLOFF', '2914 COUNTY RD 48', 'CANANDAIGUA', 'NY', '14424', '(585) 396-4310', '42.89056', '-77.219248', '"(42.89056, -77.219248)"', 37);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('ORANGE', 'CRAIG CHERRY', '22 WELLS FARM ROAD', 'GOSHEN', 'NY', '10924', '(845) 615-0564', '41.408663', '-74.355093', '"(41.408663, -74.355093)"', 38);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('ORLEANS', 'DALE BANKER', '14064 WEST COUNTY HOUSE RD', 'ALBION', 'NY', '14411', '(585) 589-4414', '43.218796', '-78.212606', '"(43.218796, -78.212606)"', 39);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('OSWEGO', 'DALE CURRIER', '200 NORTH SECOND STREET', 'FULTON', 'NY', '13069', '(315) 591-9154', '43.330802', '-76.416288', '"(43.330802, -76.416288)"', 40);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('OTSEGO', 'KEVIN RITTON', '197 MAIN STREET', 'COOPERSTOWN', 'NY', '13326', '(607) 547-4227', '42.701083', '-74.930312', '"(42.701083, -74.930312)"', 41);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('PUTNAM', 'ANTHONY SUTTON', '112 OLD ROUTE 6', 'CARMEL', 'NY', '10512', '(845) 808-4000', '41.44869', '-73.6833', '"(41.44869, -73.6833)"', 42);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('RENSSELAER', 'KELLY PASLOW', '4000 MAIN ST', 'TROY', 'NY', '12181', '(518) 266-7676', '42.70949', '-73.70095', '"(42.70949, -73.70095)"', 43);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('ROCKLAND', 'GORDON WREN JR', '35 FIREMEN''S MEMORIAL DRIVE', 'POMONA', 'NY', '10970', '(845) 364-8800', '41.173606', '-74.03528', '"(41.173606, -74.03528)"', 44);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('ST LAWRENCE', 'MICHAEL LECUYER', '48 COURT STREET', 'CANTON', 'NY', '13617', '(315) 379-2240', '44.598827', '-75.169609', '"(44.598827, -75.169609)"', 45);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('SARATOGA', 'CARL ZEILMAN', '25 WEST HIGH STREET', 'BALLTON SPA', 'NY', '12020', '(518) 885-2232', '43.000655', '-73.849996', '"(43.000655, -73.849996)"', 46);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('SARATOGA', 'EDWARD TREMBLAY', '25 WEST HIGH STREET', 'BALLTON SPA', 'NY', '12020', '(518) 885-2232', '43.000655', '-73.849996', '"(43.000655, -73.849996)"', 47);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('SCHENECTADY', 'MARK LAVIOLETTE', '531 LIBERTY STREET', 'SCHENECTADY', 'NY', '12305', '(518) 370-3113', '42.814239', '-73.937767', '"(42.814239, -73.937767)"', 48);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('SCHOHARIE', 'COLLEEN FULFORD', '2783 STATE ROUTE 7', 'COBLESKILL', 'NY', '12043', '(518) 295-2276', '42.671696', '-74.309137', '"(42.671696, -74.309137)"', 49);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('SENECA', 'MELISSA TAYLOR', '1 DIPRONIO DRIVE', 'WATERLOO', 'NY', '13165', '(315) 539-1751', '42.909883', '-76.843134', '"(42.909883, -76.843134)"', 50);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('STEUBEN', 'KENNETH FORENZ', '6979 RUMSEY STREET EXT', 'BATH', 'NY', '14810', '(607) 664-2910', '42.348545', '-77.29694', '"(42.348545, -77.29694)"', 51);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('STEUBEN', 'TIMOTHY MARSHALL', '6979 RUMSEY STREET EXT', 'BATH', 'NY', '14810', '(607) 664-2910', '42.348545', '-77.29694', '"(42.348545, -77.29694)"', 52);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('SUFFOLK', 'JOSEPH WILLIAMS', '30 EAST AVENUE BLDG C0110', 'YAPHANK', 'NY', '11980', '(631) 852-4850', '70.811636', '-72.918075', '"(70.811636, -72.918075)"', 53);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('SULLIVAN', 'RICHARD MARTINKOVIC', '10 NORTH STREET PO BOX 5012 COUNTY GOVERNMENT CENTER', 'MONTICELLO', 'NY', '12701', '(845) 807-0508', '41.657831', '-74.691856', '"(41.657831, -74.691856)"', 54);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('TIOGA', 'RICHARD LECOUNT', '103 CORPORATE DRIVE', 'OWEGO', 'NY', '13827', '(607) 687-2023', '42.142998', '-76.268682', '"(42.142998, -76.268682)"', 55);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('TOMPKINS', 'LEE SHURTLEFF', '92 BROWN ROAD', 'ITHACA', 'NY', '14850', '(607) 257-3888', '42.486083', '-76.458072', '"(42.486083, -76.458072)"', 56);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('ULSTER', 'STEVEN PETERSON', '238 GOLDEN HILL LANE', 'KINGSTON', 'NY', '12401', '(845) 331-7000', '41.766944', '-74.309463', '"(41.766944, -74.309463)"', 57);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('WARREN', 'AMY DREXEL', '1340 STATE ROUTE 9', 'LAKE GEORGE', 'NY', '12845', '(518) 761-6490', '43.359524', '-73.701463', '"(43.359524, -73.701463)"', 58);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('WARREN', 'BRIAN LAFLURE', '1340 STATE ROUTE 9', 'LAKE GEORGE', 'NY', '12845', '(518) 761-6537', '43.359524', '-73.701463', '"(43.359524, -73.701463)"', 59);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('WASHINGTON', 'JONATHAN PEASE', '383 BROADWAY', 'FORT EDWARD', 'NY', '12828', '(518) 747-7520', '43.2801', '-73.586484', '"(43.2801, -73.586484)"', 60);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('WASHINGTON', 'TIMOTHY R. HARDY', '383 BROADWAY', 'FORT EDWARD', 'NY', '12828', '(518) 746-7520', '43.2801', '-73.586484', '"(43.2801, -73.586484)"', 61);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('WESTCHESTER', 'JENNIFER WACHA', '200 BRADHURST AVE', 'HAWTHORNE', 'NY', '10532', '(914) 231-1686', '41.100887', '-73.803051', '"(41.100887, -73.803051)"', 62);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('WESTCHESTER', 'DENNIS DELBORGO', '200 BRADHURST AVE', 'HAWTHORNE', 'NY', '10532', '(914) 864-5453', '41.100887', '-73.803051', '"(41.100887, -73.803051)"', 63);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('WESTCHESTER', 'JOHN CULLEN', '200 BRADHURST AVE', 'HAWTHORNE', 'NY', '10532', '(914) 231-1688', '41.100887', '-73.803051', '"(41.100887, -73.803051)"', 64);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('YATES', 'DIANE CAVES', '227 MAIN STREET', 'PENN YAN', 'NY', '14527', '(315) 536-3000', '42.664867', '-77.056028', '"(42.664867, -77.056028)"', 65);
INSERT INTO public.county_emergency_management_offices (county, emergency_manager, address, city, state, zip_code, business_phone, latitude, longitude, location_1, id) VALUES ('YATES', 'BRIAN WINSLOW', '227 MAIN STREET', 'PENN YAN', 'NY', '14527', '(315) 536-3000', '42.664867', '-77.056028', '"(42.664867, -77.056028)"', 66);


--
-- TOC entry 2917 (class 0 OID 0)
-- Dependencies: 202
-- Name: county_emergency_management_offices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.county_emergency_management_offices_id_seq', 66, true);


-- Completed on 2020-03-20 23:31:02 UTC

--
-- PostgreSQL database dump complete
--

