PGDMP     1                     {         
   onlineshop    15.2    15.2 V    h           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            i           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            j           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            k           1262    16959 
   onlineshop    DATABASE     �   CREATE DATABASE onlineshop WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE onlineshop;
                postgres    false            �            1255    17064    after_user_info_insert()    FUNCTION       CREATE FUNCTION public.after_user_info_insert() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO user_info_backup VALUES (NEW.user_id, NEW.first_name, NEW.last_name, NEW.email, NEW.password, NEW.mobile, NEW.address1, NEW.address2);
  RETURN NEW;
END;
$$;
 /   DROP FUNCTION public.after_user_info_insert();
       public          postgres    false            �            1259    16978 
   admin_info    TABLE     �   CREATE TABLE public.admin_info (
    admin_id integer NOT NULL,
    admin_name character varying(100) NOT NULL,
    admin_email character varying(300) NOT NULL,
    admin_password character varying(300) NOT NULL
);
    DROP TABLE public.admin_info;
       public         heap    postgres    false            �            1259    16977    admin_info_admin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_info_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.admin_info_admin_id_seq;
       public          postgres    false    215            l           0    0    admin_info_admin_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.admin_info_admin_id_seq OWNED BY public.admin_info.admin_id;
          public          postgres    false    214            �            1259    16987    brands    TABLE     ]   CREATE TABLE public.brands (
    brand_id integer NOT NULL,
    brand_title text NOT NULL
);
    DROP TABLE public.brands;
       public         heap    postgres    false            �            1259    16986    brands_brand_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brands_brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.brands_brand_id_seq;
       public          postgres    false    217            m           0    0    brands_brand_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.brands_brand_id_seq OWNED BY public.brands.brand_id;
          public          postgres    false    216            �            1259    16996    cart    TABLE     �   CREATE TABLE public.cart (
    id integer NOT NULL,
    p_id integer NOT NULL,
    ip_add character varying(250) NOT NULL,
    user_id integer,
    qty integer NOT NULL
);
    DROP TABLE public.cart;
       public         heap    postgres    false            �            1259    16995    cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.cart_id_seq;
       public          postgres    false    219            n           0    0    cart_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.cart_id_seq OWNED BY public.cart.id;
          public          postgres    false    218            �            1259    17003 
   categories    TABLE     ]   CREATE TABLE public.categories (
    cat_id integer NOT NULL,
    cat_title text NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    17002    categories_cat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_cat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.categories_cat_id_seq;
       public          postgres    false    221            o           0    0    categories_cat_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.categories_cat_id_seq OWNED BY public.categories.cat_id;
          public          postgres    false    220            �            1259    17012 
   email_info    TABLE     [   CREATE TABLE public.email_info (
    email_id integer NOT NULL,
    email text NOT NULL
);
    DROP TABLE public.email_info;
       public         heap    postgres    false            �            1259    17011    email_info_email_id_seq    SEQUENCE     �   CREATE SEQUENCE public.email_info_email_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.email_info_email_id_seq;
       public          postgres    false    223            p           0    0    email_info_email_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.email_info_email_id_seq OWNED BY public.email_info.email_id;
          public          postgres    false    222            �            1259    17021    logs    TABLE     �   CREATE TABLE public.logs (
    id integer NOT NULL,
    user_id character varying(50) NOT NULL,
    action character varying(50) NOT NULL,
    date timestamp without time zone NOT NULL
);
    DROP TABLE public.logs;
       public         heap    postgres    false            �            1259    17020    logs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.logs_id_seq;
       public          postgres    false    225            q           0    0    logs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.logs_id_seq OWNED BY public.logs.id;
          public          postgres    false    224            �            1259    17044    order_products    TABLE     �   CREATE TABLE public.order_products (
    order_pro_id integer NOT NULL,
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    qty integer,
    amt integer
);
 "   DROP TABLE public.order_products;
       public         heap    postgres    false            �            1259    17043    order_products_order_pro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_products_order_pro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.order_products_order_pro_id_seq;
       public          postgres    false    231            r           0    0    order_products_order_pro_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.order_products_order_pro_id_seq OWNED BY public.order_products.order_pro_id;
          public          postgres    false    230            �            1259    17028    orders    TABLE     �   CREATE TABLE public.orders (
    order_id integer NOT NULL,
    user_id integer NOT NULL,
    product_id integer NOT NULL,
    qty integer NOT NULL,
    trx_id character varying(255) NOT NULL,
    p_status character varying(20) NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    17035    orders_info    TABLE     '  CREATE TABLE public.orders_info (
    order_id integer NOT NULL,
    user_id integer NOT NULL,
    f_name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    zip integer NOT NULL,
    cardname character varying(255) NOT NULL,
    cardnumber character varying(20) NOT NULL,
    expdate character varying(255) NOT NULL,
    prod_count integer,
    total_amt integer,
    cvv integer NOT NULL
);
    DROP TABLE public.orders_info;
       public         heap    postgres    false            �            1259    17034    orders_info_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_info_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.orders_info_order_id_seq;
       public          postgres    false    229            s           0    0    orders_info_order_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.orders_info_order_id_seq OWNED BY public.orders_info.order_id;
          public          postgres    false    228            �            1259    17027    orders_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.orders_order_id_seq;
       public          postgres    false    227            t           0    0    orders_order_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders.order_id;
          public          postgres    false    226            �            1259    17051    products    TABLE     D  CREATE TABLE public.products (
    product_id integer NOT NULL,
    product_cat integer NOT NULL,
    product_brand integer NOT NULL,
    product_title character varying(255) NOT NULL,
    product_price integer NOT NULL,
    product_desc text NOT NULL,
    product_image text NOT NULL,
    product_keywords text NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    17050    products_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.products_product_id_seq;
       public          postgres    false    233            u           0    0    products_product_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;
          public          postgres    false    232            �            1259    17116    user_info_user_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.user_info_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.user_info_user_id_seq;
       public          postgres    false            �            1259    17059 	   user_info    TABLE     �  CREATE TABLE public.user_info (
    user_id integer DEFAULT nextval('public.user_info_user_id_seq'::regclass) NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    email character varying(300) NOT NULL,
    password character varying(300) NOT NULL,
    mobile character varying(10) NOT NULL,
    address1 character varying(300) NOT NULL,
    address2 character varying(11) NOT NULL
);
    DROP TABLE public.user_info;
       public         heap    postgres    false    236            �            1259    17066    user_info_backup    TABLE     �  CREATE TABLE public.user_info_backup (
    user_id integer NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    email character varying(300) NOT NULL,
    password character varying(300) NOT NULL,
    mobile character varying(10) NOT NULL,
    address1 character varying(300) NOT NULL,
    address2 character varying(11) NOT NULL
);
 $   DROP TABLE public.user_info_backup;
       public         heap    postgres    false            �           2604    16981    admin_info admin_id    DEFAULT     z   ALTER TABLE ONLY public.admin_info ALTER COLUMN admin_id SET DEFAULT nextval('public.admin_info_admin_id_seq'::regclass);
 B   ALTER TABLE public.admin_info ALTER COLUMN admin_id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    16990    brands brand_id    DEFAULT     r   ALTER TABLE ONLY public.brands ALTER COLUMN brand_id SET DEFAULT nextval('public.brands_brand_id_seq'::regclass);
 >   ALTER TABLE public.brands ALTER COLUMN brand_id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16999    cart id    DEFAULT     b   ALTER TABLE ONLY public.cart ALTER COLUMN id SET DEFAULT nextval('public.cart_id_seq'::regclass);
 6   ALTER TABLE public.cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    17006    categories cat_id    DEFAULT     v   ALTER TABLE ONLY public.categories ALTER COLUMN cat_id SET DEFAULT nextval('public.categories_cat_id_seq'::regclass);
 @   ALTER TABLE public.categories ALTER COLUMN cat_id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    17015    email_info email_id    DEFAULT     z   ALTER TABLE ONLY public.email_info ALTER COLUMN email_id SET DEFAULT nextval('public.email_info_email_id_seq'::regclass);
 B   ALTER TABLE public.email_info ALTER COLUMN email_id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    17024    logs id    DEFAULT     b   ALTER TABLE ONLY public.logs ALTER COLUMN id SET DEFAULT nextval('public.logs_id_seq'::regclass);
 6   ALTER TABLE public.logs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    17047    order_products order_pro_id    DEFAULT     �   ALTER TABLE ONLY public.order_products ALTER COLUMN order_pro_id SET DEFAULT nextval('public.order_products_order_pro_id_seq'::regclass);
 J   ALTER TABLE public.order_products ALTER COLUMN order_pro_id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    17031    orders order_id    DEFAULT     r   ALTER TABLE ONLY public.orders ALTER COLUMN order_id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);
 >   ALTER TABLE public.orders ALTER COLUMN order_id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    17038    orders_info order_id    DEFAULT     |   ALTER TABLE ONLY public.orders_info ALTER COLUMN order_id SET DEFAULT nextval('public.orders_info_order_id_seq'::regclass);
 C   ALTER TABLE public.orders_info ALTER COLUMN order_id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    17054    products product_id    DEFAULT     z   ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);
 B   ALTER TABLE public.products ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    233    232    233            P          0    16978 
   admin_info 
   TABLE DATA           W   COPY public.admin_info (admin_id, admin_name, admin_email, admin_password) FROM stdin;
    public          postgres    false    215   e       R          0    16987    brands 
   TABLE DATA           7   COPY public.brands (brand_id, brand_title) FROM stdin;
    public          postgres    false    217   ke       T          0    16996    cart 
   TABLE DATA           >   COPY public.cart (id, p_id, ip_add, user_id, qty) FROM stdin;
    public          postgres    false    219   �e       V          0    17003 
   categories 
   TABLE DATA           7   COPY public.categories (cat_id, cat_title) FROM stdin;
    public          postgres    false    221   Gf       X          0    17012 
   email_info 
   TABLE DATA           5   COPY public.email_info (email_id, email) FROM stdin;
    public          postgres    false    223   �f       Z          0    17021    logs 
   TABLE DATA           9   COPY public.logs (id, user_id, action, date) FROM stdin;
    public          postgres    false    225   �f       `          0    17044    order_products 
   TABLE DATA           V   COPY public.order_products (order_pro_id, order_id, product_id, qty, amt) FROM stdin;
    public          postgres    false    231   ^g       \          0    17028    orders 
   TABLE DATA           V   COPY public.orders (order_id, user_id, product_id, qty, trx_id, p_status) FROM stdin;
    public          postgres    false    227   {g       ^          0    17035    orders_info 
   TABLE DATA           �   COPY public.orders_info (order_id, user_id, f_name, email, address, city, state, zip, cardname, cardnumber, expdate, prod_count, total_amt, cvv) FROM stdin;
    public          postgres    false    229   �g       b          0    17051    products 
   TABLE DATA           �   COPY public.products (product_id, product_cat, product_brand, product_title, product_price, product_desc, product_image, product_keywords) FROM stdin;
    public          postgres    false    233   h       c          0    17059 	   user_info 
   TABLE DATA           p   COPY public.user_info (user_id, first_name, last_name, email, password, mobile, address1, address2) FROM stdin;
    public          postgres    false    234   �j       d          0    17066    user_info_backup 
   TABLE DATA           w   COPY public.user_info_backup (user_id, first_name, last_name, email, password, mobile, address1, address2) FROM stdin;
    public          postgres    false    235   �k       v           0    0    admin_info_admin_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.admin_info_admin_id_seq', 1, false);
          public          postgres    false    214            w           0    0    brands_brand_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.brands_brand_id_seq', 1, false);
          public          postgres    false    216            x           0    0    cart_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.cart_id_seq', 47, true);
          public          postgres    false    218            y           0    0    categories_cat_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.categories_cat_id_seq', 1, false);
          public          postgres    false    220            z           0    0    email_info_email_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.email_info_email_id_seq', 1, false);
          public          postgres    false    222            {           0    0    logs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.logs_id_seq', 1, false);
          public          postgres    false    224            |           0    0    order_products_order_pro_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.order_products_order_pro_id_seq', 1, false);
          public          postgres    false    230            }           0    0    orders_info_order_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.orders_info_order_id_seq', 1, false);
          public          postgres    false    228            ~           0    0    orders_order_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.orders_order_id_seq', 1, false);
          public          postgres    false    226                       0    0    products_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.products_product_id_seq', 4, true);
          public          postgres    false    232            �           0    0    user_info_user_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.user_info_user_id_seq', 3, true);
          public          postgres    false    236            �           2606    16985    admin_info admin_info_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.admin_info
    ADD CONSTRAINT admin_info_pkey PRIMARY KEY (admin_id);
 D   ALTER TABLE ONLY public.admin_info DROP CONSTRAINT admin_info_pkey;
       public            postgres    false    215            �           2606    16994    brands brands_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (brand_id);
 <   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_pkey;
       public            postgres    false    217            �           2606    17001    cart cart_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public            postgres    false    219            �           2606    17010    categories categories_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (cat_id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    221            �           2606    17019    email_info email_info_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.email_info
    ADD CONSTRAINT email_info_pkey PRIMARY KEY (email_id);
 D   ALTER TABLE ONLY public.email_info DROP CONSTRAINT email_info_pkey;
       public            postgres    false    223            �           2606    17026    logs logs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.logs
    ADD CONSTRAINT logs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.logs DROP CONSTRAINT logs_pkey;
       public            postgres    false    225            �           2606    17049 "   order_products order_products_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.order_products
    ADD CONSTRAINT order_products_pkey PRIMARY KEY (order_pro_id);
 L   ALTER TABLE ONLY public.order_products DROP CONSTRAINT order_products_pkey;
       public            postgres    false    231            �           2606    17042    orders_info orders_info_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.orders_info
    ADD CONSTRAINT orders_info_pkey PRIMARY KEY (order_id);
 F   ALTER TABLE ONLY public.orders_info DROP CONSTRAINT orders_info_pkey;
       public            postgres    false    229            �           2606    17033    orders orders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    227            �           2606    17058    products products_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    233            �           2606    17118    user_info user_info_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.user_info
    ADD CONSTRAINT user_info_pkey PRIMARY KEY (user_id);
 B   ALTER TABLE ONLY public.user_info DROP CONSTRAINT user_info_pkey;
       public            postgres    false    234            �           2620    17065 (   user_info after_user_info_insert_trigger    TRIGGER     �   CREATE TRIGGER after_user_info_insert_trigger AFTER INSERT ON public.user_info FOR EACH ROW EXECUTE FUNCTION public.after_user_info_insert();
 A   DROP TRIGGER after_user_info_insert_trigger ON public.user_info;
       public          postgres    false    234    237            �           2606    17071    order_products fk_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_products
    ADD CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES public.orders_info(order_id) ON UPDATE CASCADE;
 D   ALTER TABLE ONLY public.order_products DROP CONSTRAINT fk_order_id;
       public          postgres    false    3254    231    229            �           2606    17076    order_products fk_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_products
    ADD CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES public.products(product_id);
 F   ALTER TABLE ONLY public.order_products DROP CONSTRAINT fk_product_id;
       public          postgres    false    3258    231    233            �           2606    17119    orders_info user    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_info
    ADD CONSTRAINT "user" FOREIGN KEY (user_id) REFERENCES public.user_info(user_id) NOT VALID;
 <   ALTER TABLE ONLY public.orders_info DROP CONSTRAINT "user";
       public          postgres    false    229    3260    234            P   A   x�3�LL��̃�鹉�9z����F�i���&�F�I&���i���i�IfF&)I\1z\\\ Kb�      R   @   x�3��q�2�t�2�v��s�2�t�q�2�����2�t�u�p�2�������� TF�      T   |   x�E���0C�r/��0؛Ԓ��X>�d��4bB&��P��`OX.ɗ�a��`�7=1+���uL�$�x��ef���1�:��a�ڀ�g�6qh�"�f��*�.=RK�l�)=�ؗ?U�>Zk?�d&      V   U   x�3����MUp,(��L�KN-�2�t�IM.)���L.VpOLIO-)�2�tL��e"Č9}K�3��L8�s�K2�zM��r��qqq &�"      X   7   x�3�LL���sH�M���K���2�,(�KM-�(JMI��45D�3E�C������ �m      Z   [   x�3�,-N-2���O���4202�50�52P04�26�20�2�0��/-AQbdeb
RbV$RKR����2sRJ,��Jc���� ��      `      x������ � �      \   r   x�M�;� ��0������(�C\��
v�zfv	v0J%5�	��9���[`h�J�9E7����� `�4Je�Db��9�v�'�ӹaG���\y��О��}��B��($      ^      x������ � �      b   �  x��S]o�0}6��j�a'��1Mҏ(Qh�n�T9��W�������]�M�*@��s�=���1�Y]+r_�J �h:%�`�*- ����A8Yqx\ ��V�!�n�t���:��lɍ� ސ�VE���,�F(���.��8~�B^e`]��-�pij��F�A]���z�������/�P�Z�QH������j	�[x�,!i��q�%p$,CE�d��Gx����V���J]�wS��+�'��՝zQ�ۖ�s��ۃ-�E!kB)����~�T+m�.���Np^x��%%Oq�m��ӵ��>�<˅�h�:�$���*�5W�w	c��(����ϳl*^�fۮe���*�z?"��o��(J�,yH�[�V�Bl����q����ar�fNCB�A�˯.JZ�*��u���B��p���Vbt���
>��x���1��K^p�'��:b����V4'�MF�sd�#MGյ�9�����Ȏ��
++X\R	��Ց��0�s2Au���/M�k�J����0y��Y�RT2$�+�"K��H1�A��b��#�O "1����\�4������\�E/:����RۨSj�}h��;�]�h�9cd���a�^r����&����xE!��'��J}�Jt�m0�}jF]R��uW8N�t�$K��%�T����� ��\�      c   �   x�m��j�0�ϣ���H�d閄^�R����&6��%�e�ׯ��'��հ�#4�.���]�ɍ�K�࢒J���Z+���'&j��t�ˀ}��sT����ذ$����զF%��F��"~&$Bw]R7a�󸖪�6�
����8ux]��F�c�0<�hs'wӇ�RJYS+���Q>��H	���~w��Z�J�r�	����O�������K���1�Hxj      d     x����n� ��O�h���m����tӹ�do��3�D��o��t��i{��p~�p���z4𬕚�j�������ߖ}�%)Y^@��9e��|�ѩ���Z�%�)ݡ��,��� 8i"2�@��WǪ��[�W�2��^�� [S�vZ�
��"�r��H�e�;ee��Nu�3^zBxmw3x�$z~�&I�ȳL�4	��F��J���kY�4�NO�O(M�ށt�\�3�/C+#4�E�K�5��A�A����À]����썭`���Ld"lXHwN��T�v��k�H�h��z�CW�x1���"����l���n�$���D�k��e��c��ѾT�ۺX!�ֺ舍԰<\��X{K����� Kx+�a�;(�`�g8�hBI]���H�v�%���UixB{��e�qK���t'�Q�+��2�L�n`�Gl!�,\��m�z��	���C*`�S��R��p\���w|	�6�.�O'�*O�E�N�O=�H�e��z�K�#tAP�>~{����V�V�ɟ[B�_�0w�     