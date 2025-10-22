--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    distance_from_earth numeric(20,2) NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL,
    is_elliptical boolean
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
    name character varying(30),
    planet_id integer NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL
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
    name character varying(30),
    star_id integer NOT NULL,
    distance_from_earth numeric(20,2) NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL,
    has_life boolean
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
    name character varying(30),
    galaxy_id integer NOT NULL,
    distance_from_earth numeric(20,2) NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL,
    star_types_id integer
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
-- Name: star_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_types (
    star_types_id integer NOT NULL,
    category character varying(1) NOT NULL,
    name character varying(20),
    description text
);


ALTER TABLE public.star_types OWNER TO freecodecamp;

--
-- Name: star_types_star_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_types_star_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_types_star_types_id_seq OWNER TO freecodecamp;

--
-- Name: star_types_star_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_types_star_types_id_seq OWNED BY public.star_types.star_types_id;


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
-- Name: star_types star_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_types ALTER COLUMN star_types_id SET DEFAULT nextval('public.star_types_star_types_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0.00, NULL, 13610, false);
INSERT INTO public.galaxy VALUES (2, 'Hercules A', 2100.00, NULL, 13610, true);
INSERT INTO public.galaxy VALUES (3, 'RANDOM GALAXY', 21000.00, NULL, 14500, true);
INSERT INTO public.galaxy VALUES (4, 'fun GALAXY', 200.00, NULL, 500, true);
INSERT INTO public.galaxy VALUES (5, 'sad GALAXY', 2030.00, NULL, 5030, false);
INSERT INTO public.galaxy VALUES (6, 'cool galaxy', 20304.00, NULL, 51030, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (2, 'Geo', 1, NULL, 25);
INSERT INTO public.moon VALUES (3, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (4, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (5, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (6, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (7, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (8, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (9, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (10, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (11, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (12, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (13, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (14, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (15, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (16, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (17, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (18, 'Geo', 1, NULL, 25);
INSERT INTO public.moon VALUES (19, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (20, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (21, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (22, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (23, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (24, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (25, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (26, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (27, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (28, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (29, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (30, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (31, 'Luna', 1, NULL, 25);
INSERT INTO public.moon VALUES (32, 'Luna', 1, NULL, 25);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 0.00, NULL, 4150, true);
INSERT INTO public.planet VALUES (2, 'Jupiter', 1, 747760000.00, NULL, 4603, false);
INSERT INTO public.planet VALUES (3, 'Uranus', 1, 2787800000.00, NULL, 4503, false);
INSERT INTO public.planet VALUES (4, 'Mercury', 1, 0.00, NULL, 4150, true);
INSERT INTO public.planet VALUES (5, 'Pluto', 1, 747760000.00, NULL, 4603, false);
INSERT INTO public.planet VALUES (6, 'SATURN', 1, 2787800000.00, NULL, 4503, false);
INSERT INTO public.planet VALUES (7, 'Caladan', 1, 0.00, NULL, 4150, true);
INSERT INTO public.planet VALUES (8, 'Arrakis', 1, 747760000.00, NULL, 4603, false);
INSERT INTO public.planet VALUES (9, 'Brobdingnag', 1, 2787800000.00, NULL, 4503, false);
INSERT INTO public.planet VALUES (10, 'Kaitain', 1, 0.00, NULL, 4150, true);
INSERT INTO public.planet VALUES (11, 'Selusa Secundus', 1, 747760000.00, NULL, 4603, false);
INSERT INTO public.planet VALUES (12, 'Giedi Prime', 1, 2787800000.00, NULL, 4503, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'SUN', 1, 149600000.00, NULL, 4600, 5);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 1, 500.00, NULL, 10, 7);
INSERT INTO public.star VALUES (3, 'SIRIUS', 1, 8.00, NULL, 240, 3);
INSERT INTO public.star VALUES (4, 'POLARIS', 1, 445.00, NULL, 45, 4);
INSERT INTO public.star VALUES (5, 'UY Scuti', 1, 5871.00, NULL, 5, 7);
INSERT INTO public.star VALUES (6, 'Arcturis', 1, 36.00, NULL, 7000, 6);


--
-- Data for Name: star_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_types VALUES (1, 'O', NULL, NULL);
INSERT INTO public.star_types VALUES (2, 'B', NULL, NULL);
INSERT INTO public.star_types VALUES (3, 'A', NULL, NULL);
INSERT INTO public.star_types VALUES (4, 'F', NULL, NULL);
INSERT INTO public.star_types VALUES (5, 'G', NULL, NULL);
INSERT INTO public.star_types VALUES (6, 'K', NULL, NULL);
INSERT INTO public.star_types VALUES (7, 'M', NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 32, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: star_types_star_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_types_star_types_id_seq', 7, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star_types star_types_category_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_types
    ADD CONSTRAINT star_types_category_key UNIQUE (category);


--
-- Name: star_types star_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_types
    ADD CONSTRAINT star_types_pkey PRIMARY KEY (star_types_id);


--
-- Name: star_types star_types_star_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_types
    ADD CONSTRAINT star_types_star_types_id_key UNIQUE (star_types_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_star_types_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_types_fkey FOREIGN KEY (star_types_id) REFERENCES public.star_types(star_types_id);


--
-- PostgreSQL database dump complete
--

