PGDMP     1    &        	    	    x         	   cofeeshop     12.4 (Ubuntu 12.4-1.pgdg20.04+1)     12.4 (Ubuntu 12.4-1.pgdg20.04+1)     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16385 	   cofeeshop    DATABASE     {   CREATE DATABASE cofeeshop WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE cofeeshop;
             	   adityaudi    false            �            1259    16405    TBL_CATEGORY    TABLE     n   CREATE TABLE public."TBL_CATEGORY" (
    "CATEGORY" character varying NOT NULL,
    "ID" character varying
);
 "   DROP TABLE public."TBL_CATEGORY";
       public         heap 	   adityaudi    false            �            1259    24650    TBL_HISTORYuser    TABLE     �   CREATE TABLE public."TBL_HISTORYuser" (
    invoices bigint NOT NULL,
    "Cashier" character varying NOT NULL,
    date character varying NOT NULL,
    orders character varying NOT NULL,
    amount character varying NOT NULL
);
 %   DROP TABLE public."TBL_HISTORYuser";
       public         heap 	   adityaudi    false            �            1259    24648    TBL_HISTORYuser_invoices_seq    SEQUENCE     �   CREATE SEQUENCE public."TBL_HISTORYuser_invoices_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."TBL_HISTORYuser_invoices_seq";
       public       	   adityaudi    false    208            �           0    0    TBL_HISTORYuser_invoices_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."TBL_HISTORYuser_invoices_seq" OWNED BY public."TBL_HISTORYuser".invoices;
          public       	   adityaudi    false    207            �            1259    16396 
   TBL_PRODUK    TABLE     �   CREATE TABLE public."TBL_PRODUK" (
    "ID" bigint NOT NULL,
    "NAME_PRODUCT" character varying NOT NULL,
    "PRICE" bigint NOT NULL,
    "IMG" character varying NOT NULL,
    "CATEGORY" character varying
);
     DROP TABLE public."TBL_PRODUK";
       public         heap 	   adityaudi    false            �            1259    16394    TBL_PRODUK_ID_seq    SEQUENCE     |   CREATE SEQUENCE public."TBL_PRODUK_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."TBL_PRODUK_ID_seq";
       public       	   adityaudi    false    203            �           0    0    TBL_PRODUK_ID_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."TBL_PRODUK_ID_seq" OWNED BY public."TBL_PRODUK"."ID";
          public       	   adityaudi    false    202            �            1259    24635    TBL_USERLOGIN    TABLE     #  CREATE TABLE public."TBL_USERLOGIN" (
    userid bigint NOT NULL,
    name character varying NOT NULL,
    username character varying NOT NULL,
    photo character varying NOT NULL,
    password character varying NOT NULL,
    token character varying,
    role character varying NOT NULL
);
 #   DROP TABLE public."TBL_USERLOGIN";
       public         heap 	   adityaudi    false            �            1259    24633    TBL_USERLOGIN_userid_seq    SEQUENCE     �   CREATE SEQUENCE public."TBL_USERLOGIN_userid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."TBL_USERLOGIN_userid_seq";
       public       	   adityaudi    false    206            �           0    0    TBL_USERLOGIN_userid_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."TBL_USERLOGIN_userid_seq" OWNED BY public."TBL_USERLOGIN".userid;
          public       	   adityaudi    false    205            &           2604    24653    TBL_HISTORYuser invoices    DEFAULT     �   ALTER TABLE ONLY public."TBL_HISTORYuser" ALTER COLUMN invoices SET DEFAULT nextval('public."TBL_HISTORYuser_invoices_seq"'::regclass);
 I   ALTER TABLE public."TBL_HISTORYuser" ALTER COLUMN invoices DROP DEFAULT;
       public       	   adityaudi    false    208    207    208            $           2604    24645    TBL_PRODUK ID    DEFAULT     t   ALTER TABLE ONLY public."TBL_PRODUK" ALTER COLUMN "ID" SET DEFAULT nextval('public."TBL_PRODUK_ID_seq"'::regclass);
 @   ALTER TABLE public."TBL_PRODUK" ALTER COLUMN "ID" DROP DEFAULT;
       public       	   adityaudi    false    203    202    203            %           2604    24646    TBL_USERLOGIN userid    DEFAULT     �   ALTER TABLE ONLY public."TBL_USERLOGIN" ALTER COLUMN userid SET DEFAULT nextval('public."TBL_USERLOGIN_userid_seq"'::regclass);
 E   ALTER TABLE public."TBL_USERLOGIN" ALTER COLUMN userid DROP DEFAULT;
       public       	   adityaudi    false    206    205    206            �          0    16405    TBL_CATEGORY 
   TABLE DATA           :   COPY public."TBL_CATEGORY" ("CATEGORY", "ID") FROM stdin;
    public       	   adityaudi    false    204   �       �          0    24650    TBL_HISTORYuser 
   TABLE DATA           V   COPY public."TBL_HISTORYuser" (invoices, "Cashier", date, orders, amount) FROM stdin;
    public       	   adityaudi    false    208   D       �          0    16396 
   TBL_PRODUK 
   TABLE DATA           X   COPY public."TBL_PRODUK" ("ID", "NAME_PRODUCT", "PRICE", "IMG", "CATEGORY") FROM stdin;
    public       	   adityaudi    false    203   �       �          0    24635    TBL_USERLOGIN 
   TABLE DATA           _   COPY public."TBL_USERLOGIN" (userid, name, username, photo, password, token, role) FROM stdin;
    public       	   adityaudi    false    206   �!       �           0    0    TBL_HISTORYuser_invoices_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."TBL_HISTORYuser_invoices_seq"', 174, true);
          public       	   adityaudi    false    207            �           0    0    TBL_PRODUK_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."TBL_PRODUK_ID_seq"', 93, true);
          public       	   adityaudi    false    202            �           0    0    TBL_USERLOGIN_userid_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."TBL_USERLOGIN_userid_seq"', 96, true);
          public       	   adityaudi    false    205            ,           2606    24658 $   TBL_HISTORYuser TBL_HISTORYuser_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."TBL_HISTORYuser"
    ADD CONSTRAINT "TBL_HISTORYuser_pkey" PRIMARY KEY (invoices);
 R   ALTER TABLE ONLY public."TBL_HISTORYuser" DROP CONSTRAINT "TBL_HISTORYuser_pkey";
       public         	   adityaudi    false    208            (           2606    16404    TBL_PRODUK TBL_PRODUK_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."TBL_PRODUK"
    ADD CONSTRAINT "TBL_PRODUK_pkey" PRIMARY KEY ("ID");
 H   ALTER TABLE ONLY public."TBL_PRODUK" DROP CONSTRAINT "TBL_PRODUK_pkey";
       public         	   adityaudi    false    203            *           2606    24643     TBL_USERLOGIN TBL_USERLOGIN_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."TBL_USERLOGIN"
    ADD CONSTRAINT "TBL_USERLOGIN_pkey" PRIMARY KEY (userid);
 N   ALTER TABLE ONLY public."TBL_USERLOGIN" DROP CONSTRAINT "TBL_USERLOGIN_pkey";
       public         	   adityaudi    false    206            �   c   x�suwqt�q�,KMO-IL�I�t�r�wssuUpru��L�OKK�����p������A�~���)E�y��@����K0gZ~~
�F;�c���� �t7�      �   �   x�34��LL�,�L,M�ԁ�8��J��K���t�8�
J�3���u�RS�Rs�RK����RS9M�tA$�����0DX�靘�Y2(8� à�Ĝ��<��Ԣ����L�1��c��c�1��`z��b�	�F��qqq �\��      �   �  x����n� ����X���{K��%=%Q�J�L��5���~�{�$jO�B3��&+�	��h�L�Z�W�B輷�S�b���s�v�Sm����hOڧ��.�D&RQ�ǝ�8�:��iR�&y	5Z;7JkE��Wtm�g�$��#��?ɳ�d,���>�WE�ib'3��p��V��������ٷy�"*%w��~ث�$+��Tӓf��YQ��oL��۠����Yd�+�nR���:���6��>��t���� �4�=v�RF��Q���nl���ȏ�����J�3v3�'�l�G�� ��
�g������Ĭq�$�?��"��]p���r��W$�6�Ҵ�M���+���W7/�_+Y��*��Gv	R��JD&�oޟ�w�Q����ر��|�l2C�f!����$I� �ɸ�      �   �  x�Օ[��Jǟ�O1�*Ӏ�ADEiDD�l2iZ�~�ɧ?잳�99�f<��>�)�t��U�̤����zc�D\����;qb<39����mCkE�Q��:U]�l�X�vyȔ[�ћM�O��zK鑺��5	��m��<_��t�sU ƏHL�^��'s�ȏ��Q��V�dixh��䄂���]tr�n=��N?����b{�`�ַ{�(��^�|�����^7�B٘��j{�J~b�a>���!����n��\���=y�@��B��A0�}����IQ�
n'�Mx�C�t΢���ĕ�緰��/U�=S�S L)������pD�#�����Q��}��� 'EC�-10��3"��l�f��0A�$�w�ɔĳǻ�.�o���~;WS%Fz��4Yd��A�s2tJ&�DM�j�Ri[�H*api�Wz�/p�E7?Ax�G� �ٗ8���Jp�]k���FY��gdE$܋��H��7Hb��h�~q>����/o�4�]wxS�~����Ơ�"~�}7��0S��>�y�K�%dVG���C��NK���7�<$� �4�C٢�lP�&��f���}��LL �.�}(��YU
S��+�5Y*��9i�����,�/*�iz��u���΍�"��!g��Cn)�a�!0�/��9G�Y�)F�LΦ�����bi�3���q��'P,�{p!$�rϷ�;�]B	W�	�as�>P���3�sLп;���̷�+��ݫ	)����%�(6S;ak�^ͦ�&�^�S�L3�I��{U_���@���z�n� �&�m_^�L�K=ci����w@�����e��m��+W������CT�Ĳ|^g(���=��E3�����h��6�"w�v޻��|*y��h�#�0XnP�VuUcuE��fG�No�r������<�aA�A�4O �{p��tP�)��8�8�"߬�����k,'�bU�=O����YC����}4HH���ҝt+l�������!B�9g�����86���Z���B�ZpM�C��Y;�V���`�<�K���T[R��_ăy�ǂ�5�`k7�,*	w�fI@W�����Pj>��"�����H'�%~s�<,M	/�Yq�X%�.���'T�IԸ�e���w�"O5do����� ��     