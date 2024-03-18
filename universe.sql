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
    name character varying(30),
    count integer,
    years integer,
    size numeric,
    description text,
    active boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    count integer,
    years integer,
    size numeric,
    description text,
    active boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    object_id integer,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    count integer,
    years integer,
    size numeric,
    description text,
    active boolean,
    star_id integer NOT NULL,
    moon_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    count integer,
    years integer,
    size numeric,
    description text,
    active boolean,
    galaxy_id integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 500, 13000, 500, 'Barred spiral galaxy', true, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 400, 13500, 480, 'Spiral galaxy', true, 2);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 300, 13000, 300, 'Unbarred spiral galaxy', true, 3);
INSERT INTO public.galaxy VALUES (4, 'IC 1101', 200, 12500, 600, 'Giant elliptical galaxy', true, 4);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 250, 12000, 400, 'Lenticular galaxy', true, 5);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 350, 11500, 350, 'Elliptical galaxy', true, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', 100, 500, 0.273, 'Earth''s natural satellite', true, 1);
INSERT INTO public.moon VALUES (2, 'Moon 2', 90, 700, 0.032, 'Earth''s natural satellite', true, 2);
INSERT INTO public.moon VALUES (3, 'Moon 3', 80, 300, 0.012, 'Earth''s natural satellite', true, 3);
INSERT INTO public.moon VALUES (4, 'Moon 4', 70, 400, 0.025, 'Earth''s natural satellite', true, 4);
INSERT INTO public.moon VALUES (5, 'Moon 5', 60, 600, 0.041, 'Earth''s natural satellite', true, 5);
INSERT INTO public.moon VALUES (6, 'Moon 6', 50, 200, 0.019, 'Earth''s natural satellite', true, 6);
INSERT INTO public.moon VALUES (7, 'Moon 7', 40, 800, 0.082, 'Earth''s natural satellite', true, 7);
INSERT INTO public.moon VALUES (8, 'Moon 8', 30, 900, 0.094, 'Earth''s natural satellite', true, 8);
INSERT INTO public.moon VALUES (9, 'Moon 9', 20, 1000, 0.112, 'Earth''s natural satellite', true, 9);
INSERT INTO public.moon VALUES (10, 'Moon 10', 10, 200, 0.021, 'Earth''s natural satellite', true, 10);
INSERT INTO public.moon VALUES (11, 'Moon 11', 90, 300, 0.027, 'Earth''s natural satellite', true, 11);
INSERT INTO public.moon VALUES (12, 'Moon 12', 80, 400, 0.033, 'Earth''s natural satellite', true, 11);
INSERT INTO public.moon VALUES (13, 'Moon 13', 70, 500, 0.039, 'Earth''s natural satellite', true, 11);
INSERT INTO public.moon VALUES (14, 'Moon 14', 60, 600, 0.045, 'Earth''s natural satellite', true, 11);
INSERT INTO public.moon VALUES (15, 'Moon 15', 50, 700, 0.051, 'Earth''s natural satellite', true, 11);
INSERT INTO public.moon VALUES (16, 'Moon 16', 40, 800, 0.057, 'Earth''s natural satellite', true, 11);
INSERT INTO public.moon VALUES (17, 'Moon 17', 30, 900, 0.063, 'Earth''s natural satellite', true, 11);
INSERT INTO public.moon VALUES (18, 'Moon 18', 20, 1000, 0.069, 'Earth''s natural satellite', true, 11);
INSERT INTO public.moon VALUES (19, 'Moon 19', 10, 200, 0.075, 'Earth''s natural satellite', true, 11);
INSERT INTO public.moon VALUES (20, 'Moon 20', 100, 300, 0.081, 'Earth''s natural satellite', true, 11);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 1, 'info1', 'lorem impsum');
INSERT INTO public.more_info VALUES (2, 2, 'info2', 'lorem impsum');
INSERT INTO public.more_info VALUES (3, 3, 'info3', 'lorem impsum');
INSERT INTO public.more_info VALUES (4, 4, 'info4', 'lorem impsum');
INSERT INTO public.more_info VALUES (5, 5, 'info5', 'lorem impsum');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 200, 100, 0.056, 'Innermost planet of the Solar System', true, 1, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 180, 300, 0.949, 'Second planet from the Sun', true, 2, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 150, 365, 1, 'Third planet from the Sun', true, 3, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 100, 687, 0.532, 'Fourth planet from the Sun', true, 4, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 80, 4332, 11.209, 'Fifth planet from the Sun', true, 5, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 60, 10759, 9.449, 'Sixth planet from the Sun', true, 6, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 40, 30687, 4.007, 'Seventh planet from the Sun', true, 6, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 30, 60190, 3.883, 'Eighth planet from the Sun', true, 6, 8);
INSERT INTO public.planet VALUES (9, 'Pluto', 20, 90550, 0.1868, 'Dwarf planet in the Solar System', true, 6, 9);
INSERT INTO public.planet VALUES (10, 'Eris', 10, 105600, 0.1824, 'Dwarf planet in the Solar System', true, 6, 10);
INSERT INTO public.planet VALUES (11, 'Haumea', 5, 104600, 0.196, 'Dwarf planet in the Solar System', true, 6, 11);
INSERT INTO public.planet VALUES (12, 'Makemake', 3, 110800, 0.15, 'Dwarf planet in the Solar System', true, 6, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 46000, 109, 'Main-sequence G-type yellow dwarf star', true, 1, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 2, 237000, 2.02, 'Main-sequence A-type star', true, 2, 2);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 1, 468000, 0.1221, 'Red dwarf star', true, 3, 3);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 1, 610000, 1.1, 'Main-sequence G-type star', true, 4, 4);
INSERT INTO public.star VALUES (5, 'Alpha Centauri B', 1, 61000, 0.907, 'Main-sequence K-type star', true, 5, 5);
INSERT INTO public.star VALUES (6, 'Barnard''s Star', 1, 76400, 0.144, 'Red dwarf star', true, 6, 6);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 10, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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
-- Name: star star_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

