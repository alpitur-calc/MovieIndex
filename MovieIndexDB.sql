PGDMP         #                y           MovieIndexDB    13.4 (Debian 13.4-1.pgdg100+1)    13.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16384    MovieIndexDB    DATABASE     b   CREATE DATABASE "MovieIndexDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE "MovieIndexDB";
                postgres    false            �            1259    16385    movie    TABLE     7   CREATE TABLE public.movie (
    id integer NOT NULL
);
    DROP TABLE public.movie;
       public         heap    postgres    false            �            1259    16388    review    TABLE     �   CREATE TABLE public.review (
    iduser character varying NOT NULL,
    idmovie integer NOT NULL,
    content character varying NOT NULL,
    rating integer NOT NULL,
    date date NOT NULL
);
    DROP TABLE public.review;
       public         heap    postgres    false            �            1259    16394    user    TABLE     �   CREATE TABLE public."user" (
    username character varying NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL,
    biography character varying,
    profileimage character varying,
    watchlist character varying[]
);
    DROP TABLE public."user";
       public         heap    postgres    false            �          0    16385    movie 
   TABLE DATA           #   COPY public.movie (id) FROM stdin;
    public          postgres    false    200   a       �          0    16388    review 
   TABLE DATA           H   COPY public.review (iduser, idmovie, content, rating, date) FROM stdin;
    public          postgres    false    201   �       �          0    16394    user 
   TABLE DATA           _   COPY public."user" (username, email, password, biography, profileimage, watchlist) FROM stdin;
    public          postgres    false    202   �       �
           2606    16401    movie movie_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.movie DROP CONSTRAINT movie_pkey;
       public            postgres    false    200            �
           2606    16403    user user_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (username);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    202            �
           2606    16404    review idmovie    FK CONSTRAINT     m   ALTER TABLE ONLY public.review
    ADD CONSTRAINT idmovie FOREIGN KEY (idmovie) REFERENCES public.movie(id);
 8   ALTER TABLE ONLY public.review DROP CONSTRAINT idmovie;
       public          postgres    false    200    201    2812                        2606    16409    review iduser    FK CONSTRAINT     r   ALTER TABLE ONLY public.review
    ADD CONSTRAINT iduser FOREIGN KEY (iduser) REFERENCES public."user"(username);
 7   ALTER TABLE ONLY public.review DROP CONSTRAINT iduser;
       public          postgres    false    202    201    2814            �   6   x��� 1���������$�R�F����PS���nڨ�����;�8�
:      �      x������ � �      �      x������ � �     