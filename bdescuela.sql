PGDMP     8    $                {         	   bdescuela    15.3    15.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    32978 	   bdescuela    DATABASE     |   CREATE DATABASE bdescuela WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE bdescuela;
                postgres    false            �            1259    32980    alumno    TABLE     �   CREATE TABLE public.alumno (
    id integer NOT NULL,
    nombres character varying(50),
    apellidos character varying(50)
);
    DROP TABLE public.alumno;
       public         heap    postgres    false            �            1259    32979    alumno_id_seq    SEQUENCE     �   CREATE SEQUENCE public.alumno_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.alumno_id_seq;
       public          postgres    false    215            �           0    0    alumno_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.alumno_id_seq OWNED BY public.alumno.id;
          public          postgres    false    214            e           2604    32983 	   alumno id    DEFAULT     f   ALTER TABLE ONLY public.alumno ALTER COLUMN id SET DEFAULT nextval('public.alumno_id_seq'::regclass);
 8   ALTER TABLE public.alumno ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �          0    32980    alumno 
   TABLE DATA           8   COPY public.alumno (id, nombres, apellidos) FROM stdin;
    public          postgres    false    215   [
       �           0    0    alumno_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.alumno_id_seq', 6, true);
          public          postgres    false    214            g           2606    32985    alumno alumno_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT alumno_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.alumno DROP CONSTRAINT alumno_pkey;
       public            postgres    false    215            �   M   x�3�HL�t��I���2��/.�T��M,*��K��2��,*���O�L��2�tN,��/�t�ϫJ�I-����� �i�     