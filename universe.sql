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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    description text,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    radius_in_km numeric(5,2),
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    radius_in_km numeric(5,2),
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: reference; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.reference (
    reference_id integer NOT NULL,
    name character varying(20) NOT NULL,
    object_type character varying(20)
);


ALTER TABLE public.reference OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    radius_in_km numeric(5,2),
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, name, age_in_millions_of_years, distance_from_earth, description, has_life, is_spherical) FROM stdin;
1	Milky Way	88888	0	Galaxy of Earth	t	f
2	Pseudo	75757	888758	made up	t	f
3	Pseudo2	758583	83759379	fake	t	f
4	Pseudo3	75843847	759758	none	f	f
5	Pseudo4	75643889	759837	none	t	f
6	Pseudo5	749723	809183	none	t	f
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, name, age_in_millions_of_years, distance_from_earth, radius_in_km, description, has_life, is_spherical, planet_id) FROM stdin;
13	Moon13	15789	9287589	\N	none	t	t	1
14	Moon14	15789	9287589	\N	none	t	t	2
15	Moon15	15789	9287589	\N	none	t	t	3
16	Moon16	15789	9287589	\N	none	t	t	4
17	Moon17	15789	9287589	\N	none	t	t	5
18	Moon18	15789	9287589	\N	none	t	t	6
19	Moon19	15789	9287589	\N	none	t	t	7
20	Moon20	15789	9287589	\N	none	t	t	8
1	Moon1	15789	9287589	\N	none	t	t	1
2	Moon2	15789	9287589	\N	none	t	t	2
3	Moon3	15789	9287589	\N	none	t	t	3
4	Moon4	15789	9287589	\N	none	t	t	4
5	Moon5	15789	9287589	\N	none	t	t	5
6	Moon6	15789	9287589	\N	none	t	t	6
7	Moon7	15789	9287589	\N	none	t	t	7
8	Moon8	15789	9287589	\N	none	t	t	8
9	Moon9	15789	9287589	\N	none	t	t	9
10	Moon10	15789	9287589	\N	none	t	t	10
11	Moon11	15789	9287589	\N	none	t	t	11
12	Moon12	15789	9287589	\N	none	t	t	12
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, age_in_millions_of_years, distance_from_earth, radius_in_km, description, has_life, is_spherical, star_id) FROM stdin;
1	Planet1	245786	4987	\N	none	t	t	1
2	Planet2	324897	98796	\N	none	t	t	1
3	Planet3	324897	98796	\N	none	t	t	2
4	Planet4	324897	98796	\N	none	t	t	2
5	Planet5	324897	98796	\N	none	t	t	3
6	Planet6	324897	98796	\N	none	t	t	3
7	Planet7	324897	98796	\N	none	t	t	4
8	Planet8	324897	98796	\N	none	t	t	4
9	Planet9	324897	98796	\N	none	t	t	5
10	Planet10	324897	98796	\N	none	t	t	5
11	Planet11	324897	98796	\N	none	t	t	6
12	Planet12	324897	98796	\N	none	t	t	6
\.


--
-- Data for Name: reference; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.reference (reference_id, name, object_type) FROM stdin;
1	fake1	asteroid
2	fake2	comet
3	fake3	Shooting star
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, age_in_millions_of_years, distance_from_earth, radius_in_km, description, has_life, is_spherical, galaxy_id) FROM stdin;
1	Sun	749723	809183	\N	none	t	t	1
2	Star1	245786	4987	\N	none	t	t	1
3	Star2	245786	4987	\N	none	t	t	1
4	Star3	245786	4987	\N	none	t	t	1
5	Star4	245786	4987	\N	none	t	t	1
6	Star5	245786	4987	\N	none	t	t	1
\.


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: reference reference_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.reference
    ADD CONSTRAINT reference_id_key UNIQUE (reference_id);


--
-- Name: reference reference_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.reference
    ADD CONSTRAINT reference_name_key UNIQUE (name);


--
-- Name: reference reference_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.reference
    ADD CONSTRAINT reference_pkey PRIMARY KEY (reference_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


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

