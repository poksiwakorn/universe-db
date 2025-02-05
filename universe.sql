--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30) NOT NULL,
    age_in_millions integer,
    distance_from_earth numeric,
    has_life boolean,
    is_spherical boolean
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
-- Name: galaxy_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_info (
    galaxy_info_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text
);


ALTER TABLE public.galaxy_info OWNER TO freecodecamp;

--
-- Name: galaxy_info_galaxy_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_info_galaxy_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_info_galaxy_info_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_info_galaxy_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_info_galaxy_info_id_seq OWNED BY public.galaxy_info.galaxy_info_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions integer,
    distance_from_earth numeric,
    has_life boolean,
    is_spherical boolean,
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
    name character varying(30) NOT NULL,
    age_in_millions integer,
    distance_from_earth numeric,
    has_life boolean,
    is_spherical boolean,
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
    name character varying(30) NOT NULL,
    age_in_millions integer,
    distance_from_earth numeric,
    has_life boolean,
    is_spherical boolean,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_info galaxy_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_info ALTER COLUMN galaxy_info_id SET DEFAULT nextval('public.galaxy_info_galaxy_info_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 100, 31, false, false);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic', 10, 0.2, false, false);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic', 1, 0.16, false, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 8, 2.7, false, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 100, 2.5, false, false);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 4600, 0.027, true, false);


--
-- Data for Name: galaxy_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_info VALUES (1, 1, 'Milky Way Info', 'The Milky Way is part of the Local Group of galaxies and is moving towards the Andromeda Galaxy in a collision that will occur in about 4.5 billion years.');
INSERT INTO public.galaxy_info VALUES (2, 2, 'Andromeda Info', 'Andromeda is on a collision course with the Milky Way, and the two galaxies are expected to merge in the distant future, forming a new galaxy.');
INSERT INTO public.galaxy_info VALUES (3, 3, 'Triangulum Info', 'Triangulum is known for its relatively low surface brightness and is the most distant galaxy visible to the naked eye from Earth under dark skies.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4500, 0.38, false, true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 4500, 0.9, false, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 4500, 0.2, false, false, 4);
INSERT INTO public.moon VALUES (11, 'Triton', 4500, 4.5, false, true, 8);
INSERT INTO public.moon VALUES (12, 'Charon', 4500, 0.2, false, true, 9);
INSERT INTO public.moon VALUES (13, 'Styx', 4500, 0.4, false, false, 9);
INSERT INTO public.moon VALUES (14, 'Nix', 4500, 0.4, false, false, 9);
INSERT INTO public.moon VALUES (15, 'Kerberos', 4500, 0.6, false, false, 9);
INSERT INTO public.moon VALUES (16, 'Hydra', 4500, 0.6, false, false, 9);
INSERT INTO public.moon VALUES (17, 'Kepler-22b Moon', 4500, 0.6, false, true, 10);
INSERT INTO public.moon VALUES (18, 'Proxima b Moon', 4500, 0.4, false, true, 11);
INSERT INTO public.moon VALUES (19, 'Gliese 581g Moon', 4500, 0.2, false, true, 12);
INSERT INTO public.moon VALUES (4, 'Io', 4500, 0.6, false, true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 4500, 0.6, false, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4500, 1, false, true, 5);
INSERT INTO public.moon VALUES (7, 'Calisto', 4500, 1, false, true, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 4500, 1.2, false, true, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4500, 1.3, false, true, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 4500, 1.3, false, true, 6);
INSERT INTO public.moon VALUES (20, 'Lapetus', 4500, 3.5, false, true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4600, 77, false, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 4600, 41, false, true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 4540, 0, true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4600, 225, false, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4600, 778, false, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 4600, 14, false, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 4600, 29, false, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4600, 45, false, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 4600, 59, false, true, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 4600, 640, false, true, 1);
INSERT INTO public.planet VALUES (11, 'Proxima b', 4600, 4.2, false, true, 1);
INSERT INTO public.planet VALUES (12, 'Gliese 581g', 4600, 20, false, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 0, true, true, 1);
INSERT INTO public.star VALUES (2, 'Nu', 100, 0.000620, false, true, 2);
INSERT INTO public.star VALUES (3, 'M33-V1', 8, 2.7, false, true, 3);
INSERT INTO public.star VALUES (4, 'R136a1', 1, 0.16, false, true, 4);
INSERT INTO public.star VALUES (5, 'AV 83', 10, 0.20, false, true, 5);
INSERT INTO public.star VALUES (6, 'M51-ULS-1', 100, 31, false, true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_info_galaxy_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_info_galaxy_info_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy_info galaxy_info_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_info
    ADD CONSTRAINT galaxy_info_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy_info galaxy_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_info
    ADD CONSTRAINT galaxy_info_pkey PRIMARY KEY (galaxy_info_id);


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
-- Name: galaxy_info galaxy_info_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_info
    ADD CONSTRAINT galaxy_info_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- PostgreSQL database dump complete
--

