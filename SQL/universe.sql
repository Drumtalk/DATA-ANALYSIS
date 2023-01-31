--
-- PostgreSQL database dump

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: creatures; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.creatures (
    creatures_id integer NOT NULL,
    name character varying(40),
    description text,
    human boolean,
    intelligent boolean,
    lifetime numeric NOT NULL,
    limbs_number integer,
    quantity integer NOT NULL
);


ALTER TABLE public.creatures OWNER TO freecodecamp;

--
-- Name: creatures_creatures_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.creatures_creatures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.creatures_creatures_id_seq OWNER TO freecodecamp;

--
-- Name: creatures_creatures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.creatures_creatures_id_seq OWNED BY public.creatures.creatures_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric NOT NULL,
    galaxy_types integer,
    distance_from_earth integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric NOT NULL,
    moon_types integer,
    distance_from_earth integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric NOT NULL,
    lanet_typpes integer,
    distance_from_earth integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric NOT NULL,
    star_types integer,
    distance_from_earth integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: creatures creatures_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.creatures ALTER COLUMN creatures_id SET DEFAULT nextval('public.creatures_creatures_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: creatures; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.creatures VALUES (1, 'Human', 'Us', true, true, 100, 4, 8000);
INSERT INTO public.creatures VALUES (2, 'Robot', 'Killers', false, true, 1000, 4, 50000);
INSERT INTO public.creatures VALUES (3, 'Bacteria', 'Killers as well', false, false, 12000, 0, 100000000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'our home galaxy', true, false, 10000, 1, 0);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', 'visible to the naked eye', false, false, 13000, 1, 48);
INSERT INTO public.galaxy VALUES (3, 'Antlia 2', 'Discovered in 2018', false, false, 11000, 2, 130);
INSERT INTO public.galaxy VALUES (4, 'Sagittarius Dwarf', 'Discovered in 1994', false, false, 10000, 3, 20);
INSERT INTO public.galaxy VALUES (5, 'Crater II', 'Discovered in 2016', false, false, 15000, 1, 117);
INSERT INTO public.galaxy VALUES (6, 'Small Magellanic Cloud', 'visible to the naked eye', false, false, 13000, 1, 61);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Our home moon', false, true, 4540, 1, 1, 1);
INSERT INTO public.moon VALUES (2, 'Boo_moon', 'Red', true, true, 5400, 1, 230, 2);
INSERT INTO public.moon VALUES (3, 'Moo_moon', 'Blue', false, true, 120, 2, 250, 3);
INSERT INTO public.moon VALUES (4, 'TugaTuga_moon', 'Populated By Robots', false, true, 7230, 2, 1350, 4);
INSERT INTO public.moon VALUES (5, 'Biio_moon', 'Iron', false, true, 6500, 2, 380, 5);
INSERT INTO public.moon VALUES (6, 'Boomga_moon', 'Square moon', false, false, 2105, 2, 2104, 6);
INSERT INTO public.moon VALUES (7, 'Yipp_moon', 'Hypsters moon', true, true, 9345, 1, 31425, 7);
INSERT INTO public.moon VALUES (8, 'Samsung_moon', 'Dead Planet', false, true, 4154, 2, 24, 8);
INSERT INTO public.moon VALUES (9, 'Jupiter_moon', 'in Solar system', false, true, 4544, 2, 587, 9);
INSERT INTO public.moon VALUES (10, 'Mars_moon', 'Chocolate Planet moon', false, true, 4544, 2, 55, 10);
INSERT INTO public.moon VALUES (11, 'Venus_moon', 'Earths neighbor moon', false, true, 4541, 2, 38, 11);
INSERT INTO public.moon VALUES (12, 'Saturn_moon', 'Planet with rings moon', false, true, 4547, 2, 890, 12);
INSERT INTO public.moon VALUES (13, 'Moon2', 'Our home moon2', false, true, 4540, 1, 2, 1);
INSERT INTO public.moon VALUES (14, 'Boo_moon2', 'Red', true, true, 5400, 1, 232, 2);
INSERT INTO public.moon VALUES (15, 'Moo_moon2', 'Blue', false, true, 120, 2, 252, 3);
INSERT INTO public.moon VALUES (16, 'TugaTuga_moon2', 'Populated By Robots', false, true, 7230, 2, 1352, 4);
INSERT INTO public.moon VALUES (17, 'Biio_moon2', 'Iron', false, true, 6500, 2, 382, 5);
INSERT INTO public.moon VALUES (18, 'Boomga_moon2', 'Square moon', false, false, 2105, 2, 2102, 6);
INSERT INTO public.moon VALUES (19, 'Yipp_moon2', 'Hypsters moon2', true, true, 9345, 1, 31422, 7);
INSERT INTO public.moon VALUES (20, 'Samsung_moon2', 'Dead Planet', false, true, 4154, 2, 242, 8);
INSERT INTO public.moon VALUES (21, 'Jupiter_moon2', 'in Solar system', false, true, 4544, 2, 589, 9);
INSERT INTO public.moon VALUES (22, 'Mars_moon2', 'Chocolate Planet moon2', false, true, 4544, 2, 59, 10);
INSERT INTO public.moon VALUES (23, 'Venus_moon2', 'Earths neighbor moon2', false, true, 4541, 2, 39, 11);
INSERT INTO public.moon VALUES (24, 'Saturn_moon2', 'Planet with rings moon2', false, true, 4547, 2, 892, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Our home planet', true, true, 4540, 1, 0, 5);
INSERT INTO public.planet VALUES (9, 'Jupiter', 'in Solar system', false, true, 4544, 2, 587, 5);
INSERT INTO public.planet VALUES (10, 'Mars', 'Chocolate Planet', false, true, 4544, 2, 55, 5);
INSERT INTO public.planet VALUES (11, 'Venus', 'Earths neighbor', false, true, 4541, 2, 38, 5);
INSERT INTO public.planet VALUES (12, 'Saturn', 'Planet with rings', false, true, 4547, 2, 890, 5);
INSERT INTO public.planet VALUES (3, 'Moo', 'Dirty planet', false, true, 120, 2, 250, 6);
INSERT INTO public.planet VALUES (4, 'TugaTuga', 'Populated By Robots', false, true, 7230, 2, 1350, 6);
INSERT INTO public.planet VALUES (5, 'Biio', 'Iron Planet', false, true, 6500, 2, 380, 6);
INSERT INTO public.planet VALUES (2, 'Boo', 'Aliens live there', true, true, 5400, 1, 230, 7);
INSERT INTO public.planet VALUES (6, 'Boomga', 'Square Planet', false, false, 2105, 2, 2104, 8);
INSERT INTO public.planet VALUES (7, 'Yipp', 'Hypsters Planet', true, true, 9345, 1, 31425, 9);
INSERT INTO public.planet VALUES (8, 'Samsung', 'Dead Planet', false, true, 4154, 2, 24, 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (5, 'Sun', 'Our home star', true, true, 4570, 3, 150, 1);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 'in Alpha Centauri', false, true, 4800, 3, 42465000, 2);
INSERT INTO public.star VALUES (7, 'Rigil Kentaurus', 'in Alpha Centauri', false, true, 4850, 2, 43442000, 3);
INSERT INTO public.star VALUES (8, 'Toliman', 'in Alpha Centauri', false, true, 4860, 2, 43441000, 4);
INSERT INTO public.star VALUES (9, 'Sirius', 'in Alpha Canis Majoris', false, true, 230, 3, 87094000, 5);
INSERT INTO public.star VALUES (10, 'Achird', 'in Eta Cassiopeiae', false, true, 7500, 2, 193314000, 6);


--
-- Name: creatures_creatures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.creatures_creatures_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: creatures creatures_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.creatures
    ADD CONSTRAINT creatures_pkey PRIMARY KEY (creatures_id);


--
-- Name: creatures creatures_quantity_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.creatures
    ADD CONSTRAINT creatures_quantity_key UNIQUE (quantity);


--
-- Name: galaxy galaxy_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_item_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_item_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_item_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

