DROP TABLE IF EXISTS `mk_order_details_h`;
CREATE TABLE `mk_order_details_h`
(
    `DT_PT`             SMALLINT UNSIGNED NOT NULL COMMENT '日期分区键',
    `SERIAL_ID`         VARCHAR(30)       NOT NULL COMMENT '全局唯一序号',
    `ORDER_ID`          VARCHAR(30)       NOT NULL COMMENT '订单编号',
    `AMOUNT`            DECIMAL(16, 2)    NOT NULL COMMENT '交易金额',
    `CURRENCY`          CHAR(3)           NOT NULL COMMENT '交易币种号',
    `PRODUCT_CODE`      CHAR(10)          NOT NULL COMMENT '商品编号',
    `UNIT_PRICE`        DECIMAL(16, 2)    NOT NULL COMMENT '商品单价',
    `QUANTITY`          INT UNSIGNED      NOT NULL COMMENT '商品数量',
    `ORDER_TIMESTAMP`   CHAR(23)          NOT NULL COMMENT '订单创建时间戳',
    `STATUS`            TINYINT UNSIGNED  NOT NULL COMMENT '订单状态',
    `SUMMARY`           VARCHAR(100)   DEFAULT NULL COMMENT '摘要',
    `CREATED_DATA_DATE` CHAR(10)       DEFAULT '1900-01-01' COMMENT '数据创建日期',
    `CREATED_DATA_TIME` CHAR(8)        DEFAULT '00:00:00' COMMENT '数据创建时间',
    `LAST_UPDATE_DATE`  CHAR(10)       DEFAULT '1900-01-01' COMMENT '数据最后更新日期',
    `LAST_UPDATE_TIME`  CHAR(8)        DEFAULT '00:00:00' COMMENT '数据最后更新时间',
    `BAK1`              VARCHAR(255)   DEFAULT NULL COMMENT '备用字段1',
    `BAK2`              INT            DEFAULT NULL COMMENT '备用字段2',
    `BAK3`              DECIMAL(16, 2) DEFAULT NULL COMMENT '备用字段3',
    PRIMARY KEY (`DT_PT`, `SERIAL_ID`) USING BTREE,
    UNIQUE KEY `IDX_ORDER_ID` (`DT_PT`, `ORDER_ID`, `PRODUCT_CODE`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci
  ROW_FORMAT = DYNAMIC COMMENT ='订单明细表'
    PARTITION BY LIST (`DT_PT`) (
        PARTITION p1 VALUES IN (1),
        PARTITION p2 VALUES IN (2),
        PARTITION p3 VALUES IN (3),
        PARTITION p4 VALUES IN (4),
        PARTITION p5 VALUES IN (5),
        PARTITION p6 VALUES IN (6),
        PARTITION p7 VALUES IN (7),
        PARTITION p8 VALUES IN (8),
        PARTITION p9 VALUES IN (9),
        PARTITION p10 VALUES IN (10),
        PARTITION p11 VALUES IN (11),
        PARTITION p12 VALUES IN (12),
        PARTITION p13 VALUES IN (13),
        PARTITION p14 VALUES IN (14),
        PARTITION p15 VALUES IN (15),
        PARTITION p16 VALUES IN (16),
        PARTITION p17 VALUES IN (17),
        PARTITION p18 VALUES IN (18),
        PARTITION p19 VALUES IN (19),
        PARTITION p20 VALUES IN (20),
        PARTITION p21 VALUES IN (21),
        PARTITION p22 VALUES IN (22),
        PARTITION p23 VALUES IN (23),
        PARTITION p24 VALUES IN (24),
        PARTITION p25 VALUES IN (25),
        PARTITION p26 VALUES IN (26),
        PARTITION p27 VALUES IN (27),
        PARTITION p28 VALUES IN (28),
        PARTITION p29 VALUES IN (29),
        PARTITION p30 VALUES IN (30),
        PARTITION p31 VALUES IN (31),
        PARTITION p32 VALUES IN (32),
        PARTITION p33 VALUES IN (33),
        PARTITION p34 VALUES IN (34),
        PARTITION p35 VALUES IN (35),
        PARTITION p36 VALUES IN (36),
        PARTITION p37 VALUES IN (37),
        PARTITION p38 VALUES IN (38),
        PARTITION p39 VALUES IN (39),
        PARTITION p40 VALUES IN (40),
        PARTITION p41 VALUES IN (41),
        PARTITION p42 VALUES IN (42),
        PARTITION p43 VALUES IN (43),
        PARTITION p44 VALUES IN (44),
        PARTITION p45 VALUES IN (45),
        PARTITION p46 VALUES IN (46),
        PARTITION p47 VALUES IN (47),
        PARTITION p48 VALUES IN (48),
        PARTITION p49 VALUES IN (49),
        PARTITION p50 VALUES IN (50),
        PARTITION p51 VALUES IN (51),
        PARTITION p52 VALUES IN (52),
        PARTITION p53 VALUES IN (53),
        PARTITION p54 VALUES IN (54),
        PARTITION p55 VALUES IN (55),
        PARTITION p56 VALUES IN (56),
        PARTITION p57 VALUES IN (57),
        PARTITION p58 VALUES IN (58),
        PARTITION p59 VALUES IN (59),
        PARTITION p60 VALUES IN (60),
        PARTITION p61 VALUES IN (61),
        PARTITION p62 VALUES IN (62),
        PARTITION p63 VALUES IN (63),
        PARTITION p64 VALUES IN (64),
        PARTITION p65 VALUES IN (65),
        PARTITION p66 VALUES IN (66),
        PARTITION p67 VALUES IN (67),
        PARTITION p68 VALUES IN (68),
        PARTITION p69 VALUES IN (69),
        PARTITION p70 VALUES IN (70),
        PARTITION p71 VALUES IN (71),
        PARTITION p72 VALUES IN (72),
        PARTITION p73 VALUES IN (73),
        PARTITION p74 VALUES IN (74),
        PARTITION p75 VALUES IN (75),
        PARTITION p76 VALUES IN (76),
        PARTITION p77 VALUES IN (77),
        PARTITION p78 VALUES IN (78),
        PARTITION p79 VALUES IN (79),
        PARTITION p80 VALUES IN (80),
        PARTITION p81 VALUES IN (81),
        PARTITION p82 VALUES IN (82),
        PARTITION p83 VALUES IN (83),
        PARTITION p84 VALUES IN (84),
        PARTITION p85 VALUES IN (85),
        PARTITION p86 VALUES IN (86),
        PARTITION p87 VALUES IN (87),
        PARTITION p88 VALUES IN (88),
        PARTITION p89 VALUES IN (89),
        PARTITION p90 VALUES IN (90),
        PARTITION p91 VALUES IN (91),
        PARTITION p92 VALUES IN (92),
        PARTITION p93 VALUES IN (93),
        PARTITION p94 VALUES IN (94),
        PARTITION p95 VALUES IN (95),
        PARTITION p96 VALUES IN (96),
        PARTITION p97 VALUES IN (97),
        PARTITION p98 VALUES IN (98),
        PARTITION p99 VALUES IN (99),
        PARTITION p100 VALUES IN (100),
        PARTITION p101 VALUES IN (101),
        PARTITION p102 VALUES IN (102),
        PARTITION p103 VALUES IN (103),
        PARTITION p104 VALUES IN (104),
        PARTITION p105 VALUES IN (105),
        PARTITION p106 VALUES IN (106),
        PARTITION p107 VALUES IN (107),
        PARTITION p108 VALUES IN (108),
        PARTITION p109 VALUES IN (109),
        PARTITION p110 VALUES IN (110),
        PARTITION p111 VALUES IN (111),
        PARTITION p112 VALUES IN (112),
        PARTITION p113 VALUES IN (113),
        PARTITION p114 VALUES IN (114),
        PARTITION p115 VALUES IN (115),
        PARTITION p116 VALUES IN (116),
        PARTITION p117 VALUES IN (117),
        PARTITION p118 VALUES IN (118),
        PARTITION p119 VALUES IN (119),
        PARTITION p120 VALUES IN (120),
        PARTITION p121 VALUES IN (121),
        PARTITION p122 VALUES IN (122),
        PARTITION p123 VALUES IN (123),
        PARTITION p124 VALUES IN (124),
        PARTITION p125 VALUES IN (125),
        PARTITION p126 VALUES IN (126),
        PARTITION p127 VALUES IN (127),
        PARTITION p128 VALUES IN (128),
        PARTITION p129 VALUES IN (129),
        PARTITION p130 VALUES IN (130),
        PARTITION p131 VALUES IN (131),
        PARTITION p132 VALUES IN (132),
        PARTITION p133 VALUES IN (133),
        PARTITION p134 VALUES IN (134),
        PARTITION p135 VALUES IN (135),
        PARTITION p136 VALUES IN (136),
        PARTITION p137 VALUES IN (137),
        PARTITION p138 VALUES IN (138),
        PARTITION p139 VALUES IN (139),
        PARTITION p140 VALUES IN (140),
        PARTITION p141 VALUES IN (141),
        PARTITION p142 VALUES IN (142),
        PARTITION p143 VALUES IN (143),
        PARTITION p144 VALUES IN (144),
        PARTITION p145 VALUES IN (145),
        PARTITION p146 VALUES IN (146),
        PARTITION p147 VALUES IN (147),
        PARTITION p148 VALUES IN (148),
        PARTITION p149 VALUES IN (149),
        PARTITION p150 VALUES IN (150),
        PARTITION p151 VALUES IN (151),
        PARTITION p152 VALUES IN (152),
        PARTITION p153 VALUES IN (153),
        PARTITION p154 VALUES IN (154),
        PARTITION p155 VALUES IN (155),
        PARTITION p156 VALUES IN (156),
        PARTITION p157 VALUES IN (157),
        PARTITION p158 VALUES IN (158),
        PARTITION p159 VALUES IN (159),
        PARTITION p160 VALUES IN (160),
        PARTITION p161 VALUES IN (161),
        PARTITION p162 VALUES IN (162),
        PARTITION p163 VALUES IN (163),
        PARTITION p164 VALUES IN (164),
        PARTITION p165 VALUES IN (165),
        PARTITION p166 VALUES IN (166),
        PARTITION p167 VALUES IN (167),
        PARTITION p168 VALUES IN (168),
        PARTITION p169 VALUES IN (169),
        PARTITION p170 VALUES IN (170),
        PARTITION p171 VALUES IN (171),
        PARTITION p172 VALUES IN (172),
        PARTITION p173 VALUES IN (173),
        PARTITION p174 VALUES IN (174),
        PARTITION p175 VALUES IN (175),
        PARTITION p176 VALUES IN (176),
        PARTITION p177 VALUES IN (177),
        PARTITION p178 VALUES IN (178),
        PARTITION p179 VALUES IN (179),
        PARTITION p180 VALUES IN (180),
        PARTITION p181 VALUES IN (181),
        PARTITION p182 VALUES IN (182),
        PARTITION p183 VALUES IN (183),
        PARTITION p184 VALUES IN (184),
        PARTITION p185 VALUES IN (185),
        PARTITION p186 VALUES IN (186),
        PARTITION p187 VALUES IN (187),
        PARTITION p188 VALUES IN (188),
        PARTITION p189 VALUES IN (189),
        PARTITION p190 VALUES IN (190),
        PARTITION p191 VALUES IN (191),
        PARTITION p192 VALUES IN (192),
        PARTITION p193 VALUES IN (193),
        PARTITION p194 VALUES IN (194),
        PARTITION p195 VALUES IN (195),
        PARTITION p196 VALUES IN (196),
        PARTITION p197 VALUES IN (197),
        PARTITION p198 VALUES IN (198),
        PARTITION p199 VALUES IN (199),
        PARTITION p200 VALUES IN (200),
        PARTITION p201 VALUES IN (201),
        PARTITION p202 VALUES IN (202),
        PARTITION p203 VALUES IN (203),
        PARTITION p204 VALUES IN (204),
        PARTITION p205 VALUES IN (205),
        PARTITION p206 VALUES IN (206),
        PARTITION p207 VALUES IN (207),
        PARTITION p208 VALUES IN (208),
        PARTITION p209 VALUES IN (209),
        PARTITION p210 VALUES IN (210),
        PARTITION p211 VALUES IN (211),
        PARTITION p212 VALUES IN (212),
        PARTITION p213 VALUES IN (213),
        PARTITION p214 VALUES IN (214),
        PARTITION p215 VALUES IN (215),
        PARTITION p216 VALUES IN (216),
        PARTITION p217 VALUES IN (217),
        PARTITION p218 VALUES IN (218),
        PARTITION p219 VALUES IN (219),
        PARTITION p220 VALUES IN (220),
        PARTITION p221 VALUES IN (221),
        PARTITION p222 VALUES IN (222),
        PARTITION p223 VALUES IN (223),
        PARTITION p224 VALUES IN (224),
        PARTITION p225 VALUES IN (225),
        PARTITION p226 VALUES IN (226),
        PARTITION p227 VALUES IN (227),
        PARTITION p228 VALUES IN (228),
        PARTITION p229 VALUES IN (229),
        PARTITION p230 VALUES IN (230),
        PARTITION p231 VALUES IN (231),
        PARTITION p232 VALUES IN (232),
        PARTITION p233 VALUES IN (233),
        PARTITION p234 VALUES IN (234),
        PARTITION p235 VALUES IN (235),
        PARTITION p236 VALUES IN (236),
        PARTITION p237 VALUES IN (237),
        PARTITION p238 VALUES IN (238),
        PARTITION p239 VALUES IN (239),
        PARTITION p240 VALUES IN (240),
        PARTITION p241 VALUES IN (241),
        PARTITION p242 VALUES IN (242),
        PARTITION p243 VALUES IN (243),
        PARTITION p244 VALUES IN (244),
        PARTITION p245 VALUES IN (245),
        PARTITION p246 VALUES IN (246),
        PARTITION p247 VALUES IN (247),
        PARTITION p248 VALUES IN (248),
        PARTITION p249 VALUES IN (249),
        PARTITION p250 VALUES IN (250),
        PARTITION p251 VALUES IN (251),
        PARTITION p252 VALUES IN (252),
        PARTITION p253 VALUES IN (253),
        PARTITION p254 VALUES IN (254),
        PARTITION p255 VALUES IN (255),
        PARTITION p256 VALUES IN (256),
        PARTITION p257 VALUES IN (257),
        PARTITION p258 VALUES IN (258),
        PARTITION p259 VALUES IN (259),
        PARTITION p260 VALUES IN (260),
        PARTITION p261 VALUES IN (261),
        PARTITION p262 VALUES IN (262),
        PARTITION p263 VALUES IN (263),
        PARTITION p264 VALUES IN (264),
        PARTITION p265 VALUES IN (265),
        PARTITION p266 VALUES IN (266),
        PARTITION p267 VALUES IN (267),
        PARTITION p268 VALUES IN (268),
        PARTITION p269 VALUES IN (269),
        PARTITION p270 VALUES IN (270),
        PARTITION p271 VALUES IN (271),
        PARTITION p272 VALUES IN (272),
        PARTITION p273 VALUES IN (273),
        PARTITION p274 VALUES IN (274),
        PARTITION p275 VALUES IN (275),
        PARTITION p276 VALUES IN (276),
        PARTITION p277 VALUES IN (277),
        PARTITION p278 VALUES IN (278),
        PARTITION p279 VALUES IN (279),
        PARTITION p280 VALUES IN (280),
        PARTITION p281 VALUES IN (281),
        PARTITION p282 VALUES IN (282),
        PARTITION p283 VALUES IN (283),
        PARTITION p284 VALUES IN (284),
        PARTITION p285 VALUES IN (285),
        PARTITION p286 VALUES IN (286),
        PARTITION p287 VALUES IN (287),
        PARTITION p288 VALUES IN (288),
        PARTITION p289 VALUES IN (289),
        PARTITION p290 VALUES IN (290),
        PARTITION p291 VALUES IN (291),
        PARTITION p292 VALUES IN (292),
        PARTITION p293 VALUES IN (293),
        PARTITION p294 VALUES IN (294),
        PARTITION p295 VALUES IN (295),
        PARTITION p296 VALUES IN (296),
        PARTITION p297 VALUES IN (297),
        PARTITION p298 VALUES IN (298),
        PARTITION p299 VALUES IN (299),
        PARTITION p300 VALUES IN (300),
        PARTITION p301 VALUES IN (301),
        PARTITION p302 VALUES IN (302),
        PARTITION p303 VALUES IN (303),
        PARTITION p304 VALUES IN (304),
        PARTITION p305 VALUES IN (305),
        PARTITION p306 VALUES IN (306),
        PARTITION p307 VALUES IN (307),
        PARTITION p308 VALUES IN (308),
        PARTITION p309 VALUES IN (309),
        PARTITION p310 VALUES IN (310),
        PARTITION p311 VALUES IN (311),
        PARTITION p312 VALUES IN (312),
        PARTITION p313 VALUES IN (313),
        PARTITION p314 VALUES IN (314),
        PARTITION p315 VALUES IN (315),
        PARTITION p316 VALUES IN (316),
        PARTITION p317 VALUES IN (317),
        PARTITION p318 VALUES IN (318),
        PARTITION p319 VALUES IN (319),
        PARTITION p320 VALUES IN (320),
        PARTITION p321 VALUES IN (321),
        PARTITION p322 VALUES IN (322),
        PARTITION p323 VALUES IN (323),
        PARTITION p324 VALUES IN (324),
        PARTITION p325 VALUES IN (325),
        PARTITION p326 VALUES IN (326),
        PARTITION p327 VALUES IN (327),
        PARTITION p328 VALUES IN (328),
        PARTITION p329 VALUES IN (329),
        PARTITION p330 VALUES IN (330),
        PARTITION p331 VALUES IN (331),
        PARTITION p332 VALUES IN (332),
        PARTITION p333 VALUES IN (333),
        PARTITION p334 VALUES IN (334),
        PARTITION p335 VALUES IN (335),
        PARTITION p336 VALUES IN (336),
        PARTITION p337 VALUES IN (337),
        PARTITION p338 VALUES IN (338),
        PARTITION p339 VALUES IN (339),
        PARTITION p340 VALUES IN (340),
        PARTITION p341 VALUES IN (341),
        PARTITION p342 VALUES IN (342),
        PARTITION p343 VALUES IN (343),
        PARTITION p344 VALUES IN (344),
        PARTITION p345 VALUES IN (345),
        PARTITION p346 VALUES IN (346),
        PARTITION p347 VALUES IN (347),
        PARTITION p348 VALUES IN (348),
        PARTITION p349 VALUES IN (349),
        PARTITION p350 VALUES IN (350),
        PARTITION p351 VALUES IN (351),
        PARTITION p352 VALUES IN (352),
        PARTITION p353 VALUES IN (353),
        PARTITION p354 VALUES IN (354),
        PARTITION p355 VALUES IN (355),
        PARTITION p356 VALUES IN (356),
        PARTITION p357 VALUES IN (357),
        PARTITION p358 VALUES IN (358),
        PARTITION p359 VALUES IN (359),
        PARTITION p360 VALUES IN (360),
        PARTITION p361 VALUES IN (361),
        PARTITION p362 VALUES IN (362),
        PARTITION p363 VALUES IN (363),
        PARTITION p364 VALUES IN (364),
        PARTITION p365 VALUES IN (365),
        PARTITION p366 VALUES IN (366)
        );
