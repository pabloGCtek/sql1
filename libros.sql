--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-03 17:14:47

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
-- TOC entry 217 (class 1259 OID 16589)
-- Name: libros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libros (
    id_libro integer NOT NULL,
    titulo character varying(60) NOT NULL,
    autor character varying(60) NOT NULL,
    ejemplares integer NOT NULL,
    id_tema integer NOT NULL
);


ALTER TABLE public.libros OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16588)
-- Name: libros_id_libro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libros_id_libro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libros_id_libro_seq OWNER TO postgres;

--
-- TOC entry 3359 (class 0 OID 0)
-- Dependencies: 216
-- Name: libros_id_libro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libros_id_libro_seq OWNED BY public.libros.id_libro;


--
-- TOC entry 221 (class 1259 OID 16605)
-- Name: prestamos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prestamos (
    id_prestamo integer NOT NULL,
    id_libro integer NOT NULL,
    id_socio integer NOT NULL
);


ALTER TABLE public.prestamos OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16604)
-- Name: prestamos_id_prestamo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prestamos_id_prestamo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prestamos_id_prestamo_seq OWNER TO postgres;

--
-- TOC entry 3360 (class 0 OID 0)
-- Dependencies: 220
-- Name: prestamos_id_prestamo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prestamos_id_prestamo_seq OWNED BY public.prestamos.id_prestamo;


--
-- TOC entry 219 (class 1259 OID 16596)
-- Name: socios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socios (
    id_socio integer NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE public.socios OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16595)
-- Name: socios_id_socio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socios_id_socio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socios_id_socio_seq OWNER TO postgres;

--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 218
-- Name: socios_id_socio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socios_id_socio_seq OWNED BY public.socios.id_socio;


--
-- TOC entry 215 (class 1259 OID 16582)
-- Name: temas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temas (
    id_tema integer NOT NULL,
    nombre character varying(60) NOT NULL
);


ALTER TABLE public.temas OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16581)
-- Name: temas_id_tema_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.temas_id_tema_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temas_id_tema_seq OWNER TO postgres;

--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 214
-- Name: temas_id_tema_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.temas_id_tema_seq OWNED BY public.temas.id_tema;


--
-- TOC entry 3190 (class 2604 OID 16608)
-- Name: prestamos id_prestamo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestamos ALTER COLUMN id_prestamo SET DEFAULT nextval('public.prestamos_id_prestamo_seq'::regclass);


--
-- TOC entry 3189 (class 2604 OID 16599)
-- Name: socios id_socio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socios ALTER COLUMN id_socio SET DEFAULT nextval('public.socios_id_socio_seq'::regclass);


--
-- TOC entry 3188 (class 2604 OID 16585)
-- Name: temas id_tema; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temas ALTER COLUMN id_tema SET DEFAULT nextval('public.temas_id_tema_seq'::regclass);


--
-- TOC entry 3349 (class 0 OID 16589)
-- Dependencies: 217
-- Data for Name: libros; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.libros (id_libro, titulo, autor, ejemplares, id_tema) VALUES (1, 'La Odiesa', 'Homero', 5, 2);


--
-- TOC entry 3353 (class 0 OID 16605)
-- Dependencies: 221
-- Data for Name: prestamos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3351 (class 0 OID 16596)
-- Dependencies: 219
-- Data for Name: socios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.socios (id_socio, nombre) VALUES (1, 'Espinete');
INSERT INTO public.socios (id_socio, nombre) VALUES (2, 'Juanete');


--
-- TOC entry 3347 (class 0 OID 16582)
-- Dependencies: 215
-- Data for Name: temas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.temas (id_tema, nombre) VALUES (1, 'Historia');
INSERT INTO public.temas (id_tema, nombre) VALUES (2, 'misterio');


--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 216
-- Name: libros_id_libro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libros_id_libro_seq', 1, false);


--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 220
-- Name: prestamos_id_prestamo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prestamos_id_prestamo_seq', 1, false);


--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 218
-- Name: socios_id_socio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socios_id_socio_seq', 2, true);


--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 214
-- Name: temas_id_tema_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.temas_id_tema_seq', 2, true);


--
-- TOC entry 3194 (class 2606 OID 16594)
-- Name: libros libros_id_libro_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libros
    ADD CONSTRAINT libros_id_libro_key UNIQUE (id_libro);


--
-- TOC entry 3196 (class 2606 OID 16629)
-- Name: libros libros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libros
    ADD CONSTRAINT libros_pkey PRIMARY KEY (id_libro);


--
-- TOC entry 3200 (class 2606 OID 16610)
-- Name: prestamos prestamos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestamos
    ADD CONSTRAINT prestamos_pkey PRIMARY KEY (id_prestamo);


--
-- TOC entry 3198 (class 2606 OID 16603)
-- Name: socios socios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socios
    ADD CONSTRAINT socios_pkey PRIMARY KEY (id_socio);


--
-- TOC entry 3192 (class 2606 OID 16587)
-- Name: temas temas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temas
    ADD CONSTRAINT temas_pkey PRIMARY KEY (id_tema);


--
-- TOC entry 3202 (class 2606 OID 16616)
-- Name: prestamos id_libro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestamos
    ADD CONSTRAINT id_libro FOREIGN KEY (id_libro) REFERENCES public.libros(id_libro) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- TOC entry 3203 (class 2606 OID 16621)
-- Name: prestamos id_socio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestamos
    ADD CONSTRAINT id_socio FOREIGN KEY (id_socio) REFERENCES public.socios(id_socio) ON UPDATE CASCADE NOT VALID;


--
-- TOC entry 3201 (class 2606 OID 16611)
-- Name: libros id_tema; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libros
    ADD CONSTRAINT id_tema FOREIGN KEY (id_tema) REFERENCES public.temas(id_tema) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


-- Completed on 2023-05-03 17:14:47

--
-- PostgreSQL database dump complete
--

