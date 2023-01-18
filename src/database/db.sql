create table cliente(
    id_cliente character varying(13) NOT NULL,
    cli_nombres character varying(50) NOT NULL,
    cli_apellidos character varying(50) NOT NULL,
    cli_telefono character varying(15) NOT NULL,
    cli_email character varying(60) NOT NULL,
    cli_direccion character varying(100) NOT NULL,
    cli_fecha_registro date NOT NULL,
    constraint pk_cliente PRIMARY KEY(id_cliente)
);
create table producto(
    id_producto character varying(15) NOT NULL,
    prod_cantidad integer NOT NULL,
    prod_nombre character varying(60) NOT NULL,
    prod_descripcion character varying(100) NOT NULL,
    prod_iva numeric(4, 2) NOT NULL,
    prod_precio numeric(7, 2) NOT NULL,
    constraint pk_producto primary key(id_producto)
);
create table factura(
    id_factura integer NOT NULL,
    fact_numero_factura character varying(20) NOT NULL,
    fact_fecha_emision date NOT NULL,
    fact_fecha_remision date NOT NULL,
    fact_subtotal numeric(8, 2),
    fact_iva numeric(8, 2),
    fact_total numeric(8, 2),
    fact_cliente character varying(13) NOT NULL,
    constraint pk_factura primary key(id_factura),
    constraint fk_cli_fact foreign key(fact_cliente) references cliente(id_cliente)
);
create table detalle_factura(
    id_detalle_factura integer NOT NULL,
    det_cantidad integer NOT NULL,
    det_producto character varying(15) NOT NULL,
    det_factura integer NOT NULL,
    det_precio_unitario numeric(8, 2) NOT NULL,
    det_iva numeric(8, 2) NOT NULL,
    det_subtotal numeric(8, 2),
    det_precio_total numeric(8, 2) NOT NULL,
    constraint pk_detalle_factura primary key(id_detalle_factura),
    constraint fk_fact_detfact foreign key(det_factura) references factura(id_factura),
    constraint fk_prod_detfact foreign key(det_producto) references producto(id_producto)
);
declare @points nvarchar(max)
set @points = (
        select p.id_cliente,
            p.cli_nombres,
            p.cli_apellidos,
            p.cli_telefono,
            p.cli_direccion,
            p.cli_fecha_registro,
            p.cli_email
        from cliente p for json auto
    )
select @points as points return
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '2769813139',
        'See',
        'Scriver',
        '382-495-8642',
        'sscriver0@sogou.com',
        '7 Manley Alley',
        '3/20/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '4869877246',
        'Shelley',
        'Kelinge',
        '802-560-9210',
        'skelinge1@unblog.fr',
        '0635 Randy Avenue',
        '5/18/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '6469714854',
        'Winny',
        'Mobley',
        '433-317-4564',
        'wmobley2@arstechnica.com',
        '29623 Pleasure Circle',
        '4/8/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '0140660427',
        'Maible',
        'Burchnall',
        '224-913-7459',
        'mburchnall3@vkontakte.ru',
        '1 Bay Trail',
        '9/5/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '2105562626',
        'Marylynne',
        'Jenkison',
        '673-269-0351',
        'mjenkison4@printfriendly.com',
        '77 Anniversary Pass',
        '12/26/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '2377238450',
        'Carolann',
        'Scadding',
        '214-920-3728',
        'cscadding5@nytimes.com',
        '2310 Algoma Plaza',
        '12/23/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '5645302526',
        'Kristoffer',
        'Staff',
        '558-249-5409',
        'kstaff6@wix.com',
        '578 Fulton Circle',
        '6/8/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '6441943603',
        'Noel',
        'Shemwell',
        '697-787-1505',
        'nshemwell7@artisteer.com',
        '2 Fallview Crossing',
        '1/6/2023'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '8632753235',
        'Rori',
        'Maundrell',
        '444-804-3990',
        'rmaundrell8@bravesites.com',
        '08594 Everett Avenue',
        '2/23/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '3575434667',
        'Nanice',
        'Charopen',
        '375-447-9351',
        'ncharopen9@com.com',
        '3 Lakewood Circle',
        '3/18/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '9066430962',
        'Gan',
        'Robak',
        '296-934-7529',
        'grobaka@ted.com',
        '41 Mandrake Circle',
        '11/24/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '5330517747',
        'Margarete',
        'Gratton',
        '490-619-2157',
        'mgrattonb@pcworld.com',
        '90 Leroy Trail',
        '6/24/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '2673863180',
        'Joanna',
        'Schrir',
        '918-860-1525',
        'jschrirc@scribd.com',
        '237 Muir Drive',
        '8/9/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '8557116267',
        'Selma',
        'Shinn',
        '155-866-2469',
        'sshinnd@irs.gov',
        '00 Golf Junction',
        '4/30/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '3090791015',
        'Tommie',
        'Ayto',
        '799-469-3199',
        'taytoe@yellowpages.com',
        '14042 Carioca Drive',
        '12/31/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '7644862644',
        'Celine',
        'Mogg',
        '650-256-0173',
        'cmoggf@who.int',
        '95305 Crowley Drive',
        '12/26/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '1778804596',
        'Samantha',
        'Gotthard',
        '910-476-3856',
        'sgotthardg@forbes.com',
        '64228 Iowa Place',
        '8/17/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '3900917916',
        'Shellie',
        'Height',
        '272-556-7195',
        'sheighth@ustream.tv',
        '908 Randy Plaza',
        '4/20/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '2220367111',
        'Estella',
        'Spoole',
        '369-718-4534',
        'espoolei@symantec.com',
        '97 Onsgard Alley',
        '11/1/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '1309923896',
        'Ingaberg',
        'Duffit',
        '984-706-6910',
        'iduffitj@shinystat.com',
        '7595 Northridge Place',
        '11/7/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '3393288093',
        'Riobard',
        'De Dei',
        '207-909-8893',
        'rdedeik@scribd.com',
        '94 Michigan Hill',
        '5/2/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '7991421489',
        'Everett',
        'Fairfoul',
        '211-217-6778',
        'efairfoull@tiny.cc',
        '59 Saint Paul Center',
        '7/12/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '6222104424',
        'Jarrid',
        'Rotherham',
        '132-858-2404',
        'jrotherhamm@kickstarter.com',
        '662 Armistice Circle',
        '9/19/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '8460714818',
        'Dorthea',
        'Whittier',
        '207-915-2967',
        'dwhittiern@dailymotion.com',
        '464 Macpherson Court',
        '9/11/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '4307889461',
        'Misha',
        'Brammer',
        '317-559-3393',
        'mbrammero@istockphoto.com',
        '17690 Blaine Parkway',
        '10/12/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '2606105016',
        'Caralie',
        'Gready',
        '888-916-4643',
        'cgreadyp@nasa.gov',
        '76 Hintze Center',
        '5/20/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '9284668185',
        'Fallon',
        'Stabler',
        '558-480-1356',
        'fstablerq@geocities.jp',
        '5 Messerschmidt Trail',
        '3/26/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '2962534457',
        'Boycey',
        'Hanselmann',
        '121-985-5625',
        'bhanselmannr@blogtalkradio.com',
        '39271 Fordem Circle',
        '2/7/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '6374211483',
        'Chico',
        'Japp',
        '466-713-6465',
        'cjapps@stumbleupon.com',
        '95 High Crossing Place',
        '8/18/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '9174809289',
        'Ulrikaumeko',
        'Tukely',
        '673-595-7882',
        'utukelyt@craigslist.org',
        '18902 Pine View Park',
        '5/8/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '7963904157',
        'Dorisa',
        'Menham',
        '621-287-7029',
        'dmenhamu@upenn.edu',
        '57 Trailsway Terrace',
        '9/18/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '5748524967',
        'Parnell',
        'Errington',
        '687-886-2147',
        'perringtonv@liveinternet.ru',
        '9626 Nelson Point',
        '11/2/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '6445658726',
        'Rorke',
        'Northgraves',
        '688-511-2241',
        'rnorthgravesw@nba.com',
        '608 Meadow Ridge Court',
        '10/28/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '3352239585',
        'Spence',
        'Blackburn',
        '988-955-8028',
        'sblackburnx@topsy.com',
        '702 Onsgard Park',
        '11/26/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '3306782162',
        'Edgar',
        'Lehrer',
        '388-881-8760',
        'elehrery@ed.gov',
        '67 Susan Terrace',
        '7/26/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '3792843682',
        'Bourke',
        'McFaul',
        '117-314-9033',
        'bmcfaulz@miitbeian.gov.cn',
        '6 Donald Place',
        '12/31/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '4428489778',
        'Mersey',
        'Tuhy',
        '800-258-5723',
        'mtuhy10@paginegialle.it',
        '752 Saint Paul Way',
        '7/28/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '7958890486',
        'Sherill',
        'Burnup',
        '377-603-8928',
        'sburnup11@sohu.com',
        '05 Everett Junction',
        '1/15/2023'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '1333887089',
        'Cathe',
        'Vamplew',
        '583-114-5811',
        'cvamplew12@themeforest.net',
        '5313 Superior Drive',
        '2/18/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '8083620861',
        'Sigismond',
        'Venard',
        '158-272-8825',
        'svenard13@jiathis.com',
        '831 Birchwood Trail',
        '9/4/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '7288757579',
        'Josi',
        'Lovelady',
        '914-747-4435',
        'jlovelady14@noaa.gov',
        '4110 Stang Alley',
        '1/14/2023'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '1607628952',
        'Cristal',
        'Ethridge',
        '840-923-8615',
        'cethridge15@wp.com',
        '52936 Kenwood Avenue',
        '2/4/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '5543919398',
        'Boris',
        'Bafford',
        '325-831-1160',
        'bbafford16@shutterfly.com',
        '546 Grim Plaza',
        '7/31/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '6516342658',
        'Pamela',
        'Friett',
        '799-867-9420',
        'pfriett17@icq.com',
        '6 American Way',
        '1/27/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '8533141019',
        'Alleyn',
        'Cowland',
        '837-624-5331',
        'acowland18@sun.com',
        '860 Kingsford Way',
        '10/8/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '3253678276',
        'Sara',
        'Levinge',
        '531-512-8365',
        'slevinge19@freewebs.com',
        '20765 American Circle',
        '9/18/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '8226692236',
        'Filide',
        'Di Filippo',
        '692-730-1988',
        'fdifilippo1a@yellowpages.com',
        '272 Killdeer Drive',
        '2/1/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '4240537067',
        'Gabriellia',
        'Bouchard',
        '505-434-6855',
        'gbouchard1b@baidu.com',
        '36 Hanson Alley',
        '12/23/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '3787455803',
        'Karilynn',
        'Fredi',
        '693-550-2146',
        'kfredi1c@multiply.com',
        '91 Almo Center',
        '7/19/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '8930505244',
        'Creighton',
        'Cremen',
        '789-161-7912',
        'ccremen1d@jalbum.net',
        '53386 Hanover Road',
        '8/10/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '4183120748',
        'Roselin',
        'Pikesley',
        '530-531-0616',
        'rpikesley1e@eepurl.com',
        '1570 Ridge Oak Avenue',
        '3/28/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '9935225298',
        'Gelya',
        'Espinal',
        '890-821-1788',
        'gespinal1f@fotki.com',
        '3 Schiller Avenue',
        '8/16/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '2091613183',
        'Wileen',
        'Elwood',
        '477-116-9829',
        'welwood1g@facebook.com',
        '1 Portage Drive',
        '5/6/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '9701036715',
        'Phillip',
        'Gavagan',
        '640-115-1148',
        'pgavagan1h@tuttocitta.it',
        '102 Anniversary Parkway',
        '6/23/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '5726572350',
        'Inesita',
        'Klasen',
        '429-600-9500',
        'iklasen1i@disqus.com',
        '3 Armistice Drive',
        '10/5/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '9026641677',
        'Sapphira',
        'Jandourek',
        '152-440-1912',
        'sjandourek1j@hibu.com',
        '77 Weeping Birch Place',
        '4/13/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '3430582889',
        'Lorrie',
        'Thorneloe',
        '927-114-9961',
        'lthorneloe1k@mail.ru',
        '23133 Derek Pass',
        '4/28/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '9234330305',
        'Willdon',
        'Reveley',
        '506-267-6552',
        'wreveley1l@npr.org',
        '986 Hansons Place',
        '7/24/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '0314755486',
        'Liliane',
        'Shevlane',
        '558-971-6156',
        'lshevlane1m@mtv.com',
        '6324 Lakewood Center',
        '10/16/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '9476038953',
        'Betsy',
        'Brashaw',
        '557-444-3652',
        'bbrashaw1n@bravesites.com',
        '25385 Dawn Trail',
        '1/18/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '6202857532',
        'Datha',
        'Cavnor',
        '475-994-2955',
        'dcavnor1o@technorati.com',
        '13506 Jay Drive',
        '7/12/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '7663469356',
        'Cornela',
        'Leydon',
        '735-835-3643',
        'cleydon1p@usgs.gov',
        '30 Loftsgordon Court',
        '9/5/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '2384265798',
        'Griz',
        'Bower',
        '316-314-4425',
        'gbower1q@nyu.edu',
        '128 Susan Point',
        '6/13/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '9270160873',
        'Brianne',
        'Spear',
        '748-234-9409',
        'bspear1r@census.gov',
        '96732 Troy Avenue',
        '2/5/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '0685361717',
        'Fina',
        'Toms',
        '852-985-8065',
        'ftoms1s@usnews.com',
        '751 Roxbury Court',
        '12/29/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '8145238971',
        'Patton',
        'Lamb-shine',
        '892-672-7498',
        'plambshine1t@github.io',
        '905 Meadow Ridge Place',
        '3/27/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '2050587200',
        'Tybie',
        'Boughtflower',
        '511-839-7909',
        'tboughtflower1u@jimdo.com',
        '2 Green Ridge Point',
        '10/4/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '4752825909',
        'Antonella',
        'Hurtado',
        '546-855-7998',
        'ahurtado1v@example.com',
        '79775 Nobel Street',
        '9/25/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '6781002371',
        'Nonah',
        'Nitto',
        '234-154-2318',
        'nnitto1w@ucoz.com',
        '481 Hudson Hill',
        '12/4/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '5076436584',
        'Gerek',
        'Spendley',
        '108-365-9832',
        'gspendley1x@aol.com',
        '2 Havey Street',
        '12/31/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '5781075146',
        'Kaycee',
        'Noraway',
        '850-558-8694',
        'knoraway1y@weebly.com',
        '25639 Butterfield Lane',
        '2/16/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '2935957929',
        'Nada',
        'McMurdo',
        '946-368-5627',
        'nmcmurdo1z@wp.com',
        '31286 Kropf Street',
        '3/11/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '6413183457',
        'Eugenio',
        'Tavernor',
        '410-993-8473',
        'etavernor20@infoseek.co.jp',
        '2576 Lighthouse Bay Place',
        '8/5/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '3678850971',
        'Sharron',
        'Spino',
        '544-305-8514',
        'sspino21@xinhuanet.com',
        '302 Mallard Avenue',
        '10/3/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '5550726664',
        'Vail',
        'Geeve',
        '280-674-8651',
        'vgeeve22@ebay.co.uk',
        '1509 Susan Lane',
        '10/20/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '8208457707',
        'Hewitt',
        'Hairon',
        '163-782-6604',
        'hhairon23@google.nl',
        '6130 Mallard Court',
        '2/18/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '7370515896',
        'See',
        'Seadon',
        '908-225-7692',
        'sseadon24@answers.com',
        '335 Union Plaza',
        '2/9/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '4610504199',
        'Mindy',
        'Duetschens',
        '829-515-0728',
        'mduetschens25@rakuten.co.jp',
        '783 Buena Vista Drive',
        '6/20/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '3556032891',
        'Jerrilyn',
        'Lardeux',
        '182-599-9645',
        'jlardeux26@discuz.net',
        '64655 Goodland Lane',
        '9/30/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '8535217622',
        'Cullie',
        'Blakes',
        '924-290-9576',
        'cblakes27@ebay.co.uk',
        '93768 Eastwood Plaza',
        '10/19/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '1589287538',
        'Zelma',
        'Vales',
        '275-811-9611',
        'zvales28@dell.com',
        '19627 Loftsgordon Plaza',
        '5/29/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '2783057867',
        'Emelina',
        'Morales',
        '808-984-9164',
        'emorales29@joomla.org',
        '2379 Kropf Center',
        '2/17/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '8061108322',
        'Fredra',
        'Boow',
        '473-389-8873',
        'fboow2a@cocolog-nifty.com',
        '947 Manitowish Parkway',
        '1/6/2023'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '7954490431',
        'Lyndy',
        'Thairs',
        '642-340-0614',
        'lthairs2b@independent.co.uk',
        '97197 Aberg Place',
        '6/18/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '0347500387',
        'Sukey',
        'Kruschov',
        '303-731-4890',
        'skruschov2c@chronoengine.com',
        '69 Nancy Alley',
        '8/2/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '2405868617',
        'Phillip',
        'Burvill',
        '110-636-4719',
        'pburvill2d@shareasale.com',
        '242 Beilfuss Street',
        '4/7/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '5574458207',
        'Gawain',
        'Mazin',
        '778-203-1954',
        'gmazin2e@upenn.edu',
        '2526 Rieder Road',
        '8/10/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '6142586763',
        'Roanne',
        'Gribbins',
        '209-811-6842',
        'rgribbins2f@mtv.com',
        '0797 Chive Drive',
        '9/22/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '6063697491',
        'Glyn',
        'Gravie',
        '525-875-1729',
        'ggravie2g@rambler.ru',
        '7 Bobwhite Parkway',
        '6/19/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '6017069912',
        'Jennifer',
        'Sudddard',
        '938-891-8767',
        'jsudddard2h@mit.edu',
        '71261 Holy Cross Terrace',
        '7/28/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '9583975120',
        'Ginger',
        'Ream',
        '188-956-1547',
        'gream2i@wp.com',
        '3846 Sommers Avenue',
        '2/9/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '8724518354',
        'Harald',
        'Czaple',
        '445-661-7225',
        'hczaple2j@bbc.co.uk',
        '3 Goodland Terrace',
        '6/1/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '4376452845',
        'Ladonna',
        'Cowp',
        '478-146-1607',
        'lcowp2k@nydailynews.com',
        '07037 Service Lane',
        '6/28/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '3662610281',
        'Gareth',
        'Sessions',
        '442-116-8991',
        'gsessions2l@wix.com',
        '925 Service Avenue',
        '4/7/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '4432611196',
        'Talbert',
        'Ewer',
        '751-738-1537',
        'tewer2m@economist.com',
        '86104 Bobwhite Way',
        '9/13/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '7943196617',
        'Desiri',
        'Lindley',
        '743-381-6763',
        'dlindley2n@geocities.jp',
        '6626 Autumn Leaf Court',
        '11/8/2022'
    );
insert into cliente (
        id_cliente,
        cli_nombres,
        cli_apellidos,
        cli_telefono,
        cli_email,
        cli_direccion,
        cli_fecha_registro
    )
values (
        '0832114914',
        'Man',
        'Connors',
        '506-701-3076',
        'mconnors2o@deviantart.com',
        '1 Center Trail',
        '2/21/2022'
    );