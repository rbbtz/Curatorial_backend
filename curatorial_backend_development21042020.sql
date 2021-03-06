PGDMP                         x           curatorial_backend_development    12.1    12.1 S    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    18227    curatorial_backend_development    DATABASE     �   CREATE DATABASE curatorial_backend_development WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_GB.UTF-8' LC_CTYPE = 'en_GB.UTF-8';
 .   DROP DATABASE curatorial_backend_development;
                erinjohnson    false            �            1259    18237    ar_internal_metadata    TABLE     �   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         heap    erinjohnson    false            �            1259    18328    artwork_contents    TABLE     O  CREATE TABLE public.artwork_contents (
    id bigint NOT NULL,
    content_id bigint NOT NULL,
    artwork_id bigint NOT NULL,
    score double precision,
    confidence double precision,
    topicality double precision,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 $   DROP TABLE public.artwork_contents;
       public         heap    erinjohnson    false            �            1259    18326    artwork_contents_id_seq    SEQUENCE     �   CREATE SEQUENCE public.artwork_contents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.artwork_contents_id_seq;
       public          erinjohnson    false    217            �           0    0    artwork_contents_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.artwork_contents_id_seq OWNED BY public.artwork_contents.id;
          public          erinjohnson    false    216            �            1259    18348    artwork_exhibitions    TABLE     �   CREATE TABLE public.artwork_exhibitions (
    id bigint NOT NULL,
    artwork_id bigint NOT NULL,
    exhibition_id bigint NOT NULL
);
 '   DROP TABLE public.artwork_exhibitions;
       public         heap    erinjohnson    false            �            1259    18346    artwork_exhibitions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.artwork_exhibitions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.artwork_exhibitions_id_seq;
       public          erinjohnson    false    219            �           0    0    artwork_exhibitions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.artwork_exhibitions_id_seq OWNED BY public.artwork_exhibitions.id;
          public          erinjohnson    false    218            �            1259    18306    artworks    TABLE     �  CREATE TABLE public.artworks (
    id bigint NOT NULL,
    artist character varying,
    title character varying,
    medium character varying,
    description text,
    collection character varying,
    location character varying,
    image_url character varying,
    image_copyright character varying,
    permalink character varying,
    origin_id character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.artworks;
       public         heap    erinjohnson    false            �            1259    18304    artworks_id_seq    SEQUENCE     x   CREATE SEQUENCE public.artworks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.artworks_id_seq;
       public          erinjohnson    false    213            �           0    0    artworks_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.artworks_id_seq OWNED BY public.artworks.id;
          public          erinjohnson    false    212            �            1259    18317    contents    TABLE     �   CREATE TABLE public.contents (
    id bigint NOT NULL,
    description character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.contents;
       public         heap    erinjohnson    false            �            1259    18315    contents_id_seq    SEQUENCE     x   CREATE SEQUENCE public.contents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.contents_id_seq;
       public          erinjohnson    false    215            �           0    0    contents_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.contents_id_seq OWNED BY public.contents.id;
          public          erinjohnson    false    214            �            1259    18286    exhibition_likes    TABLE     �   CREATE TABLE public.exhibition_likes (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    exhibition_id bigint NOT NULL
);
 $   DROP TABLE public.exhibition_likes;
       public         heap    erinjohnson    false            �            1259    18284    exhibition_likes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.exhibition_likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.exhibition_likes_id_seq;
       public          erinjohnson    false    211            �           0    0    exhibition_likes_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.exhibition_likes_id_seq OWNED BY public.exhibition_likes.id;
          public          erinjohnson    false    210            �            1259    18269    exhibitions    TABLE     /  CREATE TABLE public.exhibitions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    summary character varying,
    title character varying,
    description text,
    public boolean,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.exhibitions;
       public         heap    erinjohnson    false            �            1259    18267    exhibitions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.exhibitions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.exhibitions_id_seq;
       public          erinjohnson    false    209            �           0    0    exhibitions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.exhibitions_id_seq OWNED BY public.exhibitions.id;
          public          erinjohnson    false    208            �            1259    18258    relationships    TABLE     �   CREATE TABLE public.relationships (
    id bigint NOT NULL,
    follower_id integer,
    followed_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 !   DROP TABLE public.relationships;
       public         heap    erinjohnson    false            �            1259    18256    relationships_id_seq    SEQUENCE     }   CREATE SEQUENCE public.relationships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.relationships_id_seq;
       public          erinjohnson    false    207            �           0    0    relationships_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.relationships_id_seq OWNED BY public.relationships.id;
          public          erinjohnson    false    206            �            1259    18229    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         heap    erinjohnson    false            �            1259    18247    users    TABLE     U  CREATE TABLE public.users (
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    email character varying,
    password_digest character varying,
    biography text,
    public boolean,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    erinjohnson    false            �            1259    18245    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          erinjohnson    false    205            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          erinjohnson    false    204            1           2604    18331    artwork_contents id    DEFAULT     z   ALTER TABLE ONLY public.artwork_contents ALTER COLUMN id SET DEFAULT nextval('public.artwork_contents_id_seq'::regclass);
 B   ALTER TABLE public.artwork_contents ALTER COLUMN id DROP DEFAULT;
       public          erinjohnson    false    216    217    217            2           2604    18351    artwork_exhibitions id    DEFAULT     �   ALTER TABLE ONLY public.artwork_exhibitions ALTER COLUMN id SET DEFAULT nextval('public.artwork_exhibitions_id_seq'::regclass);
 E   ALTER TABLE public.artwork_exhibitions ALTER COLUMN id DROP DEFAULT;
       public          erinjohnson    false    218    219    219            /           2604    18309    artworks id    DEFAULT     j   ALTER TABLE ONLY public.artworks ALTER COLUMN id SET DEFAULT nextval('public.artworks_id_seq'::regclass);
 :   ALTER TABLE public.artworks ALTER COLUMN id DROP DEFAULT;
       public          erinjohnson    false    212    213    213            0           2604    18320    contents id    DEFAULT     j   ALTER TABLE ONLY public.contents ALTER COLUMN id SET DEFAULT nextval('public.contents_id_seq'::regclass);
 :   ALTER TABLE public.contents ALTER COLUMN id DROP DEFAULT;
       public          erinjohnson    false    214    215    215            .           2604    18289    exhibition_likes id    DEFAULT     z   ALTER TABLE ONLY public.exhibition_likes ALTER COLUMN id SET DEFAULT nextval('public.exhibition_likes_id_seq'::regclass);
 B   ALTER TABLE public.exhibition_likes ALTER COLUMN id DROP DEFAULT;
       public          erinjohnson    false    211    210    211            -           2604    18272    exhibitions id    DEFAULT     p   ALTER TABLE ONLY public.exhibitions ALTER COLUMN id SET DEFAULT nextval('public.exhibitions_id_seq'::regclass);
 =   ALTER TABLE public.exhibitions ALTER COLUMN id DROP DEFAULT;
       public          erinjohnson    false    208    209    209            ,           2604    18261    relationships id    DEFAULT     t   ALTER TABLE ONLY public.relationships ALTER COLUMN id SET DEFAULT nextval('public.relationships_id_seq'::regclass);
 ?   ALTER TABLE public.relationships ALTER COLUMN id DROP DEFAULT;
       public          erinjohnson    false    207    206    207            +           2604    18250    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          erinjohnson    false    205    204    205            �          0    18237    ar_internal_metadata 
   TABLE DATA           R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public          erinjohnson    false    203   �e       �          0    18328    artwork_contents 
   TABLE DATA           }   COPY public.artwork_contents (id, content_id, artwork_id, score, confidence, topicality, created_at, updated_at) FROM stdin;
    public          erinjohnson    false    217   Lf       �          0    18348    artwork_exhibitions 
   TABLE DATA           L   COPY public.artwork_exhibitions (id, artwork_id, exhibition_id) FROM stdin;
    public          erinjohnson    false    219   D{       �          0    18306    artworks 
   TABLE DATA           �   COPY public.artworks (id, artist, title, medium, description, collection, location, image_url, image_copyright, permalink, origin_id, created_at, updated_at) FROM stdin;
    public          erinjohnson    false    213   a{       �          0    18317    contents 
   TABLE DATA           K   COPY public.contents (id, description, created_at, updated_at) FROM stdin;
    public          erinjohnson    false    215   %�       �          0    18286    exhibition_likes 
   TABLE DATA           F   COPY public.exhibition_likes (id, user_id, exhibition_id) FROM stdin;
    public          erinjohnson    false    211   5�       �          0    18269    exhibitions 
   TABLE DATA           o   COPY public.exhibitions (id, user_id, summary, title, description, public, created_at, updated_at) FROM stdin;
    public          erinjohnson    false    209   R�       �          0    18258    relationships 
   TABLE DATA           ]   COPY public.relationships (id, follower_id, followed_id, created_at, updated_at) FROM stdin;
    public          erinjohnson    false    207   o�       �          0    18229    schema_migrations 
   TABLE DATA           4   COPY public.schema_migrations (version) FROM stdin;
    public          erinjohnson    false    202   ��       �          0    18247    users 
   TABLE DATA           }   COPY public.users (id, first_name, last_name, email, password_digest, biography, public, created_at, updated_at) FROM stdin;
    public          erinjohnson    false    205   ݍ       �           0    0    artwork_contents_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.artwork_contents_id_seq', 207, true);
          public          erinjohnson    false    216            �           0    0    artwork_exhibitions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.artwork_exhibitions_id_seq', 1, false);
          public          erinjohnson    false    218            �           0    0    artworks_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.artworks_id_seq', 31, true);
          public          erinjohnson    false    212            �           0    0    contents_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.contents_id_seq', 70, true);
          public          erinjohnson    false    214            �           0    0    exhibition_likes_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.exhibition_likes_id_seq', 1, false);
          public          erinjohnson    false    210            �           0    0    exhibitions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.exhibitions_id_seq', 1, false);
          public          erinjohnson    false    208            �           0    0    relationships_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.relationships_id_seq', 1, false);
          public          erinjohnson    false    206            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          erinjohnson    false    204            6           2606    18244 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public            erinjohnson    false    203            J           2606    18333 &   artwork_contents artwork_contents_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.artwork_contents
    ADD CONSTRAINT artwork_contents_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.artwork_contents DROP CONSTRAINT artwork_contents_pkey;
       public            erinjohnson    false    217            N           2606    18353 ,   artwork_exhibitions artwork_exhibitions_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.artwork_exhibitions
    ADD CONSTRAINT artwork_exhibitions_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.artwork_exhibitions DROP CONSTRAINT artwork_exhibitions_pkey;
       public            erinjohnson    false    219            F           2606    18314    artworks artworks_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.artworks
    ADD CONSTRAINT artworks_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.artworks DROP CONSTRAINT artworks_pkey;
       public            erinjohnson    false    213            H           2606    18325    contents contents_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.contents
    ADD CONSTRAINT contents_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.contents DROP CONSTRAINT contents_pkey;
       public            erinjohnson    false    215            B           2606    18291 &   exhibition_likes exhibition_likes_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.exhibition_likes
    ADD CONSTRAINT exhibition_likes_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.exhibition_likes DROP CONSTRAINT exhibition_likes_pkey;
       public            erinjohnson    false    211            ?           2606    18277    exhibitions exhibitions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.exhibitions
    ADD CONSTRAINT exhibitions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.exhibitions DROP CONSTRAINT exhibitions_pkey;
       public            erinjohnson    false    209            =           2606    18263     relationships relationships_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.relationships
    ADD CONSTRAINT relationships_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.relationships DROP CONSTRAINT relationships_pkey;
       public            erinjohnson    false    207            4           2606    18236 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public            erinjohnson    false    202            8           2606    18255    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            erinjohnson    false    205            K           1259    18345 $   index_artwork_contents_on_artwork_id    INDEX     g   CREATE INDEX index_artwork_contents_on_artwork_id ON public.artwork_contents USING btree (artwork_id);
 8   DROP INDEX public.index_artwork_contents_on_artwork_id;
       public            erinjohnson    false    217            L           1259    18344 $   index_artwork_contents_on_content_id    INDEX     g   CREATE INDEX index_artwork_contents_on_content_id ON public.artwork_contents USING btree (content_id);
 8   DROP INDEX public.index_artwork_contents_on_content_id;
       public            erinjohnson    false    217            O           1259    18364 '   index_artwork_exhibitions_on_artwork_id    INDEX     m   CREATE INDEX index_artwork_exhibitions_on_artwork_id ON public.artwork_exhibitions USING btree (artwork_id);
 ;   DROP INDEX public.index_artwork_exhibitions_on_artwork_id;
       public            erinjohnson    false    219            P           1259    18365 *   index_artwork_exhibitions_on_exhibition_id    INDEX     s   CREATE INDEX index_artwork_exhibitions_on_exhibition_id ON public.artwork_exhibitions USING btree (exhibition_id);
 >   DROP INDEX public.index_artwork_exhibitions_on_exhibition_id;
       public            erinjohnson    false    219            C           1259    18303 '   index_exhibition_likes_on_exhibition_id    INDEX     m   CREATE INDEX index_exhibition_likes_on_exhibition_id ON public.exhibition_likes USING btree (exhibition_id);
 ;   DROP INDEX public.index_exhibition_likes_on_exhibition_id;
       public            erinjohnson    false    211            D           1259    18302 !   index_exhibition_likes_on_user_id    INDEX     a   CREATE INDEX index_exhibition_likes_on_user_id ON public.exhibition_likes USING btree (user_id);
 5   DROP INDEX public.index_exhibition_likes_on_user_id;
       public            erinjohnson    false    211            @           1259    18283    index_exhibitions_on_user_id    INDEX     W   CREATE INDEX index_exhibitions_on_user_id ON public.exhibitions USING btree (user_id);
 0   DROP INDEX public.index_exhibitions_on_user_id;
       public            erinjohnson    false    209            9           1259    18265 "   index_relationships_on_followed_id    INDEX     c   CREATE INDEX index_relationships_on_followed_id ON public.relationships USING btree (followed_id);
 6   DROP INDEX public.index_relationships_on_followed_id;
       public            erinjohnson    false    207            :           1259    18264 "   index_relationships_on_follower_id    INDEX     c   CREATE INDEX index_relationships_on_follower_id ON public.relationships USING btree (follower_id);
 6   DROP INDEX public.index_relationships_on_follower_id;
       public            erinjohnson    false    207            ;           1259    18266 2   index_relationships_on_follower_id_and_followed_id    INDEX     �   CREATE UNIQUE INDEX index_relationships_on_follower_id_and_followed_id ON public.relationships USING btree (follower_id, followed_id);
 F   DROP INDEX public.index_relationships_on_follower_id_and_followed_id;
       public            erinjohnson    false    207    207            W           2606    18359 '   artwork_exhibitions fk_rails_0ab1bd803e    FK CONSTRAINT     �   ALTER TABLE ONLY public.artwork_exhibitions
    ADD CONSTRAINT fk_rails_0ab1bd803e FOREIGN KEY (exhibition_id) REFERENCES public.exhibitions(id);
 Q   ALTER TABLE ONLY public.artwork_exhibitions DROP CONSTRAINT fk_rails_0ab1bd803e;
       public          erinjohnson    false    219    3135    209            U           2606    18339 $   artwork_contents fk_rails_547b94ed6b    FK CONSTRAINT     �   ALTER TABLE ONLY public.artwork_contents
    ADD CONSTRAINT fk_rails_547b94ed6b FOREIGN KEY (artwork_id) REFERENCES public.artworks(id);
 N   ALTER TABLE ONLY public.artwork_contents DROP CONSTRAINT fk_rails_547b94ed6b;
       public          erinjohnson    false    217    213    3142            R           2606    18292 $   exhibition_likes fk_rails_882537e2c7    FK CONSTRAINT     �   ALTER TABLE ONLY public.exhibition_likes
    ADD CONSTRAINT fk_rails_882537e2c7 FOREIGN KEY (user_id) REFERENCES public.users(id);
 N   ALTER TABLE ONLY public.exhibition_likes DROP CONSTRAINT fk_rails_882537e2c7;
       public          erinjohnson    false    3128    205    211            S           2606    18297 $   exhibition_likes fk_rails_9884f2dd01    FK CONSTRAINT     �   ALTER TABLE ONLY public.exhibition_likes
    ADD CONSTRAINT fk_rails_9884f2dd01 FOREIGN KEY (exhibition_id) REFERENCES public.exhibitions(id);
 N   ALTER TABLE ONLY public.exhibition_likes DROP CONSTRAINT fk_rails_9884f2dd01;
       public          erinjohnson    false    3135    211    209            V           2606    18354 '   artwork_exhibitions fk_rails_abe0dd64cc    FK CONSTRAINT     �   ALTER TABLE ONLY public.artwork_exhibitions
    ADD CONSTRAINT fk_rails_abe0dd64cc FOREIGN KEY (artwork_id) REFERENCES public.artworks(id);
 Q   ALTER TABLE ONLY public.artwork_exhibitions DROP CONSTRAINT fk_rails_abe0dd64cc;
       public          erinjohnson    false    3142    219    213            T           2606    18334 $   artwork_contents fk_rails_b8c545ddc9    FK CONSTRAINT     �   ALTER TABLE ONLY public.artwork_contents
    ADD CONSTRAINT fk_rails_b8c545ddc9 FOREIGN KEY (content_id) REFERENCES public.contents(id);
 N   ALTER TABLE ONLY public.artwork_contents DROP CONSTRAINT fk_rails_b8c545ddc9;
       public          erinjohnson    false    3144    215    217            Q           2606    18278    exhibitions fk_rails_d93e2fe8ae    FK CONSTRAINT     ~   ALTER TABLE ONLY public.exhibitions
    ADD CONSTRAINT fk_rails_d93e2fe8ae FOREIGN KEY (user_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.exhibitions DROP CONSTRAINT fk_rails_d93e2fe8ae;
       public          erinjohnson    false    205    209    3128            �   ?   x�K�+�,���M�+�LI-K��/ ���tLt�-�����L,-��Hq��qqq �hZ      �      x��\[�,)��NVq70e�7����:�� �PH�fS�m=m�3�����^�k�ȱ��K������1���R�?�߱~��Uj]>@!���(]rNY���ָ�.QO��Pȯ�4b���;��q]�1��P(���T|�Qf�x�6T�=��l�+.(�WU��@��Ed+ct�R��?@���j�Zz�ӖXJ�s��1�D%�H课b�����R�h��S��'�"�q|��r�R[+Ij�k,n�oIߩ~eiv*�P�oՈ-KIc�6>�Ҹ�.Q�=�G��WV���LXi�>�Ȝ{�/�K�%�{&�Py�=FN���Ky��mt�0�̀�P���KDf�%��f)�,Gb�.S�3��W(�x��~?��m�"kDn�Ŕ���JS�H?@A8�ixК���\Uc��r��4/y@A�,�Qk�|n�|\�>���
�^�`Eu�	���ؤս�/�K��~޼�BA��+�l��!�Nx�L��b*ߥ`-�(�{P���4V��{��N5��w���.��̯
2_��%���u���Hm�1�T���
���j��]fmD��v��.S�up@!	^E��+Lt�{�\6���)fNPH�%�E���_�L��zct�����0b���Qf]�|���6zT���p-(��Z�A���S�甽o��#�eD�x1���jE$oSv�r/&���`Pm<9� ��Ud�w^ڈ3F,�5��ej9��{B�3�*<b�vЦ�*��RaYop@!�`�c��Zϵԑ�_1F�i��"
���TO�����E�K5��ތ�B!G���S	�,f$Jҷ#��by���Bd]�Y�f�S3�(d���caK�����÷�bj�q�18��	���LtM�P�Md�sogw��eBzU��:�������� ?�o�˃Dٮ�
����FG��dc��yct���=�B!#̏����oĿƳ/�K5���y�B�t̀��$&���vZt=�.ɦ�����5��\G��Ӯ��eJp��ri�>�5 ��#3����eʭ�7�
�´KE�-���#�:w�u]���x��P`�+K��m�CLL�ڳ��\"���F^�P���}�w�����3^L,پrG`D(p�%U�4����R�'j�F�
�ۆ�
�y� m�$B}˚;?9�et���߼
�P�)�ǭ��B?2��V�m�Px�7︠P�U�!�b�$�X�m������3����٢�ȝ�A�n����R%���g\P��[��΁��z@5�$��ѥBalS�
��`s�v��	�l ������I�u��fB�	�ʌ�H��eV�o�U�msyZN��V'*�y��(P�L��#�5 ��21&�_�BŤh���p�#��E�z���ѧB(���	���ޗ
��9@�ܤ���6�T��� ����4҈��Qb�G%���Ή�
�(#�i��i���r�S�.�A���B��|yք��s~����R��0�u@h^*iE=Ttl�P��/�$�enA%���r�.Ub4� DTf�+
&x�V�Q/��r� 3��
-r`�!<�h�VfGq����*:�:[0���5�
�������JO�ѧb��Bc7U�_�Q��OPhL�寍�M5�I�$�ò/��S���\g���)�m���w�sK6Y�	�V��V�OmEb���)Q~]�Ζ�(4:cY�a�,Xl	b��l�6�T�q���D�ldX��ˠ�L�T)�ѥ}��b
V|c��!���Tw�6�\3O;����V�H/b/S�ޟn�e��X�E��(t�G�x]�RSni%���r%TMo�@����d�8��cƂrn���r�'j��8 �3�
�Ε!+~��]���ፌB�_�B̺��4���fc���w�_�Ǔ��O(t����r�h����;?��.G���
�����9g-����T�2�\���}B�l��(����7�n�]F�
��':����L<��q��F�J~��٣�����~˔��y\F�
	��O�P�����6�&�����c��֗PX�u��Y�D�u�]��%���<�Ba`��-#��l��X��7��.W�b��
(�vt�|h��G�]wBn�W���f�(��b�g�t&�����>�1�\ܼ��9yn����>=2�ݢ��W�#���	��DF{|�2R���n�O5��X�PX�qɌ6P6g��L�v�]�������"[��f�V/�X2F�n���
��2�#c�U�����mt�
��7O�P����6H�Ci��m�%s]���	
�=>UiH'��Tr����1�T��w�P@P/{���9;�<����3�\k�x�
�-э���l�`�#���f�y���H��b�TA����a�Gy
���R��W�c�@��^Se"�/T������et�z��?$pE/�/:�3)��Թ�.>��M�0�3�n���#�vd��>״��'����	��.K��`��ei�U�R<�����[�=6�1�PK��s]*�Nbv@�)C�n��!�\bۙ�et�0�͞�	D����N���úc0E�&�1^d���� �`�׭���jX��9>���I�}����dm�	�#&�������6�)1�� A����HC�-H(1��}.vT>@�)�Ҷ��x�]�m؎�2�d��6;8 ��W�K�|�0,uĞZ�2�dt�_z@�A0��q��Q&<�y��%����]���a}�X��Q�����qK�8��<��:�%�>���}���RMx�7�T�ƭ�E�8'nZ�9/�%_1�dv�N(�hp��v�5��E*�(0��K��2�L�>{K����g5��;e����T.G�A&k7H�~�W�������;L��%��z��t�vP�_;(�E�9sBЩ�ʒ�M삚o�����]�1�&��;�����W=��vA���$�B�����m��F1�����5��M�%��yb̽�i�.��m�
,�,��"�IBN�b~�\F�,c��y��3�ߪ�	b��,�q��F��d�YpBAR�N��pC��0�l��K��o|�	AG���mS�������K�et�O�~� �^��i�+^�1�:��%�k2[u'��B�u�gM�g	#�u.�K�,C�|6����`Z��F#��ηs�����/z%ӂ>���LCN��F�>[������u��@AO���>�<��	A����m���[�WvUdX�L� �Df&8�s�2�\lTOp@�{���T'r*���s}2&� ��T��4=���8�y�\��"��wzq\U��f���B���F����y�
AG���:��z��X����q]��Z��GS:z�G7!+3�HN��3�W��5�2z�'��փ�H�Q���)���r��M�~B�)�Ւ:�YQ'�8��s��6�d�\18���Z�l��C`ʮOd�t�lbk��N�A~Nd��]T�[�J�f���J�Y���`�i��<#iܷ���%+=٘w@A�G&w�#cB�����2��Y�|@�M�L��$�J�;�6�e��P���?� zPe��Jo.֍�=d��vT�Qk�`Hl<���2�d��m:�T�N�yViS�s���%��x3�N�vD�}�WCXJ��v�e��
�����rpB�ޝ�Mujb븳���={�\F�l���t4�-��7��J��mtɐf�0q@Ё#x���52��������%��7��t4P��y�H+��4=���j|�P��[:E���Q:���-�ڌ�%�%8��+�<ȳn���+�����3F��f�����j{��������^F��U��?!��+KT�K<3R��Z�mtɰ�́��N�֔�T���;Q����-~�\*d��4�	A�g�����������^�<!��l�I����e����c�.WI�V�n�����~*��}��&��;Oo^R!H�ĀJ�)�,.��!x�X��4u��� �/e�������(��j{�[�,1y�'��ڝ���q7�D��|�~�s���B�����n�G�b �  4;�0G_m�o^V�^��}����Ӫ�Xt�i���(JL��Ku_�4F���tO:��=�u�m ����eO�E�3�<���]|B�ѓ�K'�∨hk~n��K�s�ƣP��Kfp���cn��>�y=.�:��ѣ�iݞ�#<]�����.��7���A-K�/�ӛ_�l'�P�[}�Ԍu����n|.�F�,�?AA/�QI/����Ο�A�xq5�"/)�G(p�L��阷��l�����V�etɘ���v@Ax�p�D����;�y�5c�����y� �[iݨʂ4���e�<{]. 6�> �h{@�@Ɓۑ%VI��1�:��->A�������x�NC�Y�ח���-�b��OK�-�Լ��A����s���b�`f����Q6��/I���s��B�|��t�*<B�"��Q��1x�}q�]�ƽ�d�h��IU�<,T��?{z��'cv��2��t*�h�X&�xvی�%C�����ﰨLC���n�3�ء�2�\z������;*�9�呸�U�w��2�\�T:����é�Eů�FA��c�IoZͨ5�Z���o�Eֿ+���:!��9¥3��"���U����.����(�:H�t�Q*�m�X��9�x}�V͑��N�ụ�|��<�$���ct�xF�Xqp��dG) }Qk?g<~}2� ��۞��_`����mt�Pk[/q@��äK�e�����]2����t�[�d�x*a�6Ǿ7z}�m������i=�)�?������K�W���
��-�N�V��Y�ֹ�.�,�r�	A�7��:�R� ��o�\��5�SF�E��Lf�#�(p���&��(c����Z����*9�I�7y~|�2�d3���?$�x�o�$3�L/f����P^F��l���A�[�[���b�ד��%c���mE�C �Y�/����(g"�헹�.R[�P����7#�q���\/��%d@��,(��[�S�F�&�=��p]2N�7:
��.^�,<���9��5��F�	Û�tx�p� �Ff ��.�4W.�˅����P�b������j!�r��o��5�c���_; Ȱ8P�?m�,.dtv�dX�L/z��:�E﮴1�\��ց@�rd֖;�=�y��i��4F�
i�ݠ<���8�߬N|~��,blOyx]�ڒM:��%�?��n��w��-$f�,�
��
!�?�l�      �      x������ � �      �   �  x��Z�r�H>KOQ7 ��迥�ن��1����KIU�]XR5%�� {��ϰ7��fV�m��`�� �)���2+��*Ϋ�i�%���U����5y�~-�o�i�9�dIX��J����-��I��K�8�Ϳ�Vh-d��M��b��R�#Q^
.�8 ��k�8��4��ϋN�Vi���l%�Y�DG�D��`�*�E�쪙�z�4��G"OR��A�y^���O��s�:]��(/d%�d�XU���vy)�BULַ�����1�6׳Z���+�/���)��3� 
h��p�|p/���#~���E���8���;&7t~Ѭ.�.E8����l�_K͉Z�7�ڐ>��M�E޲B5%�V�S͸:�����A�o��ܐ�+�N6Z]J.8ɯɔ?`w�E���5̶���%� �##�`3?=��9g��ᱼ%��&g�Sm(��ذ�I�4�յ�W`(>�$�(�RT���u)����\�[����8@�������V�(8��0̆l�ޒ�5���!
X��LX
�����2��3���a��uǐ��F���L��-\��,3?�	����Ή �4�5à�@F9o�r"��FmJ��j��*�ȉ�.�xH��7�e��[��R��%:K!D��������G�2:�0���M��\u�0(��s��P����bA���� /n�~]%��4)�����N&o�{�N7����2-��0�{� �3��D=����=z�l>�=-���vZ�Δc�ㅟ�搈���M��9��9Rm+Q��T�#��5֜��罨6B�!�/����	�8��TZ���&�`BE������KD���@��-TCw�P�x\�S��YL^2�F�1��sX�?��P�T&Q�G�#&4��<I�,+�O�2˶ia1N2{�'c�@{�,�bo'u&7sހ�%�W�T�H�Fb�=f�]��J*�@!C�_��-�\����tr_ �i��h�9S�2z�KQ��2�hY����{5`�V�,��-�AZ0�h�30���� X��,��l��M����%K���y�!]�%�t���3}ɒb��y���2y���Qt�6�F�Z�,�)O����.��p�C�����=J�=aMKλ��a����	��(�
������ wQ
���~�0１�E����o��4�+����/4G�ʍ1��5^0���x�\?���R�d��Uʙ*.�R���(<�8UrҪ>�	\�^���kV|� ��{x�s�Kj�����4<`=�(h�Ô+�$C���Y�#��&������4 T�B+��s�H�t�#�9x�j���C���6ӻO�fR%�����h�n9��~ub�5��� Hx��T�� �e��6�Δ�c��E�Y����\?�?"'2���JV����"��cm��D0�=�ͩ��gZ��/:y圳弇���G�4�A�[.P�[.z�5|b�0+gc�p��G#Y��Y���Ӥ&׏�@E^9/إ�ΑV�q�'��l��r��
/݃�_zE��n���w�Z��p�Z�p����F��19�'=?$���A8�3�)�<�Ϙ���f�y��c�94�~-����yu�|e]iE�[�ۮ�F��n����c?�(9���q��J!�-� u[�+uʝ]6�l�I�7�&ן;F�Kh����kq�J��ڈz-dE˖���=�@���6Ci�
Z���l���ֱ*+�a�i�3��L���-�{��=X��;���+ewX�\S�bɎ@��;�w`r���}C�*�Z�����н�O+�Ϳ��,6;���{������a�=�`��EZ,���+��-P��+�J3�3�Ę?@��Ʃ����,.��V��GA�CY�ϝ ��+-l��pS�w(j����BDQ����n�~BȬ�̷��4��1�d�n!O�5�6�^4��ǬMn���ߕ��FN��̛��ˊop��2��V��AM=z��(���7ߑvC�����^��Q-�>>)��9±f�;�Ͳ��4�^g˹(�4�X|/���x(�ʲ�³$�3�ɘ:�e� ����MnL���RQ�b��<�B��[Y��������ӬӲm֝l~�k��~Z��^�8�aZ�,ι���F��a��!�״���O���5H�8���64�A�J�̷%���ZI��.a-��ـ�e��yp�==�#�f΁qe��z��Q�d��y�%|�{c9��lm8���NV��a㬉��¦9+)��9S~��,�h�)�;&7��ۈ)����y����>N�-���������i����y)n�c���I}?^����A�7bc��9n��_��m��}{F�4��Yda{F�$8S~�	���|?�v�����s
RIu]Iκ\�6	.r���W�6�2��(�7_�,dC��l�=06�bq� $o�%��N�Byj�%a|���Z^
��v{��1�����? �����g�~O7H(� �TB�����*$��`�i`��M�Tm��CZ�|R������hO'��Mp=܅;Sx�)���b��Y�w7H�.Ō���J��ι(����L��J�k|��C8y	��=��"�@�פ�CS.�!Dγ�ʌK�۴������)�Ʒn*�]��y�Ko��R?��{��5�����Z�����A�J�� 
 p��y��`� ��{_���{&��[t��נ+"(�A������!�ԣ����=Z���-�)w�t&�R�bG;LLn��c^�*��#L� '��'/�AI� Nr|ݮo���Jic�0S4Y*k����-���,�,�z�K���F�!���� !P�|P��0�wlP`��1g��ݘ��Y��3�Ln�9������Cr�q�fα#٢��єLr[�
}ݴ̾A��F#�Cq�/���l(���qRD�W�D�⼘x�����̰ ��,��5�[��P$hnO=z��|�g�;��䆞s�vŐTS��9�?��_T)YjU<o����r��#.�4��G �&O�T��NsQ?#λý���T��y�����yg���^��|�q��k���h��ܲF�9Fni��A�iICuK�=����W=g���H�3��8p)����I���Pm�rU�XRK].�}�b��j�p�7.a�E�2fY��-�ǋK��q�1�!
}`0$��߾Ea�O�8�8[x���,Iv�����1s]���Y�      �      x�}�Y��8E���`Eh������V���^����V(1��
K9\�,�s��S_�ia�K����W"\��H]k)�w'$c��ߏU&pN(��ǝ�Ɯ ��W���m����AJ!O��KM��Pj��\� ��d��A&�X�u^����?���:A�٘����e��HS+͕*c�#���<�n�ˌ����R��2�/��	��9���x�fY���M�ٖZ}Ѻ��;W�"G���	�ʄ�eRYe�@(6/C��2ܧ8>ș^z筲'��
��0�<Vy'I���asZ:L`�e-����%C ,��fj���-�tyF@8������*{ᾶ:xI>�!��M�a<Vy!�B� c�;.��`�N����;a�9�����N�;�`�݇�;)X��yNx�jn�n���x�^�R�<�?�<�<c�bk�Z��]r�@*֬c�k�r��e���?�^+���ZAs�!�����K��Ӥm2Ҳ�WK�,�f��C� w�]����LL� Ӷ���li���Z 8w�<J� �fl��+�)�E���dy=�g��L]ʗ=U'�@3�+��ҍ��\�C��8s� ;�k��bS�(ž0�4��y-�Qe}���=����x�.yK��d#C��`3�sl~�7�K�x���}s��M�-�2Мf�z?y�t轵�v�0bY?�wAr����4���]�-��KR��:���]w�ZO�h���B<���ʐf�����k4����V���5uW�d+���c4���i�@k�n�tO�:Wii���o=8���m�@c��N�-�� ���9t��o�^�2��#-�!����r���Z�#�X��ϯ���%�\�!�����(�*�ly�eg�["q
���s�_e�`����k��P���ظ��l�Nf][no�Ԇ���4���z�T�-t����}���w^����G^9|�]���8��B)�����M麽Қ?C���k�w˄��^���GI��S�f��l�9�m�����F��	�D�&���ގ562�,gg?o��(2X�ozmu�o�	8�� ��=��ڵU��$�f+ �w��>J�im�0oUP�6H��j�ı���%����������C���:�6���:|��+e,�_�m��^c4������补��lW��l#C`=vK����x�7DF���p�#'�8�<X�I:3o�ԧ����h˞4i�� ��Z�p      �      x������ � �      �      x������ � �      �      x������ � �      �   A   x�M̻� ��à�����s$R$���	�&�Х��9��tgb~�x�sA��W�.���=      �      x������ � �     