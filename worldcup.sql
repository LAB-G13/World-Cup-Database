--
-- PostgreSQL database dump
--

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

ALTER TABLE ONLY public.games DROP CONSTRAINT games_winner_id_fkey;
ALTER TABLE ONLY public.games DROP CONSTRAINT games_opponent_id_fkey;
ALTER TABLE ONLY public.teams DROP CONSTRAINT teams_pkey;
ALTER TABLE ONLY public.teams DROP CONSTRAINT teams_name_key;
ALTER TABLE ONLY public.games DROP CONSTRAINT games_pkey;
ALTER TABLE public.teams ALTER COLUMN team_id DROP DEFAULT;
ALTER TABLE public.games ALTER COLUMN game_id DROP DEFAULT;
DROP SEQUENCE public.teams_team_id_seq;
DROP TABLE public.teams;
DROP SEQUENCE public.games_game_id_seq;
DROP TABLE public.games;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1633, 2018, 'Final', 3073, 3074, 4, 2);
INSERT INTO public.games VALUES (1634, 2018, 'Third Place', 3075, 3076, 2, 0);
INSERT INTO public.games VALUES (1635, 2018, 'Semi-Final', 3074, 3076, 2, 1);
INSERT INTO public.games VALUES (1636, 2018, 'Semi-Final', 3073, 3075, 1, 0);
INSERT INTO public.games VALUES (1637, 2018, 'Quarter-Final', 3074, 3082, 3, 2);
INSERT INTO public.games VALUES (1638, 2018, 'Quarter-Final', 3076, 3084, 2, 0);
INSERT INTO public.games VALUES (1639, 2018, 'Quarter-Final', 3075, 3086, 2, 1);
INSERT INTO public.games VALUES (1640, 2018, 'Quarter-Final', 3073, 3088, 2, 0);
INSERT INTO public.games VALUES (1641, 2018, 'Eighth-Final', 3076, 3090, 2, 1);
INSERT INTO public.games VALUES (1642, 2018, 'Eighth-Final', 3084, 3092, 1, 0);
INSERT INTO public.games VALUES (1643, 2018, 'Eighth-Final', 3075, 3094, 3, 2);
INSERT INTO public.games VALUES (1644, 2018, 'Eighth-Final', 3086, 3096, 2, 0);
INSERT INTO public.games VALUES (1645, 2018, 'Eighth-Final', 3074, 3098, 2, 1);
INSERT INTO public.games VALUES (1646, 2018, 'Eighth-Final', 3082, 3100, 2, 1);
INSERT INTO public.games VALUES (1647, 2018, 'Eighth-Final', 3088, 3102, 2, 1);
INSERT INTO public.games VALUES (1648, 2018, 'Eighth-Final', 3073, 3104, 4, 3);
INSERT INTO public.games VALUES (1649, 2014, 'Final', 3105, 3104, 1, 0);
INSERT INTO public.games VALUES (1650, 2014, 'Third Place', 3107, 3086, 3, 0);
INSERT INTO public.games VALUES (1651, 2014, 'Semi-Final', 3104, 3107, 1, 0);
INSERT INTO public.games VALUES (1652, 2014, 'Semi-Final', 3105, 3086, 7, 1);
INSERT INTO public.games VALUES (1653, 2014, 'Quarter-Final', 3107, 3114, 1, 0);
INSERT INTO public.games VALUES (1654, 2014, 'Quarter-Final', 3104, 3075, 1, 0);
INSERT INTO public.games VALUES (1655, 2014, 'Quarter-Final', 3086, 3090, 2, 1);
INSERT INTO public.games VALUES (1656, 2014, 'Quarter-Final', 3105, 3073, 1, 0);
INSERT INTO public.games VALUES (1657, 2014, 'Eighth-Final', 3086, 3122, 2, 1);
INSERT INTO public.games VALUES (1658, 2014, 'Eighth-Final', 3090, 3088, 2, 0);
INSERT INTO public.games VALUES (1659, 2014, 'Eighth-Final', 3073, 3126, 2, 0);
INSERT INTO public.games VALUES (1660, 2014, 'Eighth-Final', 3105, 3128, 2, 1);
INSERT INTO public.games VALUES (1661, 2014, 'Eighth-Final', 3107, 3096, 2, 1);
INSERT INTO public.games VALUES (1662, 2014, 'Eighth-Final', 3114, 3132, 2, 1);
INSERT INTO public.games VALUES (1663, 2014, 'Eighth-Final', 3104, 3092, 1, 0);
INSERT INTO public.games VALUES (1664, 2014, 'Eighth-Final', 3075, 3136, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (3073, 'France');
INSERT INTO public.teams VALUES (3074, 'Croatia');
INSERT INTO public.teams VALUES (3075, 'Belgium');
INSERT INTO public.teams VALUES (3076, 'England');
INSERT INTO public.teams VALUES (3082, 'Russia');
INSERT INTO public.teams VALUES (3084, 'Sweden');
INSERT INTO public.teams VALUES (3086, 'Brazil');
INSERT INTO public.teams VALUES (3088, 'Uruguay');
INSERT INTO public.teams VALUES (3090, 'Colombia');
INSERT INTO public.teams VALUES (3092, 'Switzerland');
INSERT INTO public.teams VALUES (3094, 'Japan');
INSERT INTO public.teams VALUES (3096, 'Mexico');
INSERT INTO public.teams VALUES (3098, 'Denmark');
INSERT INTO public.teams VALUES (3100, 'Spain');
INSERT INTO public.teams VALUES (3102, 'Portugal');
INSERT INTO public.teams VALUES (3104, 'Argentina');
INSERT INTO public.teams VALUES (3105, 'Germany');
INSERT INTO public.teams VALUES (3107, 'Netherlands');
INSERT INTO public.teams VALUES (3114, 'Costa Rica');
INSERT INTO public.teams VALUES (3122, 'Chile');
INSERT INTO public.teams VALUES (3126, 'Nigeria');
INSERT INTO public.teams VALUES (3128, 'Algeria');
INSERT INTO public.teams VALUES (3132, 'Greece');
INSERT INTO public.teams VALUES (3136, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 1664, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 3136, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

