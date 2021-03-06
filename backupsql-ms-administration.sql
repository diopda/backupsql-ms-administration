PGDMP     7                    y            administration    13.2    13.2 )    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16542    administration    DATABASE     c   CREATE DATABASE administration WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE administration;
             
   macbookpro    false            ?            1259    16543    bayeur    TABLE       CREATE TABLE public.bayeur (
    id bigint NOT NULL,
    adresse character varying(255),
    email character varying(255),
    nom character varying(255),
    prenom character varying(255),
    reference character varying(255),
    tel character varying(255)
);
    DROP TABLE public.bayeur;
       public         heap    diop    false            ?            1259    16551 
   conducteur    TABLE     u  CREATE TABLE public.conducteur (
    id bigint NOT NULL,
    adresse character varying(255),
    email character varying(255),
    nom character varying(255),
    prenom character varying(255),
    reference character varying(255),
    tel character varying(255),
    permi_conduire character varying(255),
    type_conducteur character varying(255),
    machine bigint
);
    DROP TABLE public.conducteur;
       public         heap    diop    false            ?            1259    16559    gestionnaire    TABLE     :  CREATE TABLE public.gestionnaire (
    id bigint NOT NULL,
    adresse character varying(255),
    email character varying(255),
    nom character varying(255),
    prenom character varying(255),
    reference character varying(255),
    tel character varying(255),
    type_gestionnaire character varying(255)
);
     DROP TABLE public.gestionnaire;
       public         heap    diop    false            ?            1259    24937    paysan    TABLE     u  CREATE TABLE public.paysan (
    id bigint NOT NULL,
    adresse character varying(255),
    email character varying(255),
    nom character varying(255),
    prenom character varying(255),
    reference character varying(255),
    tel character varying(255),
    fonction character varying(255),
    idgroupement bigint,
    saison bigint,
    superficie real NOT NULL
);
    DROP TABLE public.paysan;
       public         heap    diop    false            ?            1259    16575    personne    TABLE       CREATE TABLE public.personne (
    id bigint NOT NULL,
    adresse character varying(255),
    email character varying(255),
    nom character varying(255),
    prenom character varying(255),
    reference character varying(255),
    tel character varying(255)
);
    DROP TABLE public.personne;
       public         heap    diop    false            ?            1259    49493    roles    TABLE     V   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(60)
);
    DROP TABLE public.roles;
       public         heap    diop    false            ?            1259    49491    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          diop    false    206            ?           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          diop    false    205            ?            1259    49499 
   user_roles    TABLE     ]   CREATE TABLE public.user_roles (
    user_id bigint NOT NULL,
    role_id bigint NOT NULL
);
    DROP TABLE public.user_roles;
       public         heap    diop    false            ?            1259    49506    users    TABLE     ?   CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying(50),
    name character varying(50),
    password character varying(100),
    username character varying(50)
);
    DROP TABLE public.users;
       public         heap    diop    false            ?            1259    49504    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          diop    false    209            ?           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          diop    false    208            N           2604    49496    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          diop    false    206    205    206            O           2604    49509    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          diop    false    208    209    209            ?          0    16543    bayeur 
   TABLE DATA           Q   COPY public.bayeur (id, adresse, email, nom, prenom, reference, tel) FROM stdin;
    public          diop    false    200   /       ?          0    16551 
   conducteur 
   TABLE DATA              COPY public.conducteur (id, adresse, email, nom, prenom, reference, tel, permi_conduire, type_conducteur, machine) FROM stdin;
    public          diop    false    201   ?/       ?          0    16559    gestionnaire 
   TABLE DATA           j   COPY public.gestionnaire (id, adresse, email, nom, prenom, reference, tel, type_gestionnaire) FROM stdin;
    public          diop    false    202   0       ?          0    24937    paysan 
   TABLE DATA           }   COPY public.paysan (id, adresse, email, nom, prenom, reference, tel, fonction, idgroupement, saison, superficie) FROM stdin;
    public          diop    false    204   ?1       ?          0    16575    personne 
   TABLE DATA           S   COPY public.personne (id, adresse, email, nom, prenom, reference, tel) FROM stdin;
    public          diop    false    203   ?2       ?          0    49493    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          diop    false    206   ?2       ?          0    49499 
   user_roles 
   TABLE DATA           6   COPY public.user_roles (user_id, role_id) FROM stdin;
    public          diop    false    207   ?2       ?          0    49506    users 
   TABLE DATA           D   COPY public.users (id, email, name, password, username) FROM stdin;
    public          diop    false    209   3       ?           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          diop    false    205            ?           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          diop    false    208            Q           2606    16550    bayeur bayeur_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.bayeur
    ADD CONSTRAINT bayeur_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.bayeur DROP CONSTRAINT bayeur_pkey;
       public            diop    false    200            S           2606    16558    conducteur conducteur_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.conducteur
    ADD CONSTRAINT conducteur_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.conducteur DROP CONSTRAINT conducteur_pkey;
       public            diop    false    201            U           2606    16566    gestionnaire gestionnaire_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.gestionnaire
    ADD CONSTRAINT gestionnaire_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.gestionnaire DROP CONSTRAINT gestionnaire_pkey;
       public            diop    false    202            Y           2606    24944    paysan paysan_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.paysan
    ADD CONSTRAINT paysan_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.paysan DROP CONSTRAINT paysan_pkey;
       public            diop    false    204            W           2606    16582    personne personne_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.personne
    ADD CONSTRAINT personne_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.personne DROP CONSTRAINT personne_pkey;
       public            diop    false    203            [           2606    49498    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            diop    false    206            a           2606    49517 !   users uk6dotkott2kjsp8vw4d0m25fb7 
   CONSTRAINT     ]   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk6dotkott2kjsp8vw4d0m25fb7 UNIQUE (email);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT uk6dotkott2kjsp8vw4d0m25fb7;
       public            diop    false    209            ]           2606    49513 "   roles uk_nb4h0p6txrmfc0xbrd1kglp9t 
   CONSTRAINT     ]   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT uk_nb4h0p6txrmfc0xbrd1kglp9t UNIQUE (name);
 L   ALTER TABLE ONLY public.roles DROP CONSTRAINT uk_nb4h0p6txrmfc0xbrd1kglp9t;
       public            diop    false    206            c           2606    49515 !   users ukr43af9ap4edm43mmtq01oddj6 
   CONSTRAINT     `   ALTER TABLE ONLY public.users
    ADD CONSTRAINT ukr43af9ap4edm43mmtq01oddj6 UNIQUE (username);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT ukr43af9ap4edm43mmtq01oddj6;
       public            diop    false    209            _           2606    49503    user_roles user_roles_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_id, role_id);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public            diop    false    207    207            e           2606    49511    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            diop    false    209            f           2606    49518 &   user_roles fkh8ciramu9cc9q3qcqiv4ue8a6    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fkh8ciramu9cc9q3qcqiv4ue8a6 FOREIGN KEY (role_id) REFERENCES public.roles(id);
 P   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT fkh8ciramu9cc9q3qcqiv4ue8a6;
       public          diop    false    206    3163    207            g           2606    49523 &   user_roles fkhfh9dx7w3ubf1co1vdev94g3f    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fkhfh9dx7w3ubf1co1vdev94g3f FOREIGN KEY (user_id) REFERENCES public.users(id);
 P   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT fkhfh9dx7w3ubf1co1vdev94g3f;
       public          diop    false    3173    207    209            ?   ?   x?M?1?0D??Y
?v֞?&!????0`?????????k ? rI?9!ǔ1lÆU??P??ȑbB?7S?<C??<<???Ń??^??+???8??>/)?.'???Wx?Z??1??]U???m????W?{?ZmjSk?UJ?/AE;?      ?   ?   x?}??j?@??????
???%?¸)#???|?MӡN&dŻo(?EQ/?y??D?1????a?O'b:P??y???*YK?~?!/Ɓ?????Dܥ??4Ep?q<^?8?ٟw4?	?|+??_k?F?k??3?I?J+YW?`Ӽ??????_K?.??4?'?????V??i?пw???=??????ۥ?-sd?      ?   P  x????n?0????D??r?T?P?j??l???Q??]??8TU??????P9??.XՖo?]?)? ???`??ϲ ???(6xr>?7?r? UB?;?jB9he?l??3??0?*???ɻYB?5>??4??s.??e???F???uD??$!?B?*??\훲??nϬ?Nh???h??.?`?{4|ߵ@RȬ??	?f?;???6??<?}An?V?-??(Y?߶᜺?!??}?-?J??,???G?ǰY?N?UN4p???F?>????* ??:?Q^?F?w????f??y<??A?????s`????A?쵳l??L;??ɲ??Y??      ?   ?   x?m?M
?0F?_N?	D?1fWA??x 7??A?4?????VZf????K??߯~vAC?@F????z?p4?z?3??K?,??ʥz}ĈB?ʢ\?.P|?mpp?H?&ݑ?"??d?6l?è????*??R?,͢3W?`?%?c-???ve????P?=E2ƞc?IT      ?   9   x?3?LI?N,?)?鹉?9z????)??ANS3NsscsSccC?=... ??$      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?     