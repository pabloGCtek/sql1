--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-03 17:14:25

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
-- TOC entry 219 (class 1259 OID 16447)
-- Name: autobuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.autobuses (
    id_bus integer NOT NULL,
    a_fabricacion integer NOT NULL,
    marca character varying NOT NULL,
    modelo character varying NOT NULL
);


ALTER TABLE public.autobuses OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16446)
-- Name: autobuses_id_bus_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.autobuses_id_bus_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.autobuses_id_bus_seq OWNER TO postgres;

--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 218
-- Name: autobuses_id_bus_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.autobuses_id_bus_seq OWNED BY public.autobuses.id_bus;


--
-- TOC entry 215 (class 1259 OID 16433)
-- Name: conductores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conductores (
    id_conductor integer NOT NULL,
    nombre character varying(60) NOT NULL,
    edad integer NOT NULL
);


ALTER TABLE public.conductores OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16432)
-- Name: conductores_id_conductor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.conductores_id_conductor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conductores_id_conductor_seq OWNER TO postgres;

--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 214
-- Name: conductores_id_conductor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.conductores_id_conductor_seq OWNED BY public.conductores.id_conductor;


--
-- TOC entry 217 (class 1259 OID 16440)
-- Name: lugares; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lugares (
    id_lugar integer NOT NULL,
    nombre character varying(60) NOT NULL
);


ALTER TABLE public.lugares OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16439)
-- Name: lugares_id_lugar_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lugares_id_lugar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lugares_id_lugar_seq OWNER TO postgres;

--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 216
-- Name: lugares_id_lugar_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lugares_id_lugar_seq OWNED BY public.lugares.id_lugar;


--
-- TOC entry 224 (class 1259 OID 16457)
-- Name: visitas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.visitas (
    id_ruta integer NOT NULL,
    id_lugar integer NOT NULL,
    id_bus integer NOT NULL,
    id_conductor integer NOT NULL,
    fecha date NOT NULL
);


ALTER TABLE public.visitas OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16455)
-- Name: visitas_id_bus_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.visitas_id_bus_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visitas_id_bus_seq OWNER TO postgres;

--
-- TOC entry 3370 (class 0 OID 0)
-- Dependencies: 222
-- Name: visitas_id_bus_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.visitas_id_bus_seq OWNED BY public.visitas.id_bus;


--
-- TOC entry 223 (class 1259 OID 16456)
-- Name: visitas_id_conductor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.visitas_id_conductor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visitas_id_conductor_seq OWNER TO postgres;

--
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 223
-- Name: visitas_id_conductor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.visitas_id_conductor_seq OWNED BY public.visitas.id_conductor;


--
-- TOC entry 221 (class 1259 OID 16454)
-- Name: visitas_id_lugar_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.visitas_id_lugar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visitas_id_lugar_seq OWNER TO postgres;

--
-- TOC entry 3372 (class 0 OID 0)
-- Dependencies: 221
-- Name: visitas_id_lugar_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.visitas_id_lugar_seq OWNED BY public.visitas.id_lugar;


--
-- TOC entry 220 (class 1259 OID 16453)
-- Name: visitas_id_ruta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.visitas_id_ruta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visitas_id_ruta_seq OWNER TO postgres;

--
-- TOC entry 3373 (class 0 OID 0)
-- Dependencies: 220
-- Name: visitas_id_ruta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.visitas_id_ruta_seq OWNED BY public.visitas.id_ruta;


--
-- TOC entry 3193 (class 2604 OID 16450)
-- Name: autobuses id_bus; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.autobuses ALTER COLUMN id_bus SET DEFAULT nextval('public.autobuses_id_bus_seq'::regclass);


--
-- TOC entry 3191 (class 2604 OID 16436)
-- Name: conductores id_conductor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conductores ALTER COLUMN id_conductor SET DEFAULT nextval('public.conductores_id_conductor_seq'::regclass);


--
-- TOC entry 3192 (class 2604 OID 16443)
-- Name: lugares id_lugar; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lugares ALTER COLUMN id_lugar SET DEFAULT nextval('public.lugares_id_lugar_seq'::regclass);


--
-- TOC entry 3194 (class 2604 OID 16460)
-- Name: visitas id_ruta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitas ALTER COLUMN id_ruta SET DEFAULT nextval('public.visitas_id_ruta_seq'::regclass);


--
-- TOC entry 3195 (class 2604 OID 16461)
-- Name: visitas id_lugar; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitas ALTER COLUMN id_lugar SET DEFAULT nextval('public.visitas_id_lugar_seq'::regclass);


--
-- TOC entry 3196 (class 2604 OID 16462)
-- Name: visitas id_bus; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitas ALTER COLUMN id_bus SET DEFAULT nextval('public.visitas_id_bus_seq'::regclass);


--
-- TOC entry 3197 (class 2604 OID 16463)
-- Name: visitas id_conductor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitas ALTER COLUMN id_conductor SET DEFAULT nextval('public.visitas_id_conductor_seq'::regclass);


--
-- TOC entry 3356 (class 0 OID 16447)
-- Dependencies: 219
-- Data for Name: autobuses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.autobuses (id_bus, a_fabricacion, marca, modelo) VALUES (1, 2007, 'Mercedes', 'Citaro');
INSERT INTO public.autobuses (id_bus, a_fabricacion, marca, modelo) VALUES (2, 2002, 'Scania', 'L');


--
-- TOC entry 3352 (class 0 OID 16433)
-- Dependencies: 215
-- Data for Name: conductores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.conductores (id_conductor, nombre, edad) VALUES (1, 'pepe', 38);
INSERT INTO public.conductores (id_conductor, nombre, edad) VALUES (2, 'Juan', 60);
INSERT INTO public.conductores (id_conductor, nombre, edad) VALUES (3, 'Sara', 30);


--
-- TOC entry 3354 (class 0 OID 16440)
-- Dependencies: 217
-- Data for Name: lugares; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.lugares (id_lugar, nombre) VALUES (1, 'Soria');
INSERT INTO public.lugares (id_lugar, nombre) VALUES (2, 'Madrid');
INSERT INTO public.lugares (id_lugar, nombre) VALUES (3, 'Tomelloso');


--
-- TOC entry 3361 (class 0 OID 16457)
-- Dependencies: 224
-- Data for Name: visitas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.visitas (id_ruta, id_lugar, id_bus, id_conductor, fecha) VALUES (1, 2, 1, 2, '2021-12-12');


--
-- TOC entry 3374 (class 0 OID 0)
-- Dependencies: 218
-- Name: autobuses_id_bus_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.autobuses_id_bus_seq', 1, false);


--
-- TOC entry 3375 (class 0 OID 0)
-- Dependencies: 214
-- Name: conductores_id_conductor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.conductores_id_conductor_seq', 3, true);


--
-- TOC entry 3376 (class 0 OID 0)
-- Dependencies: 216
-- Name: lugares_id_lugar_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lugares_id_lugar_seq', 3, true);


--
-- TOC entry 3377 (class 0 OID 0)
-- Dependencies: 222
-- Name: visitas_id_bus_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.visitas_id_bus_seq', 1, false);


--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 223
-- Name: visitas_id_conductor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.visitas_id_conductor_seq', 1, false);


--
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 221
-- Name: visitas_id_lugar_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.visitas_id_lugar_seq', 1, false);


--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 220
-- Name: visitas_id_ruta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.visitas_id_ruta_seq', 1, true);


--
-- TOC entry 3203 (class 2606 OID 16452)
-- Name: autobuses autobuses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.autobuses
    ADD CONSTRAINT autobuses_pkey PRIMARY KEY (id_bus);


--
-- TOC entry 3199 (class 2606 OID 16438)
-- Name: conductores conductores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conductores
    ADD CONSTRAINT conductores_pkey PRIMARY KEY (id_conductor);


--
-- TOC entry 3201 (class 2606 OID 16445)
-- Name: lugares lugares_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lugares
    ADD CONSTRAINT lugares_pkey PRIMARY KEY (id_lugar);


--
-- TOC entry 3205 (class 2606 OID 16465)
-- Name: visitas visitas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT visitas_pkey PRIMARY KEY (id_ruta);


--
-- TOC entry 3206 (class 2606 OID 16471)
-- Name: visitas fk_id_bus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT fk_id_bus FOREIGN KEY (id_bus) REFERENCES public.autobuses(id_bus) ON UPDATE CASCADE NOT VALID;


--
-- TOC entry 3207 (class 2606 OID 16466)
-- Name: visitas fk_id_lugar; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT fk_id_lugar FOREIGN KEY (id_lugar) REFERENCES public.lugares(id_lugar) ON UPDATE CASCADE NOT VALID;


--
-- TOC entry 3208 (class 2606 OID 16476)
-- Name: visitas if_id_conductor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT if_id_conductor FOREIGN KEY (id_conductor) REFERENCES public.conductores(id_conductor) ON UPDATE CASCADE NOT VALID;


-- Completed on 2023-05-03 17:14:26

--
-- PostgreSQL database dump complete
--

