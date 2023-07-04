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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    u_id integer,
    guesses integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    u_id integer NOT NULL,
    name character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_u_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_u_id_seq OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_u_id_seq OWNED BY public.users.u_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users u_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN u_id SET DEFAULT nextval('public.users_u_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 608);
INSERT INTO public.games VALUES (2, 2, 678);
INSERT INTO public.games VALUES (3, 2, 252);
INSERT INTO public.games VALUES (4, 1, 51);
INSERT INTO public.games VALUES (5, 1, 577);
INSERT INTO public.games VALUES (6, 1, 583);
INSERT INTO public.games VALUES (7, 3, 693);
INSERT INTO public.games VALUES (8, 4, 103);
INSERT INTO public.games VALUES (9, 4, 166);
INSERT INTO public.games VALUES (10, 3, 724);
INSERT INTO public.games VALUES (11, 3, 7);
INSERT INTO public.games VALUES (12, 3, 795);
INSERT INTO public.games VALUES (13, 5, 105);
INSERT INTO public.games VALUES (14, 6, 709);
INSERT INTO public.games VALUES (15, 5, 943);
INSERT INTO public.games VALUES (16, 5, 782);
INSERT INTO public.games VALUES (17, 5, 146);
INSERT INTO public.games VALUES (18, 7, 466);
INSERT INTO public.games VALUES (19, 7, 181);
INSERT INTO public.games VALUES (20, 8, 869);
INSERT INTO public.games VALUES (21, 8, 439);
INSERT INTO public.games VALUES (22, 7, 551);
INSERT INTO public.games VALUES (23, 7, 677);
INSERT INTO public.games VALUES (24, 7, 954);
INSERT INTO public.games VALUES (25, 9, 324);
INSERT INTO public.games VALUES (26, 9, 975);
INSERT INTO public.games VALUES (27, 10, 229);
INSERT INTO public.games VALUES (28, 10, 687);
INSERT INTO public.games VALUES (29, 9, 467);
INSERT INTO public.games VALUES (30, 9, 756);
INSERT INTO public.games VALUES (31, 9, 719);
INSERT INTO public.games VALUES (32, 11, 829);
INSERT INTO public.games VALUES (33, 11, 405);
INSERT INTO public.games VALUES (34, 12, 737);
INSERT INTO public.games VALUES (35, 12, 933);
INSERT INTO public.games VALUES (36, 11, 960);
INSERT INTO public.games VALUES (37, 11, 10);
INSERT INTO public.games VALUES (38, 11, 136);
INSERT INTO public.games VALUES (39, 13, 455);
INSERT INTO public.games VALUES (40, 14, 265);
INSERT INTO public.games VALUES (41, 14, 83);
INSERT INTO public.games VALUES (42, 13, 446);
INSERT INTO public.games VALUES (43, 13, 210);
INSERT INTO public.games VALUES (44, 13, 872);
INSERT INTO public.games VALUES (45, 15, 249);
INSERT INTO public.games VALUES (46, 15, 299);
INSERT INTO public.games VALUES (47, 16, 130);
INSERT INTO public.games VALUES (48, 16, 525);
INSERT INTO public.games VALUES (49, 15, 63);
INSERT INTO public.games VALUES (50, 15, 924);
INSERT INTO public.games VALUES (51, 15, 618);
INSERT INTO public.games VALUES (52, 17, 820);
INSERT INTO public.games VALUES (53, 18, 372);
INSERT INTO public.games VALUES (54, 18, 656);
INSERT INTO public.games VALUES (55, 17, 363);
INSERT INTO public.games VALUES (56, 17, 62);
INSERT INTO public.games VALUES (57, 17, 332);
INSERT INTO public.games VALUES (58, 19, 188);
INSERT INTO public.games VALUES (59, 20, 230);
INSERT INTO public.games VALUES (60, 20, 395);
INSERT INTO public.games VALUES (61, 19, 444);
INSERT INTO public.games VALUES (62, 19, 167);
INSERT INTO public.games VALUES (63, 19, 389);
INSERT INTO public.games VALUES (64, 21, 62);
INSERT INTO public.games VALUES (65, 22, 683);
INSERT INTO public.games VALUES (66, 22, 637);
INSERT INTO public.games VALUES (67, 21, 500);
INSERT INTO public.games VALUES (68, 21, 474);
INSERT INTO public.games VALUES (69, 21, 738);
INSERT INTO public.games VALUES (70, 23, 989);
INSERT INTO public.games VALUES (71, 24, 771);
INSERT INTO public.games VALUES (72, 24, 484);
INSERT INTO public.games VALUES (73, 23, 212);
INSERT INTO public.games VALUES (74, 23, 62);
INSERT INTO public.games VALUES (75, 23, 223);
INSERT INTO public.games VALUES (76, 25, 14);
INSERT INTO public.games VALUES (77, 25, 7);
INSERT INTO public.games VALUES (78, 26, 5);
INSERT INTO public.games VALUES (79, 26, 875);
INSERT INTO public.games VALUES (80, 27, 297);
INSERT INTO public.games VALUES (81, 27, 149);
INSERT INTO public.games VALUES (82, 26, 142);
INSERT INTO public.games VALUES (83, 26, 966);
INSERT INTO public.games VALUES (84, 26, 109);
INSERT INTO public.games VALUES (85, 28, 730);
INSERT INTO public.games VALUES (86, 29, 553);
INSERT INTO public.games VALUES (87, 29, 519);
INSERT INTO public.games VALUES (88, 28, 703);
INSERT INTO public.games VALUES (89, 28, 743);
INSERT INTO public.games VALUES (90, 28, 515);
INSERT INTO public.games VALUES (91, 30, 496);
INSERT INTO public.games VALUES (92, 30, 889);
INSERT INTO public.games VALUES (93, 31, 180);
INSERT INTO public.games VALUES (94, 31, 466);
INSERT INTO public.games VALUES (95, 30, 241);
INSERT INTO public.games VALUES (96, 30, 134);
INSERT INTO public.games VALUES (97, 30, 286);
INSERT INTO public.games VALUES (98, 32, 877);
INSERT INTO public.games VALUES (99, 32, 45);
INSERT INTO public.games VALUES (100, 33, 898);
INSERT INTO public.games VALUES (101, 33, 159);
INSERT INTO public.games VALUES (102, 32, 529);
INSERT INTO public.games VALUES (103, 32, 82);
INSERT INTO public.games VALUES (104, 32, 938);
INSERT INTO public.games VALUES (105, 34, 906);
INSERT INTO public.games VALUES (106, 34, 405);
INSERT INTO public.games VALUES (107, 35, 167);
INSERT INTO public.games VALUES (108, 35, 323);
INSERT INTO public.games VALUES (109, 34, 634);
INSERT INTO public.games VALUES (110, 34, 122);
INSERT INTO public.games VALUES (111, 34, 65);
INSERT INTO public.games VALUES (112, 36, 892);
INSERT INTO public.games VALUES (113, 36, 855);
INSERT INTO public.games VALUES (114, 37, 557);
INSERT INTO public.games VALUES (115, 37, 946);
INSERT INTO public.games VALUES (116, 36, 904);
INSERT INTO public.games VALUES (117, 36, 37);
INSERT INTO public.games VALUES (118, 36, 777);
INSERT INTO public.games VALUES (119, 39, 682);
INSERT INTO public.games VALUES (120, 39, 992);
INSERT INTO public.games VALUES (121, 40, 970);
INSERT INTO public.games VALUES (122, 40, 433);
INSERT INTO public.games VALUES (123, 39, 834);
INSERT INTO public.games VALUES (124, 39, 610);
INSERT INTO public.games VALUES (125, 39, 905);
INSERT INTO public.games VALUES (126, 41, 842);
INSERT INTO public.games VALUES (127, 41, 243);
INSERT INTO public.games VALUES (128, 42, 180);
INSERT INTO public.games VALUES (129, 42, 254);
INSERT INTO public.games VALUES (130, 41, 253);
INSERT INTO public.games VALUES (131, 41, 535);
INSERT INTO public.games VALUES (132, 41, 574);
INSERT INTO public.games VALUES (133, 43, 87);
INSERT INTO public.games VALUES (134, 44, 194);
INSERT INTO public.games VALUES (135, 44, 681);
INSERT INTO public.games VALUES (136, 43, 584);
INSERT INTO public.games VALUES (137, 43, 582);
INSERT INTO public.games VALUES (138, 43, 496);
INSERT INTO public.games VALUES (139, 45, 58);
INSERT INTO public.games VALUES (140, 45, 488);
INSERT INTO public.games VALUES (141, 46, 521);
INSERT INTO public.games VALUES (142, 46, 871);
INSERT INTO public.games VALUES (143, 45, 893);
INSERT INTO public.games VALUES (144, 45, 129);
INSERT INTO public.games VALUES (145, 45, 427);
INSERT INTO public.games VALUES (146, 47, 58);
INSERT INTO public.games VALUES (147, 47, 370);
INSERT INTO public.games VALUES (148, 48, 901);
INSERT INTO public.games VALUES (149, 48, 474);
INSERT INTO public.games VALUES (150, 47, 736);
INSERT INTO public.games VALUES (151, 47, 111);
INSERT INTO public.games VALUES (152, 47, 898);
INSERT INTO public.games VALUES (153, 49, 752);
INSERT INTO public.games VALUES (154, 50, 981);
INSERT INTO public.games VALUES (155, 50, 859);
INSERT INTO public.games VALUES (156, 49, 529);
INSERT INTO public.games VALUES (157, 49, 616);
INSERT INTO public.games VALUES (158, 49, 950);
INSERT INTO public.games VALUES (159, 51, 758);
INSERT INTO public.games VALUES (160, 51, 134);
INSERT INTO public.games VALUES (161, 52, 783);
INSERT INTO public.games VALUES (162, 52, 61);
INSERT INTO public.games VALUES (163, 51, 42);
INSERT INTO public.games VALUES (164, 51, 890);
INSERT INTO public.games VALUES (165, 51, 924);
INSERT INTO public.games VALUES (166, 53, 15);
INSERT INTO public.games VALUES (167, 54, 781);
INSERT INTO public.games VALUES (168, 54, 906);
INSERT INTO public.games VALUES (169, 53, 734);
INSERT INTO public.games VALUES (170, 53, 746);
INSERT INTO public.games VALUES (171, 53, 179);
INSERT INTO public.games VALUES (172, 55, 768);
INSERT INTO public.games VALUES (173, 55, 283);
INSERT INTO public.games VALUES (174, 56, 639);
INSERT INTO public.games VALUES (175, 56, 588);
INSERT INTO public.games VALUES (176, 55, 79);
INSERT INTO public.games VALUES (177, 55, 499);
INSERT INTO public.games VALUES (178, 55, 319);
INSERT INTO public.games VALUES (179, 57, 611);
INSERT INTO public.games VALUES (180, 57, 22);
INSERT INTO public.games VALUES (181, 58, 183);
INSERT INTO public.games VALUES (182, 58, 562);
INSERT INTO public.games VALUES (183, 57, 520);
INSERT INTO public.games VALUES (184, 57, 430);
INSERT INTO public.games VALUES (185, 57, 516);
INSERT INTO public.games VALUES (186, 59, 723);
INSERT INTO public.games VALUES (187, 60, 652);
INSERT INTO public.games VALUES (188, 60, 678);
INSERT INTO public.games VALUES (189, 59, 586);
INSERT INTO public.games VALUES (190, 59, 585);
INSERT INTO public.games VALUES (191, 59, 510);
INSERT INTO public.games VALUES (192, 61, 416);
INSERT INTO public.games VALUES (193, 61, 429);
INSERT INTO public.games VALUES (194, 62, 914);
INSERT INTO public.games VALUES (195, 62, 379);
INSERT INTO public.games VALUES (196, 61, 443);
INSERT INTO public.games VALUES (197, 61, 382);
INSERT INTO public.games VALUES (198, 61, 209);
INSERT INTO public.games VALUES (199, 63, 704);
INSERT INTO public.games VALUES (200, 64, 304);
INSERT INTO public.games VALUES (201, 64, 404);
INSERT INTO public.games VALUES (202, 63, 231);
INSERT INTO public.games VALUES (203, 63, 758);
INSERT INTO public.games VALUES (204, 63, 601);
INSERT INTO public.games VALUES (205, 65, 441);
INSERT INTO public.games VALUES (206, 66, 463);
INSERT INTO public.games VALUES (207, 65, 688);
INSERT INTO public.games VALUES (208, 65, 399);
INSERT INTO public.games VALUES (209, 65, 911);
INSERT INTO public.games VALUES (210, 67, 515);
INSERT INTO public.games VALUES (211, 67, 902);
INSERT INTO public.games VALUES (212, 68, 136);
INSERT INTO public.games VALUES (213, 68, 593);
INSERT INTO public.games VALUES (214, 67, 506);
INSERT INTO public.games VALUES (215, 67, 479);
INSERT INTO public.games VALUES (216, 67, 349);
INSERT INTO public.games VALUES (217, 69, 765);
INSERT INTO public.games VALUES (218, 69, 105);
INSERT INTO public.games VALUES (219, 70, 444);
INSERT INTO public.games VALUES (220, 70, 738);
INSERT INTO public.games VALUES (221, 69, 916);
INSERT INTO public.games VALUES (222, 69, 44);
INSERT INTO public.games VALUES (223, 69, 956);
INSERT INTO public.games VALUES (224, 71, 186);
INSERT INTO public.games VALUES (225, 72, 715);
INSERT INTO public.games VALUES (226, 72, 324);
INSERT INTO public.games VALUES (227, 71, 849);
INSERT INTO public.games VALUES (228, 71, 692);
INSERT INTO public.games VALUES (229, 71, 829);
INSERT INTO public.games VALUES (230, 73, 514);
INSERT INTO public.games VALUES (231, 73, 658);
INSERT INTO public.games VALUES (232, 74, 776);
INSERT INTO public.games VALUES (233, 74, 767);
INSERT INTO public.games VALUES (234, 73, 19);
INSERT INTO public.games VALUES (235, 73, 450);
INSERT INTO public.games VALUES (236, 73, 196);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1688508522416');
INSERT INTO public.users VALUES (2, 'user_1688508522415');
INSERT INTO public.users VALUES (3, 'user_1688508545022');
INSERT INTO public.users VALUES (4, 'user_1688508545021');
INSERT INTO public.users VALUES (5, 'user_1688508564676');
INSERT INTO public.users VALUES (6, 'user_1688508564675');
INSERT INTO public.users VALUES (7, 'user_1688508605446');
INSERT INTO public.users VALUES (8, 'user_1688508605445');
INSERT INTO public.users VALUES (9, 'user_1688508651505');
INSERT INTO public.users VALUES (10, 'user_1688508651504');
INSERT INTO public.users VALUES (11, 'user_1688508670536');
INSERT INTO public.users VALUES (12, 'user_1688508670535');
INSERT INTO public.users VALUES (13, 'user_1688508776700');
INSERT INTO public.users VALUES (14, 'user_1688508776699');
INSERT INTO public.users VALUES (15, 'user_1688508786122');
INSERT INTO public.users VALUES (16, 'user_1688508786121');
INSERT INTO public.users VALUES (17, 'user_1688508898869');
INSERT INTO public.users VALUES (18, 'user_1688508898868');
INSERT INTO public.users VALUES (19, 'user_1688508911289');
INSERT INTO public.users VALUES (20, 'user_1688508911288');
INSERT INTO public.users VALUES (21, 'user_1688508919965');
INSERT INTO public.users VALUES (22, 'user_1688508919964');
INSERT INTO public.users VALUES (23, 'user_1688508965688');
INSERT INTO public.users VALUES (24, 'user_1688508965687');
INSERT INTO public.users VALUES (25, 'J');
INSERT INTO public.users VALUES (26, 'user_1688509111544');
INSERT INTO public.users VALUES (27, 'user_1688509111543');
INSERT INTO public.users VALUES (28, 'user_1688509127356');
INSERT INTO public.users VALUES (29, 'user_1688509127355');
INSERT INTO public.users VALUES (30, 'user_1688509142807');
INSERT INTO public.users VALUES (31, 'user_1688509142806');
INSERT INTO public.users VALUES (32, 'user_1688509190156');
INSERT INTO public.users VALUES (33, 'user_1688509190155');
INSERT INTO public.users VALUES (34, 'user_1688509197891');
INSERT INTO public.users VALUES (35, 'user_1688509197890');
INSERT INTO public.users VALUES (36, 'user_1688509201775');
INSERT INTO public.users VALUES (37, 'user_1688509201774');
INSERT INTO public.users VALUES (38, 'c');
INSERT INTO public.users VALUES (39, 'user_1688509257351');
INSERT INTO public.users VALUES (40, 'user_1688509257350');
INSERT INTO public.users VALUES (41, 'user_1688509281122');
INSERT INTO public.users VALUES (42, 'user_1688509281121');
INSERT INTO public.users VALUES (43, 'user_1688509312805');
INSERT INTO public.users VALUES (44, 'user_1688509312804');
INSERT INTO public.users VALUES (45, 'user_1688509348184');
INSERT INTO public.users VALUES (46, 'user_1688509348183');
INSERT INTO public.users VALUES (47, 'user_1688509671081');
INSERT INTO public.users VALUES (48, 'user_1688509671080');
INSERT INTO public.users VALUES (49, 'user_1688509905586');
INSERT INTO public.users VALUES (50, 'user_1688509905585');
INSERT INTO public.users VALUES (51, 'user_1688509985862');
INSERT INTO public.users VALUES (52, 'user_1688509985861');
INSERT INTO public.users VALUES (53, 'user_1688509998572');
INSERT INTO public.users VALUES (54, 'user_1688509998571');
INSERT INTO public.users VALUES (55, 'user_1688510349654');
INSERT INTO public.users VALUES (56, 'user_1688510349653');
INSERT INTO public.users VALUES (57, 'user_1688510541172');
INSERT INTO public.users VALUES (58, 'user_1688510541171');
INSERT INTO public.users VALUES (59, 'user_1688510657263');
INSERT INTO public.users VALUES (60, 'user_1688510657262');
INSERT INTO public.users VALUES (61, 'user_1688510989727');
INSERT INTO public.users VALUES (62, 'user_1688510989726');
INSERT INTO public.users VALUES (63, 'user_1688511142596');
INSERT INTO public.users VALUES (64, 'user_1688511142595');
INSERT INTO public.users VALUES (65, 'user_1688511235472');
INSERT INTO public.users VALUES (66, 'user_1688511235471');
INSERT INTO public.users VALUES (67, 'user_1688511251953');
INSERT INTO public.users VALUES (68, 'user_1688511251952');
INSERT INTO public.users VALUES (69, 'user_1688511263961');
INSERT INTO public.users VALUES (70, 'user_1688511263960');
INSERT INTO public.users VALUES (71, 'user_1688511270958');
INSERT INTO public.users VALUES (72, 'user_1688511270957');
INSERT INTO public.users VALUES (73, 'user_1688511280785');
INSERT INTO public.users VALUES (74, 'user_1688511280784');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 236, true);


--
-- Name: users_u_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_u_id_seq', 74, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (u_id);


--
-- Name: games games_u_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_u_id_fkey FOREIGN KEY (u_id) REFERENCES public.users(u_id);


--
-- PostgreSQL database dump complete
--

