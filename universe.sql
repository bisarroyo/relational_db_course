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
-- Name: black_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_holes (
    black_holes_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.black_holes OWNER TO freecodecamp;

--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_black_hole_id_seq OWNED BY public.black_holes.black_holes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    shape character varying(30),
    number_of_stars numeric(15,2),
    diameter numeric(10,2)
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
    name character varying(50) NOT NULL,
    description text,
    diameter numeric(10,2),
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
    name character varying(50) NOT NULL,
    diameter numeric(10,2),
    temperature integer,
    distance_from_sun numeric(10,2),
    distance_from_earth numeric(10,2),
    has_life boolean,
    is_gas_planet boolean,
    has_rings boolean,
    star_id integer,
    galaxy_id integer
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
    name character varying(50) NOT NULL,
    description text,
    color character varying(30),
    age_in_million_of_years integer,
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
-- Name: black_holes black_holes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes ALTER COLUMN black_holes_id SET DEFAULT nextval('public.black_holes_black_hole_id_seq'::regclass);


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
-- Data for Name: black_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_holes VALUES (1, 'Sagittarius A*', 1);
INSERT INTO public.black_holes VALUES (2, 'M87 Black Hole', 2);
INSERT INTO public.black_holes VALUES (3, 'Ton 618', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy, containing the Solar System.', 'Spiral', 100000000000.00, 105700.00);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Closest spiral galaxy to the Milky Way.', 'Spiral', 1000000000000.00, 220000.00);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Third-largest galaxy in the Local Group.', 'Spiral', 40000000000.00, 60000.00);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'A giant elliptical galaxy with a supermassive black hole.', 'Elliptical', 100000000000.00, 120000.00);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', 'A classic spiral galaxy interacting with a smaller companion.', 'Spiral', 100000000000.00, 76000.00);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'A satellite galaxy of the Milky Way.', 'Irregular', 30000000000.00, 14000.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'The Moon of Earth.', 3474.00, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'The larger of Mars'' two moons.', 22.40, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'The smaller of Mars'' two moons.', 12.40, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'A volcanic moon of Jupiter.', 3643.00, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'A moon of Jupiter with a subsurface ocean.', 3121.60, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'The largest moon in the solar system.', 5268.00, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'A large moon of Jupiter with a heavily cratered surface.', 4820.00, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'A moon of Saturn with a dense atmosphere.', 5150.00, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 'The second-largest moon of Saturn.', 1528.00, 6);
INSERT INTO public.moon VALUES (10, 'Titania', 'Largest moon of Uranus.', 1578.00, 7);
INSERT INTO public.moon VALUES (11, 'Oberon', 'The second-largest moon of Uranus.', 1523.00, 7);
INSERT INTO public.moon VALUES (12, 'Miranda', 'A moon of Uranus with a highly irregular surface.', 471.60, 7);
INSERT INTO public.moon VALUES (13, 'Ariel', 'One of Uranus'' largest moons.', 1158.00, 7);
INSERT INTO public.moon VALUES (14, 'Iapetus', 'A moon of Saturn known for its two-tone coloration.', 1469.00, 6);
INSERT INTO public.moon VALUES (15, 'Enceladus', 'A moon of Saturn with geysers of water vapor.', 504.00, 6);
INSERT INTO public.moon VALUES (16, 'Mimas', 'A small moon of Saturn, known for its large impact crater.', 396.00, 6);
INSERT INTO public.moon VALUES (17, 'Enceladus B', 'A submoon of Enceladus.', 470.00, 6);
INSERT INTO public.moon VALUES (18, 'Triton', 'A moon of Neptune with a retrograde orbit.', 2706.00, 8);
INSERT INTO public.moon VALUES (19, 'Charon', 'The largest moon of Pluto.', 1212.00, 9);
INSERT INTO public.moon VALUES (20, 'Nereid', 'A moon of Neptune with an irregular orbit.', 340.00, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4879.00, 167, 57.91, 91.69, false, false, false, 1, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 12104.00, 464, 108.20, 41.40, false, false, false, 1, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 12742.00, 15, 149.60, 0.00, true, false, false, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 6779.00, -65, 227.94, 78.34, false, false, false, 1, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 139820.00, -110, 778.50, 628.70, false, true, true, 1, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 116460.00, -140, 1434.00, 1277.40, false, true, true, 1, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 50724.00, -195, 2871.00, 2721.30, false, true, true, 1, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 49244.00, -200, 4495.00, 4351.20, false, true, true, 1, 1);
INSERT INTO public.planet VALUES (9, 'Proxima b', 12000.00, -39, 0.05, 4.24, true, false, false, 2, 1);
INSERT INTO public.planet VALUES (10, 'Andromeda 1', 15000.00, -80, NULL, 2500000.00, false, false, false, 4, 2);
INSERT INTO public.planet VALUES (11, 'Messier 87b', 20000.00, -120, NULL, 53000000.00, false, true, false, 5, 4);
INSERT INTO public.planet VALUES (12, 'LMC Exoplanet', 18000.00, -50, NULL, 163000.00, false, false, false, 6, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of our Solar System.', 'Yellow-White', 4600, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'The brightest star in the night sky.', 'White', 300, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'A red supergiant in the Orion constellation.', 'Red', 8000, 1);
INSERT INTO public.star VALUES (4, 'Andromeda A', 'A massive star in the Andromeda Galaxy.', 'Blue', 500, 2);
INSERT INTO public.star VALUES (5, 'Messier 87 Star', 'A bright star in the elliptical galaxy M87.', 'Yellow', 9000, 4);
INSERT INTO public.star VALUES (6, 'LMC R136a1', 'One of the most massive known stars.', 'Blue', 1000, 6);


--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


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
-- Name: black_holes black_holes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_name_key UNIQUE (name);


--
-- Name: black_holes black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_holes_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: black_holes black_holes_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

