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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(50),
    descr_blackhole text,
    is_active boolean NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_id_blackhole_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_id_blackhole_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_id_blackhole_seq OWNER TO freecodecamp;

--
-- Name: blackhole_id_blackhole_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_id_blackhole_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying NOT NULL,
    size_galaxy integer,
    descr_galaxy text,
    galaxy_activity boolean NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_galaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_galaxy_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    size_moon integer,
    descr_moon text,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    size_planet integer,
    descr_planet text,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    size_star integer,
    weight_star numeric(10,2),
    descr_star text,
    activity_star boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_star_seq OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_star_seq OWNED BY public.star.star_id;


--
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_id_blackhole_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_galaxy_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_moon_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_planet_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_star_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'sagittarius A', NULL, true);
INSERT INTO public.blackhole VALUES (2, 'M87', NULL, true);
INSERT INTO public.blackhole VALUES (3, 'gargantua', NULL, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('milkyway', NULL, NULL, true, 1);
INSERT INTO public.galaxy VALUES ('M31', NULL, NULL, true, 2);
INSERT INTO public.galaxy VALUES ('M33', NULL, NULL, true, 3);
INSERT INTO public.galaxy VALUES ('LMC', NULL, NULL, true, 4);
INSERT INTO public.galaxy VALUES ('M104', NULL, NULL, true, 5);
INSERT INTO public.galaxy VALUES ('M51', NULL, NULL, true, 6);
INSERT INTO public.galaxy VALUES ('M64', NULL, NULL, true, 7);
INSERT INTO public.galaxy VALUES ('M82', NULL, NULL, true, 10);
INSERT INTO public.galaxy VALUES ('M87', NULL, NULL, false, 8);
INSERT INTO public.galaxy VALUES ('IC 1101', NULL, NULL, false, 9);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'phobos', NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'deimos', NULL, NULL, 2);
INSERT INTO public.moon VALUES (4, 'lo', NULL, NULL, 3);
INSERT INTO public.moon VALUES (5, 'europe', NULL, NULL, 3);
INSERT INTO public.moon VALUES (6, 'ganymède', NULL, NULL, 3);
INSERT INTO public.moon VALUES (7, 'callisto', NULL, NULL, 3);
INSERT INTO public.moon VALUES (8, 'titan', NULL, NULL, 5);
INSERT INTO public.moon VALUES (9, 'encelade', NULL, NULL, 5);
INSERT INTO public.moon VALUES (10, 'mimas', NULL, NULL, 5);
INSERT INTO public.moon VALUES (18, 'titania', NULL, NULL, 6);
INSERT INTO public.moon VALUES (19, 'miranda', NULL, NULL, 6);
INSERT INTO public.moon VALUES (20, 'oberon', NULL, NULL, 6);
INSERT INTO public.moon VALUES (21, 'triton', NULL, NULL, 7);
INSERT INTO public.moon VALUES (22, 'amalthée', NULL, NULL, 3);
INSERT INTO public.moon VALUES (23, 'lapétus', NULL, NULL, 5);
INSERT INTO public.moon VALUES (24, 'rhéa', NULL, NULL, 5);
INSERT INTO public.moon VALUES (25, 'ariel', NULL, NULL, 6);
INSERT INTO public.moon VALUES (26, 'umbriel', NULL, NULL, 6);
INSERT INTO public.moon VALUES (27, 'prothée', NULL, NULL, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'mars', NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'jupyter', NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'venus', NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'saturne', NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'uranus', NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1e', NULL, NULL, 10);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1f', NULL, NULL, 10);
INSERT INTO public.planet VALUES (12, 'TRAPPIST_1g', NULL, NULL, 10);
INSERT INTO public.planet VALUES (8, 'proxima centauri b', NULL, NULL, 8);
INSERT INTO public.planet VALUES (9, 'kepler_186f', NULL, NULL, 9);
INSERT INTO public.planet VALUES (7, 'neptune', NULL, NULL, 1);
INSERT INTO public.planet VALUES (13, '55 cancri e', NULL, NULL, 11);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'sirius', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'vega', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'aldébaran', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'V1', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (6, 'M31-RV', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (7, 'B324', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (8, 'proxima centuri', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (9, 'kepler-186', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (10, 'TRAPPIST-1', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (11, '55 cancri A', NULL, NULL, NULL, NULL, 1);


--
-- Name: blackhole_id_blackhole_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_id_blackhole_seq', 3, true);


--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_galaxy_seq', 10, true);


--
-- Name: moon_id_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_moon_seq', 27, true);


--
-- Name: planet_id_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_planet_seq', 13, true);


--
-- Name: star_id_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_star_seq', 11, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);
--
-- PostgreSQL database dump complete
--
--
-- PostgreSQL database dump
--
-- PostgreSQL database dump complete
