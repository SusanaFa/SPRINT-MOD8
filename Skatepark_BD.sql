PGDMP       %    $                z         	   skatepark    13.6    13.6     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    41445 	   skatepark    DATABASE     e   CREATE DATABASE skatepark WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE skatepark;
                postgres    false            �            1259    49639    skaters    TABLE     h  CREATE TABLE public.skaters (
    id integer NOT NULL,
    email character varying(50) NOT NULL,
    nombre character varying(25) NOT NULL,
    password character varying(25) NOT NULL,
    anos_experiencia integer NOT NULL,
    especialidad character varying(50) NOT NULL,
    foto character varying(255) NOT NULL,
    estado boolean DEFAULT false NOT NULL
);
    DROP TABLE public.skaters;
       public         heap    postgres    false            �            1259    49637    skaters_id_seq    SEQUENCE     �   CREATE SEQUENCE public.skaters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.skaters_id_seq;
       public          postgres    false    201            �           0    0    skaters_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.skaters_id_seq OWNED BY public.skaters.id;
          public          postgres    false    200            "           2604    49642 
   skaters id    DEFAULT     h   ALTER TABLE ONLY public.skaters ALTER COLUMN id SET DEFAULT nextval('public.skaters_id_seq'::regclass);
 9   ALTER TABLE public.skaters ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            �          0    49639    skaters 
   TABLE DATA           l   COPY public.skaters (id, email, nombre, password, anos_experiencia, especialidad, foto, estado) FROM stdin;
    public          postgres    false    201   �       �           0    0    skaters_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.skaters_id_seq', 1, true);
          public          postgres    false    200            %           2606    49647    skaters skaters_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.skaters
    ADD CONSTRAINT skaters_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.skaters DROP CONSTRAINT skaters_email_key;
       public            postgres    false    201            '           2606    49645    skaters skaters_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.skaters
    ADD CONSTRAINT skaters_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.skaters DROP CONSTRAINT skaters_pkey;
       public            postgres    false    201            �   7   1	tony@mail.cl	Tony Hawk	123456	20	Turn 900	tony.jpg	t
    \.


     