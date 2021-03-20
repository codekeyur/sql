--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.1

-- Started on 2021-02-13 01:11:07 EST

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
-- TOC entry 202 (class 1259 OID 16515)
-- Name: diagnosis; Type: TABLE; Schema: public; Owner: keyurpatel
--

CREATE TABLE public.diagnosis (
    diagnosis_id integer NOT NULL,
    visit_id integer NOT NULL,
    disease_id integer NOT NULL
);


ALTER TABLE public.diagnosis OWNER TO keyurpatel;

--
-- TOC entry 201 (class 1259 OID 16513)
-- Name: diagnosis_diagnosis_id_seq; Type: SEQUENCE; Schema: public; Owner: keyurpatel
--

CREATE SEQUENCE public.diagnosis_diagnosis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.diagnosis_diagnosis_id_seq OWNER TO keyurpatel;

--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 201
-- Name: diagnosis_diagnosis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: keyurpatel
--

ALTER SEQUENCE public.diagnosis_diagnosis_id_seq OWNED BY public.diagnosis.diagnosis_id;


--
-- TOC entry 200 (class 1259 OID 16505)
-- Name: diseases; Type: TABLE; Schema: public; Owner: keyurpatel
--

CREATE TABLE public.diseases (
    disease_id integer NOT NULL,
    disease_name character varying(255) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.diseases OWNER TO keyurpatel;

--
-- TOC entry 204 (class 1259 OID 17480)
-- Name: doctor; Type: TABLE; Schema: public; Owner: keyurpatel
--

CREATE TABLE public.doctor (
    doctor_id integer NOT NULL,
    first_name character varying(45) NOT NULL,
    last_name character varying(45) NOT NULL,
    email character varying(45) NOT NULL,
    phone character varying(45) NOT NULL
);


ALTER TABLE public.doctor OWNER TO keyurpatel;

--
-- TOC entry 203 (class 1259 OID 17478)
-- Name: doctor_doctor_id_seq; Type: SEQUENCE; Schema: public; Owner: keyurpatel
--

CREATE SEQUENCE public.doctor_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doctor_doctor_id_seq OWNER TO keyurpatel;

--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 203
-- Name: doctor_doctor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: keyurpatel
--

ALTER SEQUENCE public.doctor_doctor_id_seq OWNED BY public.doctor.doctor_id;


--
-- TOC entry 206 (class 1259 OID 17488)
-- Name: medicine; Type: TABLE; Schema: public; Owner: keyurpatel
--

CREATE TABLE public.medicine (
    medicine_id integer NOT NULL,
    medicine_name character varying(45) NOT NULL,
    description text
);


ALTER TABLE public.medicine OWNER TO keyurpatel;

--
-- TOC entry 205 (class 1259 OID 17486)
-- Name: medicine_medicine_id_seq; Type: SEQUENCE; Schema: public; Owner: keyurpatel
--

CREATE SEQUENCE public.medicine_medicine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.medicine_medicine_id_seq OWNER TO keyurpatel;

--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 205
-- Name: medicine_medicine_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: keyurpatel
--

ALTER SEQUENCE public.medicine_medicine_id_seq OWNED BY public.medicine.medicine_id;


--
-- TOC entry 208 (class 1259 OID 17499)
-- Name: nurse; Type: TABLE; Schema: public; Owner: keyurpatel
--

CREATE TABLE public.nurse (
    nurse_id integer NOT NULL,
    first_name character varying(45) NOT NULL,
    last_name character varying(45) NOT NULL,
    phone character varying(45) NOT NULL
);


ALTER TABLE public.nurse OWNER TO keyurpatel;

--
-- TOC entry 207 (class 1259 OID 17497)
-- Name: nurse_nurse_id_seq; Type: SEQUENCE; Schema: public; Owner: keyurpatel
--

CREATE SEQUENCE public.nurse_nurse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nurse_nurse_id_seq OWNER TO keyurpatel;

--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 207
-- Name: nurse_nurse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: keyurpatel
--

ALTER SEQUENCE public.nurse_nurse_id_seq OWNED BY public.nurse.nurse_id;


--
-- TOC entry 210 (class 1259 OID 17507)
-- Name: patient; Type: TABLE; Schema: public; Owner: keyurpatel
--

CREATE TABLE public.patient (
    patient_id integer NOT NULL,
    first_name character varying(45) NOT NULL,
    last_name character varying(45) NOT NULL,
    email character varying(45) NOT NULL,
    phone character varying(45) NOT NULL,
    street_address character varying(100) DEFAULT NULL::character varying,
    city character varying(45) DEFAULT NULL::character varying,
    zip integer,
    states character varying(20) DEFAULT NULL::character varying,
    country character varying(45) DEFAULT NULL::character varying,
    gender character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public.patient OWNER TO keyurpatel;

--
-- TOC entry 212 (class 1259 OID 17520)
-- Name: patient_nurse; Type: TABLE; Schema: public; Owner: keyurpatel
--

CREATE TABLE public.patient_nurse (
    patient_nurse_id integer NOT NULL,
    patient_id integer NOT NULL,
    nurse_id integer NOT NULL,
    start_date date NOT NULL,
    end_date date
);


ALTER TABLE public.patient_nurse OWNER TO keyurpatel;

--
-- TOC entry 211 (class 1259 OID 17518)
-- Name: patient_nurse_patient_nurse_id_seq; Type: SEQUENCE; Schema: public; Owner: keyurpatel
--

CREATE SEQUENCE public.patient_nurse_patient_nurse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.patient_nurse_patient_nurse_id_seq OWNER TO keyurpatel;

--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 211
-- Name: patient_nurse_patient_nurse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: keyurpatel
--

ALTER SEQUENCE public.patient_nurse_patient_nurse_id_seq OWNED BY public.patient_nurse.patient_nurse_id;


--
-- TOC entry 209 (class 1259 OID 17505)
-- Name: patient_patient_id_seq; Type: SEQUENCE; Schema: public; Owner: keyurpatel
--

CREATE SEQUENCE public.patient_patient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.patient_patient_id_seq OWNER TO keyurpatel;

--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 209
-- Name: patient_patient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: keyurpatel
--

ALTER SEQUENCE public.patient_patient_id_seq OWNED BY public.patient.patient_id;


--
-- TOC entry 220 (class 1259 OID 17599)
-- Name: patient_room; Type: TABLE; Schema: public; Owner: keyurpatel
--

CREATE TABLE public.patient_room (
    inpatient_id integer NOT NULL,
    patient_id integer NOT NULL,
    room_id integer NOT NULL,
    start_date date,
    end_date date
);


ALTER TABLE public.patient_room OWNER TO keyurpatel;

--
-- TOC entry 214 (class 1259 OID 17543)
-- Name: prescription; Type: TABLE; Schema: public; Owner: keyurpatel
--

CREATE TABLE public.prescription (
    prescription_id integer NOT NULL,
    diagnosis_id integer NOT NULL,
    prescription_date date NOT NULL
);


ALTER TABLE public.prescription OWNER TO keyurpatel;

--
-- TOC entry 215 (class 1259 OID 17554)
-- Name: prescription_medicine; Type: TABLE; Schema: public; Owner: keyurpatel
--

CREATE TABLE public.prescription_medicine (
    prescription_id integer NOT NULL,
    medicine_id integer NOT NULL,
    start_date date NOT NULL,
    end_date date,
    quantity integer NOT NULL
);


ALTER TABLE public.prescription_medicine OWNER TO keyurpatel;

--
-- TOC entry 213 (class 1259 OID 17541)
-- Name: prescription_prescription_id_seq; Type: SEQUENCE; Schema: public; Owner: keyurpatel
--

CREATE SEQUENCE public.prescription_prescription_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prescription_prescription_id_seq OWNER TO keyurpatel;

--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 213
-- Name: prescription_prescription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: keyurpatel
--

ALTER SEQUENCE public.prescription_prescription_id_seq OWNED BY public.prescription.prescription_id;


--
-- TOC entry 217 (class 1259 OID 17571)
-- Name: room; Type: TABLE; Schema: public; Owner: keyurpatel
--

CREATE TABLE public.room (
    room_id integer NOT NULL,
    status character varying(45) DEFAULT NULL::character varying
);


ALTER TABLE public.room OWNER TO keyurpatel;

--
-- TOC entry 216 (class 1259 OID 17569)
-- Name: room_room_id_seq; Type: SEQUENCE; Schema: public; Owner: keyurpatel
--

CREATE SEQUENCE public.room_room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.room_room_id_seq OWNER TO keyurpatel;

--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 216
-- Name: room_room_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: keyurpatel
--

ALTER SEQUENCE public.room_room_id_seq OWNED BY public.room.room_id;


--
-- TOC entry 219 (class 1259 OID 17580)
-- Name: visit; Type: TABLE; Schema: public; Owner: keyurpatel
--

CREATE TABLE public.visit (
    visit_id integer NOT NULL,
    patient_id integer NOT NULL,
    doctor_id integer NOT NULL,
    visit_date date NOT NULL
);


ALTER TABLE public.visit OWNER TO keyurpatel;

--
-- TOC entry 218 (class 1259 OID 17578)
-- Name: visit_visit_id_seq; Type: SEQUENCE; Schema: public; Owner: keyurpatel
--

CREATE SEQUENCE public.visit_visit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visit_visit_id_seq OWNER TO keyurpatel;

--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 218
-- Name: visit_visit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: keyurpatel
--

ALTER SEQUENCE public.visit_visit_id_seq OWNED BY public.visit.visit_id;


--
-- TOC entry 3177 (class 2604 OID 17614)
-- Name: diagnosis diagnosis_id; Type: DEFAULT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.diagnosis ALTER COLUMN diagnosis_id SET DEFAULT nextval('public.diagnosis_diagnosis_id_seq'::regclass);


--
-- TOC entry 3178 (class 2604 OID 17615)
-- Name: doctor doctor_id; Type: DEFAULT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.doctor ALTER COLUMN doctor_id SET DEFAULT nextval('public.doctor_doctor_id_seq'::regclass);


--
-- TOC entry 3179 (class 2604 OID 17616)
-- Name: medicine medicine_id; Type: DEFAULT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.medicine ALTER COLUMN medicine_id SET DEFAULT nextval('public.medicine_medicine_id_seq'::regclass);


--
-- TOC entry 3180 (class 2604 OID 17617)
-- Name: nurse nurse_id; Type: DEFAULT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.nurse ALTER COLUMN nurse_id SET DEFAULT nextval('public.nurse_nurse_id_seq'::regclass);


--
-- TOC entry 3186 (class 2604 OID 17618)
-- Name: patient patient_id; Type: DEFAULT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.patient ALTER COLUMN patient_id SET DEFAULT nextval('public.patient_patient_id_seq'::regclass);


--
-- TOC entry 3187 (class 2604 OID 17619)
-- Name: patient_nurse patient_nurse_id; Type: DEFAULT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.patient_nurse ALTER COLUMN patient_nurse_id SET DEFAULT nextval('public.patient_nurse_patient_nurse_id_seq'::regclass);


--
-- TOC entry 3188 (class 2604 OID 17620)
-- Name: prescription prescription_id; Type: DEFAULT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.prescription ALTER COLUMN prescription_id SET DEFAULT nextval('public.prescription_prescription_id_seq'::regclass);


--
-- TOC entry 3190 (class 2604 OID 17621)
-- Name: room room_id; Type: DEFAULT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.room ALTER COLUMN room_id SET DEFAULT nextval('public.room_room_id_seq'::regclass);


--
-- TOC entry 3191 (class 2604 OID 17622)
-- Name: visit visit_id; Type: DEFAULT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.visit ALTER COLUMN visit_id SET DEFAULT nextval('public.visit_visit_id_seq'::regclass);


--
-- TOC entry 3195 (class 2606 OID 16520)
-- Name: diagnosis diagnosis_pkey; Type: CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.diagnosis
    ADD CONSTRAINT diagnosis_pkey PRIMARY KEY (diagnosis_id);


--
-- TOC entry 3193 (class 2606 OID 16512)
-- Name: diseases diseases_pkey; Type: CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.diseases
    ADD CONSTRAINT diseases_pkey PRIMARY KEY (disease_id);


--
-- TOC entry 3197 (class 2606 OID 17485)
-- Name: doctor doctor_pkey; Type: CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (doctor_id);


--
-- TOC entry 3199 (class 2606 OID 17496)
-- Name: medicine medicine_pkey; Type: CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.medicine
    ADD CONSTRAINT medicine_pkey PRIMARY KEY (medicine_id);


--
-- TOC entry 3201 (class 2606 OID 17504)
-- Name: nurse nurse_pkey; Type: CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.nurse
    ADD CONSTRAINT nurse_pkey PRIMARY KEY (nurse_id);


--
-- TOC entry 3205 (class 2606 OID 17525)
-- Name: patient_nurse patient_nurse_pkey; Type: CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.patient_nurse
    ADD CONSTRAINT patient_nurse_pkey PRIMARY KEY (patient_nurse_id);


--
-- TOC entry 3203 (class 2606 OID 17517)
-- Name: patient patient_pkey; Type: CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_pkey PRIMARY KEY (patient_id);


--
-- TOC entry 3215 (class 2606 OID 17603)
-- Name: patient_room patient_room_pkey; Type: CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.patient_room
    ADD CONSTRAINT patient_room_pkey PRIMARY KEY (inpatient_id);


--
-- TOC entry 3209 (class 2606 OID 17558)
-- Name: prescription_medicine prescription_medicine_pkey; Type: CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.prescription_medicine
    ADD CONSTRAINT prescription_medicine_pkey PRIMARY KEY (prescription_id, medicine_id);


--
-- TOC entry 3207 (class 2606 OID 17548)
-- Name: prescription prescription_pkey; Type: CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.prescription
    ADD CONSTRAINT prescription_pkey PRIMARY KEY (prescription_id);


--
-- TOC entry 3211 (class 2606 OID 17577)
-- Name: room room_pkey; Type: CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (room_id);


--
-- TOC entry 3213 (class 2606 OID 17585)
-- Name: visit visit_pkey; Type: CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.visit
    ADD CONSTRAINT visit_pkey PRIMARY KEY (visit_id);


--
-- TOC entry 3216 (class 2606 OID 16521)
-- Name: diagnosis fk_disease; Type: FK CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.diagnosis
    ADD CONSTRAINT fk_disease FOREIGN KEY (disease_id) REFERENCES public.diseases(disease_id);


--
-- TOC entry 3222 (class 2606 OID 17586)
-- Name: visit fk_doctor_has_patient_doctor; Type: FK CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.visit
    ADD CONSTRAINT fk_doctor_has_patient_doctor FOREIGN KEY (doctor_id) REFERENCES public.doctor(doctor_id);


--
-- TOC entry 3223 (class 2606 OID 17591)
-- Name: visit fk_doctor_has_patient_patient1; Type: FK CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.visit
    ADD CONSTRAINT fk_doctor_has_patient_patient1 FOREIGN KEY (patient_id) REFERENCES public.patient(patient_id);


--
-- TOC entry 3217 (class 2606 OID 17526)
-- Name: patient_nurse fk_patient_has_nurse_nurse1; Type: FK CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.patient_nurse
    ADD CONSTRAINT fk_patient_has_nurse_nurse1 FOREIGN KEY (nurse_id) REFERENCES public.nurse(nurse_id);


--
-- TOC entry 3218 (class 2606 OID 17531)
-- Name: patient_nurse fk_patient_has_nurse_patient1; Type: FK CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.patient_nurse
    ADD CONSTRAINT fk_patient_has_nurse_patient1 FOREIGN KEY (patient_id) REFERENCES public.patient(patient_id);


--
-- TOC entry 3224 (class 2606 OID 17604)
-- Name: patient_room fk_patient_has_room_patient1; Type: FK CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.patient_room
    ADD CONSTRAINT fk_patient_has_room_patient1 FOREIGN KEY (patient_id) REFERENCES public.patient(patient_id);


--
-- TOC entry 3225 (class 2606 OID 17609)
-- Name: patient_room fk_patient_has_room_room1; Type: FK CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.patient_room
    ADD CONSTRAINT fk_patient_has_room_room1 FOREIGN KEY (room_id) REFERENCES public.room(room_id);


--
-- TOC entry 3219 (class 2606 OID 17549)
-- Name: prescription fk_prescription_diagnosis1; Type: FK CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.prescription
    ADD CONSTRAINT fk_prescription_diagnosis1 FOREIGN KEY (diagnosis_id) REFERENCES public.diagnosis(diagnosis_id);


--
-- TOC entry 3220 (class 2606 OID 17559)
-- Name: prescription_medicine fk_prescription_medicine_medicine1; Type: FK CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.prescription_medicine
    ADD CONSTRAINT fk_prescription_medicine_medicine1 FOREIGN KEY (medicine_id) REFERENCES public.medicine(medicine_id);


--
-- TOC entry 3221 (class 2606 OID 17564)
-- Name: prescription_medicine fk_prescription_medicine_prescription1; Type: FK CONSTRAINT; Schema: public; Owner: keyurpatel
--

ALTER TABLE ONLY public.prescription_medicine
    ADD CONSTRAINT fk_prescription_medicine_prescription1 FOREIGN KEY (prescription_id) REFERENCES public.prescription(prescription_id);


-- Completed on 2021-02-13 01:11:07 EST

--
-- PostgreSQL database dump complete
--

