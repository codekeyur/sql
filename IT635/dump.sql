--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.1

-- Started on 2021-02-13 01:12:37 EST

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

--
-- TOC entry 3382 (class 1262 OID 16384)
-- Name: hospital_db; Type: DATABASE; Schema: -; Owner: keyurpatel
--

CREATE DATABASE hospital_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';


ALTER DATABASE hospital_db OWNER TO keyurpatel;

\connect hospital_db

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

--
-- TOC entry 3356 (class 0 OID 16505)
-- Dependencies: 200
-- Data for Name: diseases; Type: TABLE DATA; Schema: public; Owner: keyurpatel
--

INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (1, 'Abdominal aortic aneurysm', 'An abdominal aortic aneurysm (AAA) is a swelling (aneurysm) of the aorta – the main blood vessel that leads away from the heart, down through the abdomen to the rest of the body.');
INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (2, 'Acne', 'Acne is a common skin condition that affects most people at some poINTEGER. It causes spots, oily skin and sometimes skin that is hot or painful to touch.');
INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (3, 'Asthma', 'Asthma is a common long-term condition that can cause coughing, wheezing, chest tightness and breathlessness.');
INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (4, 'Autism spectrum disorder (ASD)', 'Autism spectrum disorder (ASD) is a condition that affects social INTEGEReraction, communication, intrests and behaviour.');
INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (5, 'Bronchitis', 'Bronchitis is an infection of the main airways of the lungs (bronchi), causing them to become irritated and inflamed.');
INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (6, 'Common Cold', 'A cold is a mild viral infection of the nose, throat, sinuses and upper airways. Its very common and usually clears up on its own within a week or two.');
INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (7, 'Constipation', 'Constipation is a common condition that affects people of all ages. It can mean that you are not passing stools regularly or you are unable to completely empty your bowel.');
INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (8, 'Diabetes', 'Diabetes is a lifelong condition that causes a person blood sugar level to become too high.');
INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (9, 'Flu', 'Flu (influenza) is a common infectious viral illness spread by coughs and sneezes. It can be very unpleasant, but you will usually begin to feel better within about a week.');
INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (10, 'Heart failure', 'Heart failure is a serious condition, but it does not actually mean that your heart has failed. It means that your heart is not pumping blood around your body very efficiently.');
INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (11, 'Insomnia', 'Insomnia is difficulty getting to sleep or staying asleep for long enough to feel refreshed the next morning.');
INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (12, 'Liver Cancer', 'Primary liver cancer is an uncommon but serious type of cancer that begins in the liver.');
INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (13, 'Migraines', 'A migraine is usually a moderate or severe headache felt as a throbbing pain on one side of the head.');
INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (14, 'Psoriasis', 'Psoriasis is a skin condition that causes red, flaky, crusty patches of skin covered with silvery scales.');
INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (15, 'Schizophrenia', 'Schizophrenia is a long-term mental health condition that causes a range of different psychological symptoms');
INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (16, 'Melanoma', 'Melanoma is a type of skin cancer that can spread to other organs in the body.');
INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (17, 'Sore throat', 'Sore throats are very common and usually nothing to worry about. They normally get better within a week.');
INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (18, 'Urinary tract infection', 'Urinary tract infections (UTIs) are common infections that can affect the bladder, the kidneys and the tubes connected to them.');
INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (19, 'Leg ulcer', 'A leg ulcer is a long-lasting (chronic) sore that takes more than 4 to 6 weeks to heal. They usually develop on the inside of the leg, just above the ankle.');
INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (20, 'Yellow fever', 'Yellow fever is a serious viral infection that is spread by certain types of mosquito. Its mainly found in sub-Saharan Africa, South America and parts of the Caribbean.');
INSERT INTO public.diseases (disease_id, disease_name, description) VALUES (21, 'Healthy', 'Patient is healthy');


--
-- TOC entry 3358 (class 0 OID 16515)
-- Dependencies: 202
-- Data for Name: diagnosis; Type: TABLE DATA; Schema: public; Owner: keyurpatel
--

INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (1, 1, 1);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (2, 2, 2);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (3, 3, 3);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (4, 4, 4);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (5, 5, 5);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (6, 6, 21);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (7, 7, 6);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (8, 8, 21);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (9, 9, 21);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (10, 10, 8);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (11, 11, 10);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (12, 12, 12);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (13, 13, 9);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (14, 14, 15);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (15, 15, 16);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (16, 16, 19);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (17, 17, 15);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (18, 18, 21);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (19, 19, 21);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (20, 20, 21);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (21, 21, 21);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (22, 22, 15);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (23, 23, 17);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (24, 24, 21);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (25, 25, 21);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (26, 26, 21);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (27, 27, 21);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (28, 28, 2);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (29, 29, 6);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (30, 30, 19);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (31, 31, 4);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (32, 32, 9);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (33, 33, 3);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (34, 34, 15);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (35, 35, 3);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (36, 36, 1);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (37, 37, 21);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (38, 38, 21);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (39, 39, 15);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (40, 40, 16);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (41, 41, 17);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (42, 42, 21);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (43, 43, 21);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (44, 44, 21);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (45, 45, 19);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (46, 46, 2);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (47, 47, 8);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (48, 48, 3);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (49, 49, 21);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (50, 50, 21);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (51, 51, 4);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (52, 52, 12);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (53, 53, 12);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (54, 54, 12);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (55, 55, 12);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (56, 56, 19);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (57, 57, 19);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (58, 58, 19);
INSERT INTO public.diagnosis (diagnosis_id, visit_id, disease_id) VALUES (59, 59, 19);


--
-- TOC entry 3360 (class 0 OID 17480)
-- Dependencies: 204
-- Data for Name: doctor; Type: TABLE DATA; Schema: public; Owner: keyurpatel
--

INSERT INTO public.doctor (doctor_id, first_name, last_name, email, phone) VALUES (1, 'Braelyn', 'Richmond', 'Braelyn1Richmond@hospitalteam.com', '(628) 737-8387');
INSERT INTO public.doctor (doctor_id, first_name, last_name, email, phone) VALUES (2, 'Kameron', 'Benson', 'Kameron2Benson@hospitalteam.com', '(412) 542-1964');
INSERT INTO public.doctor (doctor_id, first_name, last_name, email, phone) VALUES (3, 'Hugo', 'Randolph', 'Hugo3Randolph@hospitalteam.com', '(977) 281-4408');
INSERT INTO public.doctor (doctor_id, first_name, last_name, email, phone) VALUES (4, 'Adalyn', 'Aguilar', 'Adalyn4Aguilar@hospitalteam.com', '(897) 406-2496');
INSERT INTO public.doctor (doctor_id, first_name, last_name, email, phone) VALUES (5, 'Deborah', 'Stevens', 'Deborah5Stevens@hospitalteam.com', '(295) 952-1762');
INSERT INTO public.doctor (doctor_id, first_name, last_name, email, phone) VALUES (6, 'Riya', 'Valdez', 'Riya6Valdez@hospitalteam.com', '(456) 630-2623');
INSERT INTO public.doctor (doctor_id, first_name, last_name, email, phone) VALUES (7, 'Paityn', 'Liu', 'Paityn7Liu@hospitalteam.com', '(357) 707-9281');
INSERT INTO public.doctor (doctor_id, first_name, last_name, email, phone) VALUES (8, 'Dorian', 'Gray', 'Dorian8Gray@hospitalteam.com', '(342) 587-7675');
INSERT INTO public.doctor (doctor_id, first_name, last_name, email, phone) VALUES (9, 'Lillie', 'Madden', 'Lillie9Madden@hospitalteam.com', '(242) 303-5504');
INSERT INTO public.doctor (doctor_id, first_name, last_name, email, phone) VALUES (10, 'Marlie', 'Carson', 'Marlie10Carson@hospitalteam.com', '(840) 215-7859');
INSERT INTO public.doctor (doctor_id, first_name, last_name, email, phone) VALUES (11, 'Eric', 'Little', 'Eric11Little@hospitalteam.com', '(240) 946-4206');
INSERT INTO public.doctor (doctor_id, first_name, last_name, email, phone) VALUES (12, 'Draven', 'Bauer', 'Draven12Bauer@hospitalteam.com', '(752) 320-9309');
INSERT INTO public.doctor (doctor_id, first_name, last_name, email, phone) VALUES (13, 'Judith', 'Walker', 'Judith13Walker@hospitalteam.com', '(298) 754-7168');
INSERT INTO public.doctor (doctor_id, first_name, last_name, email, phone) VALUES (14, 'Paris', 'Villa', 'Paris14Villa@hospitalteam.com', '(747) 652-9428');
INSERT INTO public.doctor (doctor_id, first_name, last_name, email, phone) VALUES (15, 'Francesca', 'Valencia', 'Francesca15Valencia@hospitalteam.com', '(871) 849-2091');


--
-- TOC entry 3362 (class 0 OID 17488)
-- Dependencies: 206
-- Data for Name: medicine; Type: TABLE DATA; Schema: public; Owner: keyurpatel
--

INSERT INTO public.medicine (medicine_id, medicine_name, description) VALUES (1, 'Carvedilol (Coreg)', 'Beta blockers');
INSERT INTO public.medicine (medicine_id, medicine_name, description) VALUES (2, 'Tetracycline', 'Oral antibiotics');
INSERT INTO public.medicine (medicine_id, medicine_name, description) VALUES (3, 'Fluticasone (Flovent HFA)', 'Fluticasone (Flovent HFA)');
INSERT INTO public.medicine (medicine_id, medicine_name, description) VALUES (4, 'Prozac', 'selective serotonin reuptake inhibitors (SSRIs)');
INSERT INTO public.medicine (medicine_id, medicine_name, description) VALUES (5, 'Ibuprofen', 'Over the counter drug');
INSERT INTO public.medicine (medicine_id, medicine_name, description) VALUES (6, 'Theraflu', 'Over the counter drug for cold and flu');
INSERT INTO public.medicine (medicine_id, medicine_name, description) VALUES (7, 'Pepto Bismol', 'Over the counter drug for constipation');
INSERT INTO public.medicine (medicine_id, medicine_name, description) VALUES (8, 'Novolin', 'short acting insulin');
INSERT INTO public.medicine (medicine_id, medicine_name, description) VALUES (9, 'Theraflu', 'Over the counter drug for cold and flu');
INSERT INTO public.medicine (medicine_id, medicine_name, description) VALUES (10, 'Novolin', 'Decreases blood clotting');
INSERT INTO public.medicine (medicine_id, medicine_name, description) VALUES (11, 'Lunesta', 'Non-benzodiazepine sedative');
INSERT INTO public.medicine (medicine_id, medicine_name, description) VALUES (12, 'Cabozantinib-S-Malate', 'Cancer treatment medication');
INSERT INTO public.medicine (medicine_id, medicine_name, description) VALUES (13, 'Tylenon', 'Over the counter pain medication');
INSERT INTO public.medicine (medicine_id, medicine_name, description) VALUES (14, 'Enbrel', 'psoriasis treatment');
INSERT INTO public.medicine (medicine_id, medicine_name, description) VALUES (15, 'Clozapine (Clozaril)', 'antipsychotic medication');
INSERT INTO public.medicine (medicine_id, medicine_name, description) VALUES (16, 'Aldesleukin', 'Skin cancer medication');
INSERT INTO public.medicine (medicine_id, medicine_name, description) VALUES (17, 'Mucinex', 'Over the counter drug for sore throat');
INSERT INTO public.medicine (medicine_id, medicine_name, description) VALUES (18, 'AZO', 'Urinary pain relief');
INSERT INTO public.medicine (medicine_id, medicine_name, description) VALUES (19, 'UlcerGard', 'uleg ulcer medication');


--
-- TOC entry 3364 (class 0 OID 17499)
-- Dependencies: 208
-- Data for Name: nurse; Type: TABLE DATA; Schema: public; Owner: keyurpatel
--

INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (1, 'Jane', 'Donahoe', '(202)123-4567');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (2, 'Alejandro', 'Reeves', '(228) 767-2381');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (3, 'Osvaldo', 'Hammond', '(624) 676-7199');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (4, 'Lou', 'Parrish', '(946) 734-6099');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (5, 'Louise', 'Weeks', '(404) 350-5679');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (6, 'Phyllis', 'Hammond', '(254) 594-1551');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (7, 'Teisha', 'Sims', '(974) 375-5679');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (8, 'Robena', 'Munoz', '(210) 227-4128');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (9, 'Marlen', 'Mcclure', '(705) 252-7850');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (10, 'Sarita', 'Schmidt', '(782) 374-9636');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (11, 'Tuyet', 'Gordon', '(760) 304-0471');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (12, 'Jennie', 'Villarreal', '(744) 967-4471');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (13, 'Tonette', 'Wong', '(519) 712-4392');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (14, 'Xochitl', 'Camacho', '(419) 741-2167');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (15, 'Kiley', 'Bond', '(616) 635-7448');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (16, 'Eliza', 'Gentry', '(764) 305-0869');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (17, 'Steven', 'West', '(240) 803-6370');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (18, 'Audra', 'Griffin', '(923) 222-7030');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (19, 'Laurene', 'Hughes', '(814) 260-7938');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (20, 'Tashina', 'Roberson', '(223) 810-1251');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (21, 'Noma', 'Walter', '(672) 662-4794');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (22, 'Tamiko', 'Singleton', '(426) 794-5879');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (23, 'Minna', 'Henderson', '(567) 831-1194');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (24, 'Manda', 'Maldonado', '(629) 950-2738');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (25, 'Maribel', 'Morgan', '(509) 805-7702');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (26, 'Corie', 'Cain', '(330) 708-6683');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (27, 'Gertrude', 'Ritter', '(734) 235-5739');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (28, 'Lia', 'Riley', '(436) 515-6860');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (29, 'Shizue', 'Hancock', '(215) 664-7452');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (30, 'Lakendra', 'Hanna', '(702) 772-1655');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (31, 'Wendell', 'Ker', '(634) 937-9124');
INSERT INTO public.nurse (nurse_id, first_name, last_name, phone) VALUES (32, 'Paul', 'John', '(918) 230-3234');


--
-- TOC entry 3366 (class 0 OID 17507)
-- Dependencies: 210
-- Data for Name: patient; Type: TABLE DATA; Schema: public; Owner: keyurpatel
--

INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (1, 'John', 'Roberts', 'JohnRoberts1@gmail.com', '(301) 123-4567', '1234 Gude St.', 'Silver Spring', 20910, 'MD', 'United States of America', 'M');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (2, 'Deandre', 'Barrera', 'DeandreBarrera2@gmail.com', '(214) 710-6821', '9730 Valley View Street', 'Rockville', 20910, 'MD', 'United States of America', 'M');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (3, 'Maryrose', 'Duffy', 'MaryroseDuffy3@gmail.com', '(212) 815-7338', '86 Brookside Drive', 'Rockville', 20910, 'MD', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (4, 'Jarvis', 'Smith', 'JarvisSmith4@gmail.com', '(313) 745-2060', '331 Old Marlborough Street', 'Silver Spring', 20910, 'MD', 'United States of America', 'M');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (5, 'Enedina', 'Arellano', 'EnedinaArellano5@gmail.com', '(386) 774-2873', '7294 Pineknoll Court', 'Silver Spring', 20910, 'MD', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (6, 'Chuck', 'Cameron', 'ChuckCameron6@gmail.com', '(715) 878-4217', '145 East Tanglewood Ave.', 'Silver Spring', 20910, 'MD', 'United States of America', 'M');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (7, 'Honey', 'Curry', 'HoneyCurry7@gmail.com', '(489) 766-9947', '863 Bridgeton St.', 'Rockville', 20821, 'MD', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (8, 'Napoleon', 'Bridges', 'NapoleonBridges8@gmail.com', '(648) 838-3283', '620 East Rockland Dr.', 'Arlington', 20312, 'VA', 'United States of America', 'M');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (9, 'Camelia', 'Walters', 'CameliaWalters9@gmail.com', '(333) 798-5478', '5 Poplar Dr.', 'Alexandria', 39492, 'VA', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (10, 'Herschel', 'Fuentes', 'HerschelFuentes10@gmail.com', '(498) 852-7313', '4 West Berkshire Ave.', 'Arlington', 20821, 'VA', 'United States of America', 'M');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (11, 'Ignacia', 'Nichols', 'IgnaciaNichols11@gmail.com', '(304) 296-3704', '127 Manor St.', 'Arlington', 20821, 'VA', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (12, 'Letty', 'Mckinney', 'LettyMckinney12@gmail.com', '(883) 703-6834', '8668 SW. Sugar St.', 'Alexandria', 20821, 'VA', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (13, 'Cleopatra', 'Choi', 'CleopatraChoi13@gmail.com', '(428) 465-8888', '9201 Monroe Court', 'Silver Spring', 20821, 'MD', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (14, 'Felisha', 'Mathis', 'FelishaMathis14@gmail.com', '(930) 751-3796', '8707 E. Cypress St.', 'Silver Spring', 20821, 'MD', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (15, 'Margaret', 'Mejia', 'MargaretMejia15@gmail.com', '(283) 767-9818', '7232 Gregory Rd.', 'Rockville', 20986, 'MD', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (16, 'Flo', 'Porter', 'FloPorter16@gmail.com', '(331) 872-4501', '1 Glen Creek St.', 'Alexandria', 20821, 'VA', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (17, 'Sarai', 'Montgomery', 'SaraiMontgomery17@gmail.com', '(641) 496-1829', '446 Orchard Lane', 'Arlington', 20821, 'VA', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (18, 'Kai', 'Eaton', 'KaiEaton18@gmail.com', '(842) 910-6719', '16 Wagon Ave.', 'Alexandria', 20821, 'VA', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (19, 'Antoinette', 'Cisneros', 'AntoinetteCisneros19@gmail.com', '(996) 676-1136', '9894 Sheffield St.', 'Arlington', 50273, 'VA', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (20, 'Jewell', 'Phillips', 'JewellPhillips20@gmail.com', '(903) 546-3207', '6 Gonzales St.', 'Alexandria', 30284, 'VA', 'United States of America', 'M');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (21, 'Rosemarie', 'Riggs', 'RosemarieRiggs21@gmail.com', '(578) 787-1286', 'Bethel Park, PA 15102', 'Alexandria', 40282, 'VA', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (22, 'Pamala', 'Clay', 'PamalaClay22@gmail.com', '(791) 293-6354', '30 John Lane', 'Rockville', 30291, 'MD', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (23, 'Torri', 'Lam', 'TorriLam23@gmail.com', '(446) 830-2529', '301 Prairie Drive', 'Silver Spring', 20910, 'MD', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (24, 'Kia', 'Harris', 'KiaHarris24@gmail.com', '(225) 782-0857', '9889 Liberty Lane', 'Silver Spring', 20910, 'MD', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (25, 'Patsy', 'Aguilar', 'PatsyAguilar25@gmail.com', '(596) 737-5732', '8707 Hartford Circle', 'Silver Spring', 20910, 'MD', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (26, 'Charlette', 'Sutton', 'CharletteSutton26@gmail.com', '(830) 390-3914', '255 North Belmont St.', 'Silver Spring', 20910, 'MD', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (27, 'Nikia', 'Stevens', 'NikiaStevens27@gmail.com', '(223) 742-4816', '9931 Smith Store Street', 'Rockville', 20986, 'MD', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (28, 'Antonette', 'Shaw', 'AntonetteShaw28@gmail.com', '(312) 345-4961', '9339 Newcastle Dr.', 'Rockville', 20986, 'MD', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (29, 'Cythia', 'Branch', 'CythiaBranch29@gmail.com', '(601) 821-3797', '646 1st Ave.', 'Rockville', 20986, 'MD', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (30, 'Daine', 'Roach', 'DaineRoach30@gmail.com', '(756) 735-9841', '7070 Theatre Street', 'Rockville', 20986, 'MD', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (31, 'Karol', 'Grimes', 'KarolGrimes31@gmail.com', '(950) 386-9884', '8 Tallwood Lane', 'Alexandria', 30284, 'VA', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (32, 'Ian', 'Reed', 'IanReed32@gmail.com', '(681) 500-0039', '664 Johnson Ave.', 'Alexandria', 40282, 'VA', 'United States of America', 'M');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (33, 'Cesar', 'Lambert', 'CesarLambert33@gmail.com', '(625) 736-5145', '9911 Colonial Lane', 'Arlington', 30284, 'VA', 'United States of America', 'M');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (34, 'Michaele', 'Mclean', 'MichaeleMclean34@gmail.com', '(672) 846-2951', '87 Shub Farm Road', 'Arlington', 40282, 'VA', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (35, 'Eusebia', 'Whitehead', 'EusebiaWhitehead35@gmail.com', '(622) 413-1680', '9400 Morris Circle', 'Arlington', 30284, 'VA', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (36, 'Norman', 'Spence', 'NormanSpence36@gmail.com', '(765) 664-0007', '347 Westminster St.', 'Arlington', 40282, 'VA', 'United States of America', 'M');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (37, 'Delorse', 'Brown', 'DelorseBrown37@gmail.com', '(314) 460-4346', '8493 Mulberry Lane', 'Arlington', 32382, 'VA', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (38, 'Brenda', 'Schaefer', 'BrendaSchaefer38@gmail.com', '(389) 252-5476', '8630 Fairview Ave.', 'Arlington', 40923, 'VA', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (39, 'Minnie', 'Randall', 'MinnieRandall39@gmail.com', '(690) 956-3552', '4 South Hill Field St.', 'Arlington', 30284, 'VA', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (40, 'Moses', 'Peterson', 'MosesPeterson40@gmail.com', '(423) 678-8686', '51 Manor St.', 'Alexandria', 40282, 'VA', 'United States of America', 'M');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (41, 'Gerardo', 'Ramirez', 'GerardoRamirez41@gmail.com', '(692) 783-8733', '624 Schoolhouse Street', 'Arlington', 14345, 'VA', 'United States of America', 'M');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (42, 'Madelaine', 'Orozco', 'MadelaineOrozco42@gmail.com', '(239) 982-5563', '9208 Brickell St.', 'Alexandria', 30283, 'VA', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (43, 'Rochel', 'Chan', 'RochelChan43@gmail.com', '(688) 606-0666', '978 Belmont Lane', 'Alexandria', 30283, 'VA', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (44, 'Refugia', 'Solomon', 'RefugiaSolomon44@gmail.com', '(300) 383-3417', '62 Cedar Swamp Rd.', 'Alexandria', 30283, 'VA', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (45, 'Bethanie', 'Callahan', 'BethanieCallahan45@gmail.com', '(296) 241-1734', '7906 N. Church Dr.', 'Alexandria', 20986, 'VA', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (46, 'Siu', 'Zuniga', 'SiuZuniga46@gmail.com', '(473) 550-9106', '7740 East Carriage St.', 'Silver Spring', 20821, 'MD', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (47, 'Dorla', 'Escobar', 'DorlaEscobar47@gmail.com', '(918) 883-6593', '555 Cambridge Lane', 'Arlington', 20821, 'VA', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (48, 'Delena', 'Shaffer', 'DelenaShaffer48@gmail.com', '(730) 936-3927', '98 Lakeview St.', 'Rockville', 20986, 'MD', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (49, 'Milo', 'Farley', 'MiloFarley49@gmail.com', '(681) 568-4457', '441 Cleveland Street', 'Arlington', 20986, 'VA', 'United States of America', 'M');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (50, 'Beryl', 'Everett', 'BerylEverett50@gmail.com', '(713) 878-4338', '901 W. High Noon Dr.', 'Rockville', 20821, 'MD', 'United States of America', 'F');
INSERT INTO public.patient (patient_id, first_name, last_name, email, phone, street_address, city, zip, states, country, gender) VALUES (51, 'Stacy', 'Dixon', 'StacyDixon51@gmail.com', '(441) 276-4008', '9273 Kent Street', 'Rockville', 32845, 'MD', 'United States of America', 'F');


--
-- TOC entry 3368 (class 0 OID 17520)
-- Dependencies: 212
-- Data for Name: patient_nurse; Type: TABLE DATA; Schema: public; Owner: keyurpatel
--

INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (1, 1, 1, '2019-11-01', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (2, 3, 3, '2019-11-03', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (3, 4, 4, '2019-11-05', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (4, 5, 7, '2019-11-07', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (5, 10, 9, '2019-11-09', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (6, 11, 11, '2019-11-11', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (7, 12, 14, '2019-11-13', '2019-11-14');
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (8, 14, 16, '2019-11-15', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (9, 15, 18, '2019-11-17', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (10, 16, 20, '2019-11-19', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (11, 22, 21, '2019-11-21', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (12, 30, 22, '2019-11-23', '2019-11-24');
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (13, 31, 29, '2019-11-25', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (14, 33, 1, '2019-11-27', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (15, 35, 12, '2019-11-29', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (16, 36, 32, '2019-12-01', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (17, 39, 31, '2019-12-03', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (18, 40, 30, '2019-12-05', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (19, 45, 3, '2019-12-07', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (20, 47, 4, '2019-12-09', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (21, 48, 7, '2019-12-11', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (22, 51, 12, '2019-12-13', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (23, 12, 1, '2019-12-15', '2019-12-17');
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (24, 30, 3, '2019-12-17', '2019-12-20');
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (25, 2, 4, '2019-12-19', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (26, 6, 7, '2019-12-21', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (27, 7, 9, '2019-12-23', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (28, 8, 11, '2019-12-25', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (29, 9, 14, '2019-12-27', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (30, 13, 16, '2019-12-29', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (31, 12, 18, '2019-12-31', '2020-01-02');
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (32, 17, 20, '2020-01-02', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (33, 30, 21, '2020-01-04', '2020-01-06');
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (34, 18, 22, '2020-01-06', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (35, 19, 29, '2020-01-08', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (36, 20, 1, '2020-01-10', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (37, 30, 12, '2020-01-12', '2020-01-16');
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (38, 12, 32, '2020-01-14', '2020-01-16');
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (39, 21, 31, '2020-01-16', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (40, 34, 30, '2020-01-18', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (41, 37, 3, '2020-01-20', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (42, 38, 4, '2020-01-22', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (43, 30, 7, '2020-01-24', '2020-01-26');
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (44, 41, 12, '2020-01-26', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (45, 42, 1, '2020-01-28', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (46, 43, 3, '2020-01-30', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (47, 44, 4, '2020-02-01', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (48, 12, 7, '2020-02-03', '2020-02-05');
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (49, 46, 9, '2020-02-05', NULL);
INSERT INTO public.patient_nurse (patient_nurse_id, patient_id, nurse_id, start_date, end_date) VALUES (50, 30, 11, '2020-02-07', '2020-02-10');


--
-- TOC entry 3373 (class 0 OID 17571)
-- Dependencies: 217
-- Data for Name: room; Type: TABLE DATA; Schema: public; Owner: keyurpatel
--

INSERT INTO public.room (room_id, status) VALUES (1, 'occupied');
INSERT INTO public.room (room_id, status) VALUES (2, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (3, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (4, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (5, 'occupied');
INSERT INTO public.room (room_id, status) VALUES (6, 'occupied');
INSERT INTO public.room (room_id, status) VALUES (7, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (8, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (9, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (10, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (11, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (12, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (13, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (14, 'occupied');
INSERT INTO public.room (room_id, status) VALUES (15, 'occupied');
INSERT INTO public.room (room_id, status) VALUES (16, 'occupied');
INSERT INTO public.room (room_id, status) VALUES (17, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (18, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (19, 'occupied');
INSERT INTO public.room (room_id, status) VALUES (20, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (21, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (22, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (23, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (24, 'occupied');
INSERT INTO public.room (room_id, status) VALUES (25, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (26, 'occupied');
INSERT INTO public.room (room_id, status) VALUES (27, 'occupied');
INSERT INTO public.room (room_id, status) VALUES (28, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (29, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (30, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (31, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (32, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (33, 'occupied');
INSERT INTO public.room (room_id, status) VALUES (34, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (35, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (36, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (37, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (38, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (39, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (40, 'occupied');
INSERT INTO public.room (room_id, status) VALUES (41, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (42, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (43, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (44, 'occupied');
INSERT INTO public.room (room_id, status) VALUES (45, 'occupied');
INSERT INTO public.room (room_id, status) VALUES (46, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (47, 'occupied');
INSERT INTO public.room (room_id, status) VALUES (48, 'occupied');
INSERT INTO public.room (room_id, status) VALUES (49, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (50, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (51, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (52, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (53, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (54, 'occupied');
INSERT INTO public.room (room_id, status) VALUES (55, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (56, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (57, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (58, 'occupied');
INSERT INTO public.room (room_id, status) VALUES (59, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (60, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (61, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (62, 'occupied');
INSERT INTO public.room (room_id, status) VALUES (63, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (64, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (65, 'occupied');
INSERT INTO public.room (room_id, status) VALUES (66, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (67, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (68, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (69, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (70, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (71, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (72, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (73, 'vacant');
INSERT INTO public.room (room_id, status) VALUES (74, 'vacant');


--
-- TOC entry 3376 (class 0 OID 17599)
-- Dependencies: 220
-- Data for Name: patient_room; Type: TABLE DATA; Schema: public; Owner: keyurpatel
--

INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (1, 1, 1, '2019-11-01', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (2, 3, 5, '2019-11-03', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (3, 4, 6, '2019-11-05', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (4, 5, 14, '2019-11-07', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (5, 10, 15, '2019-11-09', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (6, 11, 16, '2019-11-11', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (7, 12, 17, '2019-11-13', '2019-11-14');
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (8, 14, 19, '2019-11-15', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (9, 15, 24, '2019-11-17', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (10, 16, 26, '2019-11-19', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (11, 22, 27, '2019-11-21', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (12, 30, 28, '2019-11-23', '2019-11-24');
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (13, 31, 33, '2019-11-25', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (14, 33, 40, '2019-11-27', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (15, 35, 44, '2019-11-29', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (16, 36, 45, '2019-12-01', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (17, 39, 47, '2019-12-03', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (18, 40, 48, '2019-12-05', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (19, 45, 54, '2019-12-07', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (20, 47, 58, '2019-12-09', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (21, 48, 62, '2019-12-11', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (22, 51, 65, '2019-12-13', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (23, 12, 1, '2019-12-15', '2019-12-17');
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (24, 30, 5, '2019-12-17', '2019-12-20');
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (25, 2, 6, '2019-12-19', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (26, 6, 14, '2019-12-21', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (27, 7, 15, '2019-12-23', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (28, 8, 16, '2019-12-25', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (29, 9, 14, '2019-12-27', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (30, 13, 15, '2019-12-29', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (31, 12, 16, '2019-12-31', '2020-01-02');
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (32, 17, 17, '2020-01-02', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (33, 30, 19, '2020-01-04', '2020-01-06');
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (34, 18, 24, '2020-01-06', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (35, 19, 28, '2020-01-08', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (36, 20, 33, '2020-01-10', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (37, 30, 40, '2020-01-12', '2020-01-16');
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (38, 12, 44, '2020-01-14', '2020-01-16');
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (39, 21, 45, '2020-01-16', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (40, 34, 47, '2020-01-18', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (41, 37, 48, '2020-01-20', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (42, 38, 54, '2020-01-22', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (43, 30, 28, '2020-01-24', '2020-01-26');
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (44, 41, 33, '2020-01-26', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (45, 42, 40, '2020-01-28', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (46, 43, 44, '2020-01-30', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (47, 44, 45, '2020-02-01', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (48, 12, 47, '2020-02-03', '2020-02-05');
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (49, 46, 48, '2020-02-05', NULL);
INSERT INTO public.patient_room (inpatient_id, patient_id, room_id, start_date, end_date) VALUES (50, 30, 54, '2020-02-07', '2020-02-10');


--
-- TOC entry 3370 (class 0 OID 17543)
-- Dependencies: 214
-- Data for Name: prescription; Type: TABLE DATA; Schema: public; Owner: keyurpatel
--

INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (1, 1, '2019-11-01');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (2, 2, '2018-08-11');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (3, 3, '2019-11-03');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (4, 4, '2019-11-05');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (5, 5, '2019-11-07');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (6, 7, '2017-05-13');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (7, 10, '2019-11-09');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (8, 11, '2019-11-11');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (9, 12, '2019-11-13');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (10, 13, '2018-11-09');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (11, 14, '2019-11-15');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (12, 15, '2019-11-17');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (13, 16, '2019-11-19');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (14, 17, '2017-05-13');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (15, 22, '2019-11-21');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (16, 23, '2018-08-11');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (17, 28, '2018-08-11');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (18, 29, '2018-11-09');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (19, 30, '2019-11-23');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (20, 31, '2019-11-25');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (21, 32, '2017-05-13');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (22, 33, '2019-11-27');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (23, 34, '2018-08-11');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (24, 35, '2019-11-29');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (25, 36, '2019-12-01');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (26, 39, '2019-12-03');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (27, 40, '2019-12-05');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (28, 41, '2017-05-13');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (29, 45, '2019-12-07');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (30, 46, '2017-05-13');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (31, 47, '2019-12-09');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (32, 48, '2019-12-11');
INSERT INTO public.prescription (prescription_id, diagnosis_id, prescription_date) VALUES (33, 51, '2019-12-13');


--
-- TOC entry 3371 (class 0 OID 17554)
-- Dependencies: 215
-- Data for Name: prescription_medicine; Type: TABLE DATA; Schema: public; Owner: keyurpatel
--

INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (1, 1, '2019-11-01', '2019-11-30', 35);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (2, 2, '2018-08-11', '2018-12-01', 40);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (3, 3, '2019-11-03', '2019-12-02', 20);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (4, 4, '2019-11-05', '2019-12-03', 30);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (5, 5, '2019-11-07', '2019-12-04', 40);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (6, 6, '2017-05-13', '2017-06-05', 60);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (7, 8, '2019-11-09', '2019-12-06', 20);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (8, 10, '2019-11-11', '2019-12-07', 30);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (9, 12, '2019-11-13', '2019-12-08', 30);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (10, 9, '2018-11-09', '2018-12-09', 30);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (11, 15, '2019-11-15', '2019-12-10', 60);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (12, 16, '2019-11-17', '2019-12-11', 90);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (13, 19, '2019-11-19', '2019-12-12', 70);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (14, 15, '2017-05-13', '2017-07-13', 60);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (15, 15, '2019-11-21', '2019-12-14', 30);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (16, 17, '2018-08-11', '2018-11-15', 20);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (17, 2, '2018-08-11', '2018-11-16', 20);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (18, 6, '2018-11-09', '2018-12-17', 20);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (19, 19, '2019-11-23', '2019-12-18', 10);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (20, 4, '2019-11-25', '2019-12-19', 10);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (21, 9, '2017-05-13', '2017-12-20', 20);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (22, 3, '2019-11-27', '2019-12-21', 30);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (23, 15, '2018-08-11', '2018-12-22', 40);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (24, 3, '2019-11-29', '2019-12-23', 40);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (25, 1, '2019-12-01', '2019-12-24', 30);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (26, 15, '2019-12-03', '2019-12-25', 30);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (27, 16, '2019-12-05', '2019-12-26', 20);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (28, 17, '2017-05-13', '2017-06-27', 10);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (29, 19, '2019-12-07', '2019-12-28', 10);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (30, 2, '2017-05-13', '2017-07-29', 50);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (31, 8, '2019-12-09', '2019-12-30', 30);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (32, 3, '2019-12-11', '2019-12-31', 20);
INSERT INTO public.prescription_medicine (prescription_id, medicine_id, start_date, end_date, quantity) VALUES (33, 4, '2019-12-13', '2020-01-01', 40);


--
-- TOC entry 3375 (class 0 OID 17580)
-- Dependencies: 219
-- Data for Name: visit; Type: TABLE DATA; Schema: public; Owner: keyurpatel
--

INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (1, 1, 1, '2019-11-01');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (2, 2, 1, '2018-08-11');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (3, 3, 2, '2019-11-03');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (4, 4, 3, '2019-11-05');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (5, 5, 4, '2019-11-07');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (6, 6, 1, '2018-11-09');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (7, 7, 2, '2017-05-13');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (8, 8, 3, '2018-08-11');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (9, 9, 4, '2018-08-11');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (10, 10, 5, '2019-11-09');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (11, 11, 6, '2019-11-11');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (12, 12, 7, '2019-11-13');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (13, 13, 8, '2018-11-09');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (14, 14, 9, '2019-11-15');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (15, 15, 10, '2019-11-17');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (16, 16, 11, '2019-11-19');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (17, 17, 12, '2017-05-13');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (18, 18, 13, '2018-08-11');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (19, 19, 14, '2018-08-11');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (20, 20, 15, '2018-11-09');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (21, 21, 11, '2017-05-13');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (22, 22, 12, '2019-11-21');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (23, 23, 13, '2018-08-11');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (24, 24, 14, '2018-08-11');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (25, 25, 15, '2018-11-09');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (26, 26, 12, '2017-05-13');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (27, 27, 1, '2018-08-11');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (28, 28, 2, '2018-08-11');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (29, 29, 3, '2018-11-09');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (30, 30, 4, '2019-11-23');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (31, 31, 5, '2019-11-25');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (32, 32, 6, '2017-05-13');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (33, 33, 7, '2019-11-27');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (34, 34, 8, '2020-01-18');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (35, 35, 9, '2019-11-29');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (36, 36, 10, '2019-12-01');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (37, 37, 11, '2018-08-11');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (38, 38, 12, '2020-01-22');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (39, 39, 13, '2019-12-03');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (40, 40, 14, '2019-12-05');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (41, 41, 15, '2020-01-26');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (42, 42, 1, '2020-01-28');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (43, 43, 2, '2020-01-30');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (44, 44, 3, '2020-02-01');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (45, 45, 4, '2019-12-07');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (46, 46, 5, '2020-02-05');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (47, 47, 6, '2019-12-09');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (48, 48, 7, '2019-12-11');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (49, 49, 8, '2018-08-11');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (50, 50, 9, '2018-08-11');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (51, 51, 10, '2019-12-13');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (52, 12, 7, '2019-12-15');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (53, 12, 7, '2019-12-31');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (54, 12, 7, '2020-01-14');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (55, 12, 7, '2020-02-03');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (56, 30, 4, '2019-12-17');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (57, 30, 4, '2020-01-04');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (58, 30, 4, '2020-01-12');
INSERT INTO public.visit (visit_id, patient_id, doctor_id, visit_date) VALUES (59, 30, 4, '2020-02-07');


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 201
-- Name: diagnosis_diagnosis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: keyurpatel
--

SELECT pg_catalog.setval('public.diagnosis_diagnosis_id_seq', 1, false);


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 203
-- Name: doctor_doctor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: keyurpatel
--

SELECT pg_catalog.setval('public.doctor_doctor_id_seq', 1, false);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 205
-- Name: medicine_medicine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: keyurpatel
--

SELECT pg_catalog.setval('public.medicine_medicine_id_seq', 1, false);


--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 207
-- Name: nurse_nurse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: keyurpatel
--

SELECT pg_catalog.setval('public.nurse_nurse_id_seq', 1, false);


--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 211
-- Name: patient_nurse_patient_nurse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: keyurpatel
--

SELECT pg_catalog.setval('public.patient_nurse_patient_nurse_id_seq', 1, false);


--
-- TOC entry 3388 (class 0 OID 0)
-- Dependencies: 209
-- Name: patient_patient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: keyurpatel
--

SELECT pg_catalog.setval('public.patient_patient_id_seq', 1, false);


--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 213
-- Name: prescription_prescription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: keyurpatel
--

SELECT pg_catalog.setval('public.prescription_prescription_id_seq', 1, false);


--
-- TOC entry 3390 (class 0 OID 0)
-- Dependencies: 216
-- Name: room_room_id_seq; Type: SEQUENCE SET; Schema: public; Owner: keyurpatel
--

SELECT pg_catalog.setval('public.room_room_id_seq', 1, false);


--
-- TOC entry 3391 (class 0 OID 0)
-- Dependencies: 218
-- Name: visit_visit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: keyurpatel
--

SELECT pg_catalog.setval('public.visit_visit_id_seq', 1, false);


-- Completed on 2021-02-13 01:12:38 EST

--
-- PostgreSQL database dump complete
--

