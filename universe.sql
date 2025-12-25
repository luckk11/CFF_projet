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

DROP DATABASE IF EXISTS universe;
CREATE DATABASE universe;
ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET default_tablespace = '';
SET default_table_access_method = heap;

--
-- Table: galaxy
--
CREATE TABLE public.galaxy (
    galaxy_id SERIAL PRIMARY KEY,
    name character varying NOT NULL UNIQUE,
    size_galaxy integer NOT NULL,
    descr_galaxy text NOT NULL,
    galaxy_activity boolean NOT NULL
);
ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Table: star
--
CREATE TABLE public.star (
    star_id SERIAL PRIMARY KEY,
    name character varying NOT NULL UNIQUE,
    size_star integer NOT NULL,
    weight_star numeric(10,2) NOT NULL,
    descr_star text NOT NULL,
    activity_star boolean NOT NULL,
    galaxy_id integer NOT NULL REFERENCES public.galaxy(galaxy_id)
);
ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Table: planet
--
CREATE TABLE public.planet (
    planet_id SERIAL PRIMARY KEY,
    name character varying NOT NULL UNIQUE,
    size_planet integer NOT NULL,
    descr_planet text NOT NULL,
    star_id integer NOT NULL REFERENCES public.star(star_id)
);
ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Table: moon
--
CREATE TABLE public.moon (
    moon_id SERIAL PRIMARY KEY,
    name character varying NOT NULL UNIQUE,
    size_moon integer NOT NULL,
    descr_moon text NOT NULL,
    planet_id integer NOT NULL REFERENCES public.planet(planet_id)
);
ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Table: blackhole (La 5ème table requise)
--
CREATE TABLE public.blackhole (
    blackhole_id SERIAL PRIMARY KEY,
    name character varying(50) NOT NULL UNIQUE,
    descr_blackhole text NOT NULL,
    is_active boolean NOT NULL,
    galaxy_id integer REFERENCES public.galaxy(galaxy_id)
);
ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Insertion des données: galaxy
--
INSERT INTO public.galaxy (name, size_galaxy, descr_galaxy, galaxy_activity) VALUES 
('milkyway', 100000, 'Notre galaxie spirale.', true),
('M31', 220000, 'La galaxie d Andromède.', true),
('M33', 60000, 'Galaxie du Triangle.', true),
('LMC', 14000, 'Grand Nuage de Magellan.', true),
('M104', 50000, 'Galaxie du Sombrero.', true),
('M51', 76000, 'Galaxie du Tourbillon.', true),
('M64', 40000, 'Galaxie de l Oeil Noir.', true),
('M82', 37000, 'Galaxie du Cigare.', true),
('M87', 120000, 'Galaxie elliptique géante.', false),
('IC 1101', 4000000, 'Une des plus grandes galaxies.', false);

--
-- Insertion des données: star
--
INSERT INTO public.star (name, size_star, weight_star, descr_star, activity_star, galaxy_id) VALUES 
('sun', 1392700, 1.00, 'Notre étoile naine jaune.', true, 1),
('sirius', 2381000, 2.02, 'Etoile la plus brillante.', true, 1),
('vega', 3300000, 2.10, 'Etoile bleue de la Lyre.', true, 1),
('aldébaran', 61000000, 1.16, 'Géante orange.', true, 1),
('V1', 1000000, 15.00, 'Variable de Hubble.', true, 2),
('M31-RV', 2000000, 20.00, 'Variable rouge.', true, 2),
('B324', 1500000, 10.00, 'Etoile de M33.', true, 3),
('proxima centuri', 200000, 0.12, 'La plus proche.', true, 1),
('kepler-186', 700000, 0.48, 'Naine rouge.', true, 1),
('TRAPPIST-1', 170000, 0.08, 'Etoile à exoplanètes.', true, 1),
('55 cancri A', 1300000, 0.90, 'Etoile binaire.', true, 1);

--
-- Insertion des données: planet
--
INSERT INTO public.planet (name, size_planet, descr_planet, star_id) VALUES 
('earth', 12742, 'Notre planète bleue.', 1),
('mars', 6779, 'La planète rouge.', 1),
('jupyter', 139820, 'Géante gazeuse.', 1),
('venus', 12104, 'Planète très chaude.', 1),
('saturne', 116460, 'Planète aux anneaux.', 1),
('uranus', 50724, 'Géante de glace.', 1),
('neptune', 49244, 'Planète bleue lointaine.', 1),
('proxima centauri b', 13000, 'Exoplanète proche.', 8),
('kepler_186f', 14000, 'Exoplanète zone habitable.', 9),
('TRAPPIST-1e', 11000, 'Exoplanète rocheuse.', 10),
('TRAPPIST-1f', 12000, 'Exoplanète glacée.', 10),
('TRAPPIST_1g', 13000, 'Exoplanète massive.', 10),
('55 cancri e', 25000, 'Planète de diamant.', 11);

--
-- Insertion des données: moon
--
INSERT INTO public.moon (name, size_moon, descr_moon, planet_id) VALUES 
('moon', 3474, 'Satellite de la Terre.', 1),
('phobos', 22, 'Lune de Mars.', 2),
('deimos', 12, 'Lune de Mars.', 2),
('lo', 3643, 'Lune volcanique.', 3),
('europe', 3121, 'Océan sous la glace.', 3),
('ganymède', 5268, 'Plus grande lune.', 3),
('callisto', 4820, 'Lune cratérisée.', 3),
('titan', 5150, 'Atmosphère épaisse.', 5),
('encelade', 504, 'Geysers de glace.', 5),
('mimas', 396, 'Ressemble à l Etoile Noire.', 5),
('titania', 1577, 'Plus grande lune d Uranus.', 6),
('miranda', 471, 'Surface tourmentée.', 6),
('oberon', 1522, 'Lune d Uranus.', 6),
('triton', 2706, 'Lune de Neptune.', 7),
('amalthée', 167, 'Lune de Jupiter.', 3),
('iapétus', 1469, 'Lune bicolore.', 5),
('rhéa', 1527, 'Seconde lune de Saturne.', 5),
('ariel', 1158, 'Lune d Uranus.', 6),
('umbriel', 1169, 'Lune sombre.', 6),
('prothée', 420, 'Lune de Neptune.', 7);

--
-- Insertion des données: blackhole
--
INSERT INTO public.blackhole (name, descr_blackhole, is_active, galaxy_id) VALUES 
('sagittarius A*', 'Trou noir central de la Voie Lactée.', true, 1),
('M87*', 'Premier trou noir photographié.', true, 9),
('gargantua', 'Trou noir de fiction.', false, NULL);



-- PostgreSQL database dump complete
