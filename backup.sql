PGDMP                         y            authService    13.2    13.2     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    296345    authService    DATABASE     q   CREATE DATABASE "authService" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "authService";
                postgres    false            p           1247    296347    users_role_enum    TYPE     H   CREATE TYPE public.users_role_enum AS ENUM (
    'admin',
    'user'
);
 "   DROP TYPE public.users_role_enum;
       public          postgres    false            ?            1259    296353    users    TABLE     Z  CREATE TABLE public.users (
    id integer NOT NULL,
    "createdAt" date DEFAULT now() NOT NULL,
    "updatedAt" date DEFAULT now() NOT NULL,
    username character varying NOT NULL,
    password character varying NOT NULL,
    email character varying NOT NULL,
    role public.users_role_enum DEFAULT 'user'::public.users_role_enum NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false    624    624            ?            1259    296351    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    201            ?           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    200            &           2604    296356    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            ?          0    296353    users 
   TABLE DATA           ^   COPY public.users (id, "createdAt", "updatedAt", username, password, email, role) FROM stdin;
    public          postgres    false    201   ?       ?           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 11, true);
          public          postgres    false    200            -           2606    296364 $   users PK_a3ffb1c0c8416b9fc6f907b7433 
   CONSTRAINT     d   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "PK_a3ffb1c0c8416b9fc6f907b7433" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.users DROP CONSTRAINT "PK_a3ffb1c0c8416b9fc6f907b7433";
       public            postgres    false    201            /           2606    296368 $   users UQ_97672ac88f789774dd47f7c8be3 
   CONSTRAINT     b   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "UQ_97672ac88f789774dd47f7c8be3" UNIQUE (email);
 P   ALTER TABLE ONLY public.users DROP CONSTRAINT "UQ_97672ac88f789774dd47f7c8be3";
       public            postgres    false    201            1           2606    296366 $   users UQ_fe0bb3f6520ee0469504521e710 
   CONSTRAINT     e   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "UQ_fe0bb3f6520ee0469504521e710" UNIQUE (username);
 P   ALTER TABLE ONLY public.users DROP CONSTRAINT "UQ_fe0bb3f6520ee0469504521e710";
       public            postgres    false    201            *           1259    296370    IDX_97672ac88f789774dd47f7c8be    INDEX     S   CREATE INDEX "IDX_97672ac88f789774dd47f7c8be" ON public.users USING btree (email);
 4   DROP INDEX public."IDX_97672ac88f789774dd47f7c8be";
       public            postgres    false    201            +           1259    296369    IDX_fe0bb3f6520ee0469504521e71    INDEX     V   CREATE INDEX "IDX_fe0bb3f6520ee0469504521e71" ON public.users USING btree (username);
 4   DROP INDEX public."IDX_fe0bb3f6520ee0469504521e71";
       public            postgres    false    201            ?   ?   x?u?9?@  k?? ?؉x???rc??%??%?כ`Lh?f?ay(?d?f???킁??ͷ??ћ@???]/?[????????4??4?>?e?]??q?
۴???{?jR ?ܢW?׿ݹ??I?ۯQ/Ex?%?????PMJ??4t2t??d?.???79?s ?B?C?     