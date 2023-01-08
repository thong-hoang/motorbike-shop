-- status
INSERT INTO `status` (`id`, `name`)
VALUES (1, 'tạm ngưng'),
       (2, 'bình thường'),
       (3, 'giảm giá'),
       (4, 'ngừng kinh doanh'),
       (5, 'sắp về');

-- product status
INSERT INTO `product_status` (`product_id`, `status_id`)
VALUES (1, 3),
       (1, 5),
       (2, 2),
       (3, 1),
       (4, 3),
       (5, 2),
       (5, 5),
       (6,2),
       (7,2),
       (8,2),
       (9,2),
       (10,2),
       (11,2),
       (12,2),
       (13,2),
       (14,2),
       (15,2),
       (16,2),
       (17,2),
       (18,2),
       (19,2),
       (20,2),
       (21,2),
       (22,2),
       (23,2),
       (24,2),
       (25,2),
       (26,2),
       (27,2),
       (28,2),
       (29,2),
       (30,2),
       (31,2),
       (32,2),
       (33,2),
       (34,2),
       (35,2),
       (36,2),
       (37,2),
       (38,2),
       (39,2),
       (40,2),
       (41,2),
       (42,2),
       (43,2),
       (44,2),
       (45,2),
       (46,2),
       (47,2),
       (48,2),
       (49,2),
       (50,2),
       (51,2),
       (52,2),
       (53,2),
       (54,2),
       (55,2),
       (56,2),
       (57,2),
       (58,2),
       (59,2),
       (60,2),
       (61,2),
       (62,2),
       (63,2),
       (64,2),
       (65,2),
       (66,2),
       (67,2),
       (68,2),
       (69,2),
       (70,2),
       (71,2),
       (72,2),
       (73,2),
       (74,2),
       (75,2),
       (76,2),
       (77,2),
       (78,2),
       (79,2),
       (80,2),
       (81,2),
       (82,2),
       (83,2),
       (84,2),
       (85,2),
       (86,2),
       (87,2),
       (88,2),
       (89,2),
       (90,2),
       (91,2),
       (92,2),
       (93,2),
       (94,2),
       (95,2),
       (96,2),
       (97,2),
       (98,2),
       (99,2),
       (100,2),
       (101,2),
       (102,2),
       (103,2),
       (104,2),
       (105,2),
       (106,2),
       (107,2),
       (108,2),
       (109,2),
       (110,2),
       (111,2),
       (112,2),
       (113,2),
       (114,2),
       (115,2),
       (116,2),
       (117,2),
       (118,2),
       (119,2),
       (120,2),
       (121,2),
       (122,2),
       (123,2),
       (124,2),
       (125,2),
       (126,2),
       (127,2),
       (128,2),
       (129,2),
       (130,2),
       (131,2),
       (132,2),
       (133,2),
       (134,2),
       (135,2),
       (136,2),
       (137,2),
       (138,2),
       (139,2),
       (140,2),
       (141,2),
       (142,2),
       (143,2),
       (144,2),
       (145,2),
       (146,2),
       (147,2),
       (148,2),
       (149,2),
       (150,2),
       (151,2),
       (152,2),
       (153,2),
       (154,2),
       (155,2),
       (156,2),
       (157,2),
       (158,2),
       (159,2),
       (160,2),
       (161,2),
       (162,2),
       (163,2),
       (164,2),
       (165,2),
       (166,2),
       (167,2),
       (168,2),
       (169,2),
       (170,2),
       (171,2),
       (172,2),
       (173,2),
       (174,2),
       (175,2),
       (176,2),
       (177,2),
       (178,2),
       (179,2),
       (180,2),
       (181,2),
       (182,2),
       (183,2),
       (184,2),
       (185,2),
       (186,2),
       (187,2),
       (188,2),
       (189,2),
       (190,2),
       (191,2),
       (192,2),
       (193,2),
       (194,2),
       (195,2),
       (196,2),
       (197,2),
       (199,2),
       (200,2),
       (201,2),
       (202,2),
       (203,2),
       (204,2),
       (205,2),
       (206,2),
       (207,2),
       (208,2),
       (209,2),
       (210,2),
       (211,2),
       (212,2),
       (213,2),
       (214,2),
       (215,2),
       (216,2),
       (217,2),
       (218,2),
       (219,2),
       (220,2),
       (221,2),
       (222,2),
       (223,2),
       (224,2),
       (225,2),
       (226,2),
       (227,2),
       (228,2),
       (229,2),
       (230,2),
       (231,2);



-- products
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (1, 'winner-x-tieuchuan-2022.jpg', 'honda winner x 2022', 'Honda', 1, 3, 'Dòng xe HONDA WINNER X 2022 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 100000000, 0, 33);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (2, 'winner-x-dacbiet-2022.jpg', 'winner x dac biet 2022', 'Honda', 1, 3, 'Dòng xe WINNER X DAC BIET 2022 thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 70000000, 0, 29);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (3, 'winner-x-camo-2020.jpg', 'winner x camo 2020', 'Honda', 1, 3, 'Dòng xe WINNER X CAMO 2020 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 57000000, 0, 34);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (4, 'winner-x-thethao-v3-2022.jpg', 'winner x thethao v3 2022', 'Honda', 1, 3, 'Dòng xe WINNER X THETHAO V3 2022 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 35000000, 0, 43);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (5, 'winner-x-dacbiet-v3-2022.jpg', 'winner x dacbiet v3 2022', 'Honda', 1, 3, 'Dòng xe WINNER X DACBIET V3 2022 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 85000000, 0, 32);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (6, 'winner-x-tieuchuan-v3-2022.jpg', 'winner x tieuchuan v3 2022', 'Honda', 1, 3, 'Dòng xe WINNER X TIEUCHUAN V3 2022 thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 55000000, 0, 48);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (7, 'winner-x-camo-2022.jpg', 'winner x camo 2022', 'Honda', 1, 3, 'Dòng xe WINNER X CAMO 2022 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 122000000, 0, 36);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (8, 'winner-x-thethao-2022.jpg', 'winner x thethao 2022', 'Honda', 1, 3, 'Dòng xe WINNER X THETHAO 2022 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 32000000, 0, 36);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (9, 'winner-150.png', 'winner 150', 'Honda', 1, 3, 'Dòng xe WINNER 150 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 62000000, 0, 30);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (10, 'msx-2020.jpg', 'msx 2020', 'Honda', 1, 3, 'Dòng xe MSX 2020 thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 34000000, 0, 25);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (11, 'msx-2021.png', 'msx 2021', 'Honda', 1, 3, 'Dòng xe MSX 2021 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 38000000, 0, 45);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (12, 'sonic-2021.jpg', 'sonic 2021', 'Honda', 1, 3, 'Dòng xe SONIC 2021 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 88000000, 0, 46);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (13, 'sonic-2022.jpg', 'sonic 2022', 'Honda', 1, 3, 'Dòng xe SONIC 2022 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 88000000, 0, 38);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (14, 'cb150r-streetster.png', 'cb150r streetster', 'Honda', 1, 3, 'Dòng xe CB150R STREETSTER thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 77000000, 0, 28);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (15, 'cb150-verza.jpg', 'cb150 verza', 'Honda', 1, 3, 'Dòng xe CB150 VERZA thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 170000000, 0, 26);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (16, 'cb150r-exmotion.png', 'cb150r exmotion', 'Honda', 1, 3, 'Dòng xe CB150R EXMOTION thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 120000000, 0, 40);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (17, 'cb150r-streetfire.jpg', 'cb150r streetfire', 'Honda', 1, 3, 'Dòng xe CB150R STREETFIRE thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 99000000, 0, 21);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (18, 'cb150r-2021.jpg', 'cb150r 2021', 'Honda', 1, 3, 'Dòng xe CB150R 2021 thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 90000000, 0, 30);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (19, 'cb150x-2022.jpg', 'cb150x 2022', 'Honda', 1, 3, 'Dòng xe CB150X 2022 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 89000000, 0, 34);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (20, 'cbr150r-tieuchuan.png', 'cbr150r tieuchuan', 'Honda', 1, 3, 'Dòng xe CBR150R TIEUCHUAN thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 69000000, 0, 39);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (21, 'cbr150r-thethao.png', 'cbr150r thethao', 'Honda', 1, 3, 'Dòng xe CBR150R THETHAO thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 49000000, 0, 38);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (22, 'cbr150r-dacbiet.jpg', 'cbr150r dacbiet', 'Honda', 1, 3, 'Dòng xe CBR150R DACBIET thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 79000000, 0, 42);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (23, 'cbf125r-2021.jpg', 'cbf125r 2021', 'Honda', 1, 3, 'Dòng xe CBF125R 2021 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 76000000, 0, 48);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (24, 'cb-hornet-160r.png', 'cb hornet 160r', 'Honda', 1, 3, 'Dòng xe CB HORNET 160R thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 66000000, 0, 40);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (25, 'monkey-2021.png', 'monkey 2021', 'Honda', 1, 3, 'Dòng xe MONKEY 2021 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 62000000, 0, 49);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (26, 'rebel-1100.png', 'rebel 1100', 'Honda', 1, 5, 'Dòng xe REBEL 1100 thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 602000000, 0, 44);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (27, 'rebel-1100-dct.png', 'rebel 1100 dct', 'Honda', 1, 5, 'Dòng xe REBEL 1100 DCT thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 455000000, 0, 28);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (28, 'cbr1000rr-fireblade.png', 'cbr1000rr fireblade', 'Honda', 1, 5, 'Dòng xe CBR1000RR FIREBLADE thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 355000000, 0, 46);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (29, 'cbr1000rr-fireblade-sp-2018.png', 'cbr1000rr fireblade sp 2018', 'Honda', 1, 5, 'Dòng xe CBR1000RR FIREBLADE SP 2018 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 278000000, 0, 22);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (30, 'cbr1000rr-r-fireblade-2022.png', 'cbr1000rr r fireblade 2022', 'Honda', 1, 5, 'Dòng xe CBR1000RR R FIREBLADE 2022 thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 499000000, 0, 45);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (31, 'cbr1000rr-r-fireblade-sp-2022.png', 'cbr1000rr r fireblade sp 2022', 'Honda', 1, 5, 'Dòng xe CBR1000RR R FIREBLADE SP 2022 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 246000000, 0, 39);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (32, 'x-adv-750.png', 'x adv 750', 'Honda', 1, 5, 'Dòng xe X ADV 750 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 500000000, 0, 41);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (33, 'rebel-250.jpg', 'rebel 250', 'Honda', 1, 5, 'Dòng xe REBEL 250 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 345000000, 0, 22);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (34, 'rebel-300.jpg', 'rebel 300', 'Honda', 1, 5, 'Dòng xe REBEL 300 thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 278000000, 0, 26);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (35, 'rebel-500.png', 'rebel 500', 'Honda', 1, 5, 'Dòng xe REBEL 500 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 338000000, 0, 23);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (36, 'cbr250.jpg', 'cbr250', 'Honda', 1, 5, 'Dòng xe CBR250 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 200000000, 0, 21);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (37, 'cbr500r.jpg', 'cbr500r', 'Honda', 1, 5, 'Dòng xe CBR500R thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 379000000, 0, 23);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (38, 'cbr650r-2021.png', 'cbr650r 2021', 'Honda', 1, 5, 'Dòng xe CBR650R 2021 thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 369000000, 0, 44);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (39, 'cbr650r-2022.jpg', 'cbr650r 2022', 'Honda', 1, 5, 'Dòng xe CBR650R 2022 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 600000000, 0, 32);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (40, 'cbr650f.jpg', 'cbr650f', 'Honda', 1, 5, 'Dòng xe CBR650F thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 456000000, 0, 34);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (41, 'cb650r-2021.png', 'cb650r 2021', 'Honda', 1, 5, 'Dòng xe CB650R 2021 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 542000000, 0, 20);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (42, 'cb650r-2022.png', 'cb650r 2022', 'Honda', 1, 5, 'Dòng xe CB650R 2022 thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 355000000, 0, 45);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (43, 'cb500f.jpg', 'cb500f', 'Honda', 1, 5, 'Dòng xe CB500F thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 322000000, 0, 33);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (44, 'cb650f.jpg', 'cb650f', 'Honda', 1, 5, 'Dòng xe CB650F thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 440000000, 0, 37);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (45, 'cb300r.png', 'cb300r', 'Honda', 1, 5, 'Dòng xe CB300R thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 320000000, 0, 29);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (46, 'cb1000r.png', 'cb1000r', 'Honda', 1, 5, 'Dòng xe CB1000R thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 390000000, 0, 39);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (47, 'cb1000r-limited.jpg', 'cb1000r limited', 'Honda', 1, 5, 'Dòng xe CB1000R LIMITED thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 299000000, 0, 46);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (48, 'cb1100.jpg', 'cb1000', 'Honda', 1, 5, 'Dòng xe CB1000 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 482000000, 0, 49);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (49, 'cb500x.jpg', 'cb500x', 'Honda', 1, 5, 'Dòng xe CB500X thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 599000000, 0, 32);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (50, 'cbs350rs.jpg', 'cbs350rs', 'Honda', 1, 5, 'Dòng xe CBS350RS thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 355000000, 0, 39);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (51, 'intruder-150-2022.png', 'intruder 150 2022', 'Suzuki', 5, 3, 'Dòng xe INTRUDER 150 2022 thuộc hãng xe Suzuki cực hot.', '2022-12-14 21:37:40', 450000000, 0, 35);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (52, 'suzuki-satria-2022.png', 'suzuki satria 2022', 'Suzuki', 5, 3, 'Dòng xe SUZUKI SATRIA 2022 thuộc hãng xe Suzuki là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 75000000, 0, 39);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (53, 'raider-2022.png', 'raider 2022', 'Suzuki', 5, 3, 'Dòng xe RAIDER 2022 thuộc hãng xe Suzuki chất lượng cao và uy tín.', '2022-12-14 21:37:40', 46000000, 0, 45);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (54, 'gsx150-bandit.png', 'gsx150 bandit', 'Suzuki', 5, 3, 'Dòng xe GSX150 BANDIT thuộc hãng xe Suzuki cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 51000000, 0, 30);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (55, 'gd110.png', 'gd110', 'Suzuki', 5, 3, 'Dòng xe GD110 thuộc hãng xe Suzuki cực hot.', '2022-12-14 21:37:40', 62000000, 0, 38);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (56, 'gsx-s150.jpg', 'gsx s150', 'Suzuki', 5, 3, 'Dòng xe GSX S150 thuộc hãng xe Suzuki là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 44000000, 0, 21);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (57, 'gsx-r150.png', 'gsx r150', 'Suzuki', 5, 3, 'Dòng xe GSX R150 thuộc hãng xe Suzuki chất lượng cao và uy tín.', '2022-12-14 21:37:40', 78000000, 0, 39);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (58, 'raider-150-fi.jpg', 'raider 150 fi', 'Suzuki', 5, 3, 'Dòng xe RAIDER 150 FI thuộc hãng xe Suzuki cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 63000000, 0, 24);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (59, 'raider-150-2016.jpg', 'raider 150 2016', 'Suzuki', 5, 3, 'Dòng xe RAIDER 150 2016 thuộc hãng xe Suzuki cực hot.', '2022-12-14 21:37:40', 58000000, 0, 27);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (60, 'raider-150-2015.jpg', 'raider 150 2015', 'Suzuki', 5, 3, 'Dòng xe RAIDER 150 2015 thuộc hãng xe Suzuki là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 71000000, 0, 22);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (61, 'raider-150.jpg', 'raider 150', 'Suzuki', 5, 3, 'Dòng xe RAIDER 150 thuộc hãng xe Suzuki chất lượng cao và uy tín.', '2022-12-14 21:37:40', 49000000, 0, 43);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (62, 'en-150a.jpg', 'en 150a', 'Suzuki', 5, 3, 'Dòng xe EN 150A thuộc hãng xe Suzuki cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 56000000, 0, 34);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (63, 'gz150-a-2020.png', 'gz150 a 2020', 'Suzuki', 5, 3, 'Dòng xe GZ150 A 2020 thuộc hãng xe Suzuki cực hot.', '2022-12-14 21:37:40', 58000000, 0, 40);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (64, 'axelo-125-2017.jpg', 'axelo 125 2017', 'Suzuki', 5, 3, 'Dòng xe AXELO 125 2017 thuộc hãng xe Suzuki là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 64000000, 0, 27);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (65, 'africa-twin.jpg', 'africa twin', 'Honda', 1, 5, 'Dòng xe AFRICA TWIN thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 360000000, 0, 38);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (66, 'africa twin adventure sport', 'africa twin adventure sport', 'Honda', 1, 5, 'Dòng xe AFRICA TWIN ADVENTURE SPORT thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 250000000, 0, 48);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (67, 'gold-wing-2022.png', 'gold wing 2022', 'Honda', 1, 5, 'Dòng xe GOLD WING 2022 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 260000000, 0, 41);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (68, 'fury-1300.jpg', 'fury 1300', 'Honda', 1, 5, 'Dòng xe FURY 1300 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 330000000, 0, 35);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (69, 'shadow-phantom-750.jpg', 'shadow phantom 750', 'Honda', 1, 5, 'Dòng xe SHADOW PHANTOM 750 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 420000000, 0, 23);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (70, 'blade-2021.png', 'blade 2021', 'Honda', 1, 2, 'Dòng xe BLADE 2021 thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 21000000, 0, 26);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (71, 'blade-2022.png', 'blade 2022', 'Honda', 1, 2, 'Dòng xe BLADE 2022 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 26000000, 0, 43);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (72, 'wave-alpha-2015.jpg', 'wave alpha 2015', 'Honda', 1, 2, 'Dòng xe WAVE ALPHA 2015 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 18000000, 0, 27);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (73, 'wave-alpha-2022.png', 'wave alpha 2022', 'Honda', 1, 2, 'Dòng xe WAVE ALPHA 2022 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 27000000, 0, 31);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (74, 'wave-110s.jpg', 'wave 110s', 'Honda', 1, 2, 'Dòng xe WAVE 110S thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 22000000, 0, 47);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (75, 'wave-110rs.jpg', 'wave 110rs', 'Honda', 1, 2, 'Dòng xe WAVE 110RS thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 20000000, 0, 43);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (76, 'wave-alpha-zx.jpg', 'wave alpha zx', 'Honda', 1, 2, 'Dòng xe WAVE ALPHA ZX thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 25000000, 0, 26);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (77, 'wave-rsx-2014.png', 'wave rsx 2014', 'Honda', 1, 2, 'Dòng xe WAVE RSX 2014 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 29000000, 0, 48);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (78, 'wave-rsx-fi-at.jpg', 'wave rsx fi at', 'Honda', 1, 2, 'Dòng xe WAVE RSX FI AT thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 24000000, 0, 23);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (79, 'wave-rsx-2020.jpg', 'wave rsx 2020', 'Honda', 1, 2, 'Dòng xe WAVE RSX 2020 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 20000000, 0, 31);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (80, 'wave-rsx-fi-2022.png', 'wave rsx fi 2022', 'Honda', 1, 2, 'Dòng xe WAVE RSX FI 2022 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 22000000, 0, 25);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (81, 'super-dream-2013.png', 'super dream 2013', 'Honda', 1, 2, 'Dòng xe SUPER DREAM 2013 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 20000000, 0, 35);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (82, 'super-dream-2014.jpg', 'super dream 2014', 'Honda', 1, 2, 'Dòng xe SUPER DREAM 2014 thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 22000000, 0, 24);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (83, 'super-dream-2015.png', 'super dream 2015', 'Honda', 1, 2, 'Dòng xe SUPER DREAM 2015 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 21000000, 0, 32);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (84, 'future-fi-2013.jpg', 'future fi 2013', 'Honda', 1, 2, 'Dòng xe FUTURE FI 2013 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 28000000, 0, 32);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (85, 'future-fi-2014.jpg', 'future fi 2014', 'Honda', 1, 2, 'Dòng xe FUTURE FI 2014 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 17000000, 0, 24);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (86, 'future-fi-2022.png', 'future fi 2022', 'Honda', 1, 2, 'Dòng xe FUTURE FI 2022 thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 24000000, 0, 26);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (87, 'future-x.jpg', 'future x', 'Honda', 1, 2, 'Dòng xe FUTURE X thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 27000000, 0, 42);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (88, 'super-cub-c125.png', 'super cub c125', 'Honda', 1, 2, 'Dòng xe SUPER CUB C125 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 23000000, 0, 45);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (89, 'trail-cup.jpg', 'trail cup', 'Honda', 1, 2, 'Dòng xe TRAIL CUP thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 19000000, 0, 20);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (90, 'airblade-125-tieuchuan-2021.jpg', 'airblade 125 tieuchuan 2021', 'Honda', 1, 4, 'Dòng xe AIRBLADE 125 TIEUCHUAN 2021 thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 81000000, 0, 42);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (91, 'airblade-160-dacbiet-2022.png', 'airblade 160 dacbiet 2022', 'Honda', 1, 4, 'Dòng xe AIRBLADE 160 DACBIET 2022 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 50000000, 0, 26);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (92, 'airblade-125-dacbiet-2022.jpg', 'airblade 125 dacbiet 2022', 'Honda', 1, 4, 'Dòng xe AIRBLADE 125 DACBIET 2022 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 103000000, 0, 35);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (93, 'airblade-160-tieuchuan-2023.jpg', 'airblade 160 tieuchuan 2023', 'Honda', 1, 4, 'Dòng xe AIRBLADE 160 TIEUCHUAN 2023 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 54000000, 0, 43);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (94, 'airblade-125-dacbiet-2023.jpg', 'airblade 125 dacbiet 2023', 'Honda', 1, 4, 'Dòng xe AIRBLADE 125 DACBIET 2023 thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 76000000, 0, 20);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (95, 'airblade-150-2020.jpg', 'airblade 150 2020', 'Honda', 1, 4, 'Dòng xe AIRBLADE 150 2020 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 85000000, 0, 27);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (96, 'sh-mode-cbs-2022.jpg', 'sh mode cbs 2022', 'Honda', 1, 4, 'Dòng xe SH MODE CBS 2022 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 68000000, 0, 23);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (97, 'sh-150i-abs-2022.png', 'sh 150i abs 2022', 'Honda', 1, 4, 'Dòng xe SH 150I ABS 2022 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 51000000, 0, 46);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (98, 'sh-350i-2021.jpg', 'sh 350i 2021', 'Honda', 1, 4, 'Dòng xe SH 350I 2021 thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 85000000, 0, 35);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (99, 'sh-125i-cbs-2021.png', 'sh 125i cbs 2021', 'Honda', 1, 4, 'Dòng xe SH 125I CBS 2021 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 46000000, 0, 28);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (100, 'sh-150i-abs-2021.jpg', 'sh 150i abs 2021', 'Honda', 1, 4, 'Dòng xe SH 150I ABS 2021 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 45000000, 0, 42);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (101, 'sh-mode-abs-2022.jpg', 'sh mode abs 2022', 'Honda', 1, 4, 'Dòng xe SH MODE ABS 2022 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 83000000, 0, 41);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (102, 'sh-150i-abs-2020.jpg', 'sh 150i abs 2020', 'Honda', 1, 4, 'Dòng xe SH 150I ABS 2020 thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 116000000, 0, 47);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (103, 'sh-125i-cbs-2020.jpg', 'sh 125i cbs 2020', 'Honda', 1, 4, 'Dòng xe SH 125I CBS 2020 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 82000000, 0, 45);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (104, 'sh-mode-125i-2023.jpg', 'sh mode 125i 2023', 'Honda', 1, 4, 'Dòng xe SH MODE 125I 2023 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 56000000, 0, 23);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (105, 'sh-mode-125i-2019.jpg', 'sh mode 125i 2019', 'Honda', 1, 4, 'Dòng xe SH MODE 125I 2019 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 35000000, 0, 34);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (106, 'sh-125i-cbs-2022.jpg', 'sh 125i cbs 2022', 'Honda', 1, 4, 'Dòng xe SH 125I CBS 2022 thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 40000000, 0, 25);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (107, 'vision-catinh-2021.png', 'vision catinh 2021', 'Honda', 1, 4, 'Dòng xe VISION CATINH 2021 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 41000000, 0, 35);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (108, 'vision-dacbiet-2021.png', 'vision dacbiet 2021', 'Honda', 1, 4, 'Dòng xe VISION DACBIET 2021 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 78000000, 0, 33);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (109, 'vision-tieuchuan-2021.jpg', 'vision tieuchuan 2021', 'Honda', 1, 4, 'Dòng xe VISION TIEUCHUAN 2021 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 53000000, 0, 44);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (110, 'vision-caocap-2021.jpg', 'vision caocap 2021', 'Honda', 1, 4, 'Dòng xe VISION CAOCAP 2021 thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 30000000, 0, 27);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (111, 'vision-dacbiet-2019.jpg', 'vision dacbiet 2019', 'Honda', 1, 4, 'Dòng xe VISION DACBIET 2019 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 64000000, 0, 26);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (112, 'vision-tieuchuan-2019.jpg', 'vision tieuchuan 2019', 'Honda', 1, 4, 'Dòng xe VISION TIEUCHUAN 2019 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 70000000, 0, 40);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (113, 'vision-caocap-2022.jpg', 'vision caocap 2022', 'Honda', 1, 4, 'Dòng xe VISION CAOCAP 2022 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 91000000, 0, 28);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (114, 'vision-dacbiet-2020.jpg', 'vision dacbiet 2020', 'Honda', 1, 4, 'Dòng xe VISION DACBIET 2020 thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 41000000, 0, 49);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (115, 'vision-tieuchuan-2022.jpg', 'vision tieuchuan 2022', 'Honda', 1, 4, 'Dòng xe VISION TIEUCHUAN 2022 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 32000000, 0, 43);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (116, 'lead-caocap-2022.jpg', 'lead caocap 2022', 'Honda', 1, 4, 'Dòng xe LEAD CAOCAP 2022 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 34000000, 0, 26);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (117, 'lead-tieuchuan-2022.jpg', 'lead tieuchuan 2022', 'Honda', 1, 4, 'Dòng xe LEAD TIEUCHUAN 2022 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 76000000, 0, 28);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (118, 'lead-dacbiet-2022.jpg', 'lead dacbiet 2022', 'Honda', 1, 4, 'Dòng xe LEAD DACBIET 2022 thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 110000000, 0, 48);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (119, 'adv-150.png', 'adv 150', 'Honda', 1, 4, 'Dòng xe ADV 150 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 47000000, 0, 48);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (120, 'adv-160.png', 'adv 160', 'Honda', 1, 4, 'Dòng xe ADV 160 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 64000000, 0, 47);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (121, 'adv-350.jpeg', 'adv 350.', 'Honda', 1, 4, 'Dòng xe ADV 350. thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 35000000, 0, 35);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (122, 'dio.png', 'dio', 'Honda', 1, 4, 'Dòng xe DIO thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 94000000, 0, 40);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (123, 'forza-300.jpg', 'forza 300', 'Honda', 1, 4, 'Dòng xe FORZA 300 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 50000000, 0, 34);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (124, 'forza-350.png', 'forza 350', 'Honda', 1, 4, 'Dòng xe FORZA 350 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 94000000, 0, 30);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (125, 'genivo.png', 'genivo', 'Honda', 1, 4, 'Dòng xe GENIVO thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 30000000, 0, 44);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (126, 'pcx.jpg', 'pcx', 'Honda', 1, 4, 'Dòng xe PCX thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 83000000, 0, 21);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (127, 'today-50cc.jpg', 'today 50cc', 'Honda', 1, 4, 'Dòng xe TODAY 50CC thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 31000000, 0, 31);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (128, 'vario-150.jpg', 'vario 150', 'Honda', 1, 4, 'Dòng xe VARIO 150 thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 118000000, 0, 23);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (129, 'x-adv.png', 'x adv', 'Honda', 1, 4, 'Dòng xe X ADV thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 100000000, 0, 40);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (130, 'zoomer-x.png', 'zoomer x', 'Honda', 1, 4, 'Dòng xe ZOOMER X thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 31000000, 0, 20);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (131, 'dunk.jpg', 'dunk', 'Honda', 1, 4, 'Dòng xe DUNK thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 45000000, 0, 30);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (132, 'scoopy.jpg', 'scoopy', 'Honda', 1, 4, 'Dòng xe SCOOPY thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 63000000, 0, 49);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (133, 'moove.png', 'moove', 'Honda', 1, 4, 'Dòng xe MOOVE thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 104000000, 0, 27);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (134, 'giorno.jpg', 'giorno', 'Honda', 1, 4, 'Dòng xe GIORNO thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 31000000, 0, 35);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (135, 'click-160.png', 'click 160', 'Honda', 1, 4, 'Dòng xe CLICK 160 thuộc hãng xe Honda cực hot.', '2022-12-14 21:37:40', 99000000, 0, 31);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (136, 'pcx-hybrid.jpg', 'pcx hybrid', 'Honda', 1, 4, 'Dòng xe PCX HYBRID thuộc hãng xe Honda là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 88000000, 0, 22);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (137, 'vario-125.jpg', 'vario 125', 'Honda', 1, 4, 'Dòng xe VARIO 125 thuộc hãng xe Honda chất lượng cao và uy tín.', '2022-12-14 21:37:40', 68000000, 0, 39);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (138, 'beat.jpg', 'beat', 'Honda', 1, 4, 'Dòng xe BEAT thuộc hãng xe Honda cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 45000000, 0, 44);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (139, 'gixxer-sf250.jpg', 'gixxer sf250', 'Suzuki', 5, 5, 'Dòng xe GIXXER SF250 thuộc hãng xe Suzuki cực hot.', '2022-12-14 21:37:40', 55000000, 0, 49);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (140, 'hayabusa-1300.jpg', 'hayabusa 1300', 'Suzuki', 5, 5, 'Dòng xe HAYABUSA 1300 thuộc hãng xe Suzuki là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 107000000, 0, 39);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (141, 'gixxer-250.jpg', 'gixxer 250', 'Suzuki', 5, 5, 'Dòng xe GIXXER 250 thuộc hãng xe Suzuki chất lượng cao và uy tín.', '2022-12-14 21:37:40', 59000000, 0, 37);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (142, 'hayabusa-2022.jpg', 'hayabusa 2022', 'Suzuki', 5, 5, 'Dòng xe HAYABUSA 2022 thuộc hãng xe Suzuki cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 105000000, 0, 25);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (143, 'v-strom-1050.jpg', 'v strom 1050', 'Suzuki', 5, 5, 'Dòng xe V STROM 1050 thuộc hãng xe Suzuki cực hot.', '2022-12-14 21:37:40', 112000000, 0, 31);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (144, 'gsx-s1000-2022.jpg', 'gsx s1000 2022', 'Suzuki', 5, 5, 'Dòng xe GSX S1000 2022 thuộc hãng xe Suzuki là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 111000000, 0, 48);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (145, 'gladius-650.jpg', 'gladius 650', 'Suzuki', 5, 5, 'Dòng xe GLADIUS 650 thuộc hãng xe Suzuki chất lượng cao và uy tín.', '2022-12-14 21:37:40', 85000000, 0, 36);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (146, 'viva-115-fi-2015.jpg', 'viva 115 fi 2015', 'Suzuki', 5, 2, 'Dòng xe VIVA 115 FI 2015 thuộc hãng xe Suzuki cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 72000000, 0, 48);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (147, 'revo-110-vanh-duc.jpg', 'revo 110 vanh duc', 'Suzuki', 5, 2, 'Dòng xe REVO 110 VANH DUC thuộc hãng xe Suzuki cực hot.', '2022-12-14 21:37:40', 50000000, 0, 29);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (148, 'revo-110-phanh-dia.jpg', 'revo 110 phanh dia', 'Suzuki', 5, 2, 'Dòng xe REVO 110 PHANH DIA thuộc hãng xe Suzuki là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 88000000, 0, 40);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (149, 'revo-110-phanh-co.png', 'revo 110 phanh co', 'Suzuki', 5, 2, 'Dòng xe REVO 110 PHANH CO thuộc hãng xe Suzuki chất lượng cao và uy tín.', '2022-12-14 21:37:40', 64000000, 0, 28);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (150, 'x-bike-125.jpg', 'x bike 125', 'Suzuki', 5, 2, 'Dòng xe X BIKE 125 thuộc hãng xe Suzuki cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 115000000, 0, 29);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (151, 'axelo-125.jpg', 'axelo 125', 'Suzuki', 5, 2, 'Dòng xe AXELO 125 thuộc hãng xe Suzuki cực hot.', '2022-12-14 21:37:40', 31000000, 0, 28);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (152, 'viva-115-fi.jpg', 'viva 115 fi', 'Suzuki', 5, 2, 'Dòng xe VIVA 115 FI thuộc hãng xe Suzuki là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 68000000, 0, 28);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (153, 'impulse.png', 'impulse', 'Suzuki', 5, 4, 'Dòng xe IMPULSE thuộc hãng xe Suzuki chất lượng cao và uy tín.', '2022-12-14 21:37:40', 98000000, 0, 28);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (154, 'burgman-street-125.png', 'burgman street 125', 'Suzuki', 5, 4, 'Dòng xe BURGMAN STREET 125 thuộc hãng xe Suzuki cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 38000000, 0, 22);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (155, 'address-110.jpg', 'address 110', 'Suzuki', 5, 4, 'Dòng xe ADDRESS 110 thuộc hãng xe Suzuki cực hot.', '2022-12-14 21:37:40', 75000000, 0, 22);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (156, 'impulse-125-fi.jpg', 'impulse 125 fi', 'Suzuki', 5, 4, 'Dòng xe IMPULSE 125 FI thuộc hãng xe Suzuki là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 49000000, 0, 42);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (157, 'skydrive-125.jpg', 'skydrive 125', 'Suzuki', 5, 4, 'Dòng xe SKYDRIVE 125 thuộc hãng xe Suzuki chất lượng cao và uy tín.', '2022-12-14 21:37:40', 71000000, 0, 49);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (158, 'ua125-t.jpg', 'ua125 t', 'Suzuki', 5, 4, 'Dòng xe UA125 T thuộc hãng xe Suzuki cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 43000000, 0, 21);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (159, 'hayate-125.jpg', 'hayate 125', 'Suzuki', 5, 4, 'Dòng xe HAYATE 125 thuộc hãng xe Suzuki cực hot.', '2022-12-14 21:37:40', 89000000, 0, 21);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (160, 'hayate-125-ss-fi-special.jpg', 'hayate 125 ss fi special', 'Suzuki', 5, 4, 'Dòng xe HAYATE 125 SS FI SPECIAL thuộc hãng xe Suzuki là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 75000000, 0, 48);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (161, 'hayate-125-ss-fi.jpg', 'hayate 125 ss fi', 'Suzuki', 5, 4, 'Dòng xe HAYATE 125 SS FI thuộc hãng xe Suzuki chất lượng cao và uy tín.', '2022-12-14 21:37:40', 101000000, 0, 27);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (162, 'hayate-125-ss.jpg', 'hayate 125 ss', 'Suzuki', 5, 4, 'Dòng xe HAYATE 125 SS thuộc hãng xe Suzuki cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 32000000, 0, 30);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (163, 'born-to-ride-004.png', 'born to ride 004', 'Yamaha', 2, 3, 'Dòng xe BORN TO RIDE 004 thuộc hãng xe Yamaha cực hot.', '2022-12-14 21:37:40', 112000000, 0, 39);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (164, '60th-white-004.png', '60th white 004', 'Yamaha', 2, 3, 'Dòng xe 60TH WHITE 004 thuộc hãng xe Yamaha là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 45000000, 0, 35);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (165, 'monster-04-copy.png', 'monster 04 copy', 'Yamaha', 2, 3, 'Dòng xe MONSTER 04 COPY thuộc hãng xe Yamaha chất lượng cao và uy tín.', '2022-12-14 21:37:40', 79000000, 0, 48);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (166, 'exciter-155-gp-deep-purple-004.png', 'exciter 155 gp deep purple 004', 'Yamaha', 2, 3, 'Dòng xe EXCITER 155 GP DEEP PURPLE 004 thuộc hãng xe Yamaha cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 94000000, 0, 21);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (167, 'exciter-155-gp-004.png', 'exciter 155 gp 004', 'Yamaha', 2, 3, 'Dòng xe EXCITER 155 GP 004 thuộc hãng xe Yamaha cực hot.', '2022-12-14 21:37:40', 67000000, 0, 36);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (168, 'ex155-petronas-004.png', 'ex155 petronas 004', 'Yamaha', 2, 3, 'Dòng xe EX155 PETRONAS 004 thuộc hãng xe Yamaha là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 92000000, 0, 31);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (169, 'ex155-yellow-grey-004.png', 'ex155 yellow grey 004', 'Yamaha', 2, 3, 'Dòng xe EX155 YELLOW GREY 004 thuộc hãng xe Yamaha chất lượng cao và uy tín.', '2022-12-14 21:37:40', 46000000, 0, 28);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (170, 'exciter-155-rc-dlx-reddish-yellow-004.png', 'exciter 155 rc dlx reddish yellow 004', 'Yamaha', 2, 3, 'Dòng xe EXCITER 155 RC DLX REDDISH YELLOW 004 thuộc hãng xe Yamaha cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 78000000, 0, 44);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (171, 'exciter-155-mat-black-smartkey-004.png', 'exciter 155 mat black smartkey 004', 'Yamaha', 2, 3, 'Dòng xe EXCITER 155 MAT BLACK SMARTKEY 004 thuộc hãng xe Yamaha cực hot.', '2022-12-14 21:37:40', 92000000, 0, 44);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (172, 'xe-con-tay-co-dien-yamaha-sr400.png', 'xe con tay co dien yamaha sr400', 'Yamaha', 2, 3, 'Dòng xe XE CON TAY CO DIEN YAMAHA SR400 thuộc hãng xe Yamaha là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 81000000, 0, 43);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (173, 'exciter-155-mat-red-004-1.png', 'exciter 155 mat red 004 1', 'Yamaha', 2, 3, 'Dòng xe EXCITER 155 MAT RED 004 1 thuộc hãng xe Yamaha chất lượng cao và uy tín.', '2022-12-14 21:37:40', 57000000, 0, 22);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (174, 'exciter-150-pearl-white-004.png', 'exciter 150 pearl white 004', 'Yamaha', 2, 3, 'Dòng xe EXCITER 150 PEARL WHITE 004 thuộc hãng xe Yamaha cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 91000000, 0, 29);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (175, 'exciter-blue-orange-004-1.png', 'exciter blue orange 004 1', 'Yamaha', 2, 3, 'Dòng xe EXCITER BLUE ORANGE 004 1 thuộc hãng xe Yamaha cực hot.', '2022-12-14 21:37:40', 55000000, 0, 35);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (176, 'exciter-mat-black-004-1.png', 'exciter mat black 004 1', 'Yamaha', 2, 3, 'Dòng xe EXCITER MAT BLACK 004 1 thuộc hãng xe Yamaha là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 55000000, 0, 35);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (177, 'yamaha-xsr-115-001.png', 'yamaha xsr 115 001', 'Yamaha', 2, 3, 'Dòng xe YAMAHA XSR 115 001 thuộc hãng xe Yamaha chất lượng cao và uy tín.', '2022-12-14 21:37:40', 62000000, 0, 28);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (178, 'yamaha-150.png', 'yamaha 150', 'Yamaha', 2, 3, 'Dòng xe YAMAHA 150 thuộc hãng xe Yamaha cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 74000000, 0, 29);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (179, '2021_mtn320-a_pgd_usa_mt-03_storm-fluo_360_036-1.png', '2021_mtn320 a_pgd_usa_mt 03_storm fluo_360_036 1', 'Yamaha', 2, 5, 'Dòng xe 2021_MTN320 A_PGD_USA_MT 03_STORM FLUO_360_036 1 thuộc hãng xe Yamaha cực hot.', '2022-12-14 21:37:40', 111000000, 0, 41);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (180, 'mt15-gp-004.png', 'mt15 gp 004', 'Yamaha', 2, 5, 'Dòng xe MT15 GP 004 thuộc hãng xe Yamaha là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 36000000, 0, 35);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (181, 'r15-gp-004.png', 'r15 gp 004', 'Yamaha', 2, 5, 'Dòng xe R15 GP 004 thuộc hãng xe Yamaha chất lượng cao và uy tín.', '2022-12-14 21:37:40', 99000000, 0, 45);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (182, 'yamaha-92904.png', 'yamaha 92904', 'Yamaha', 2, 5, 'Dòng xe YAMAHA 92904 thuộc hãng xe Yamaha cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 102000000, 0, 49);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (183, 'r15m-silver-004.png', 'r15m silver 004', 'Yamaha', 2, 5, 'Dòng xe R15M SILVER 004 thuộc hãng xe Yamaha cực hot.', '2022-12-14 21:37:40', 85000000, 0, 34);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (184, 'r15_stdblue_idn_2020-copy.png', 'r15_stdblue_idn_2020 copy', 'Yamaha', 2, 5, 'Dòng xe R15_STDBLUE_IDN_2020 COPY thuộc hãng xe Yamaha là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 50000000, 0, 49);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (185, 'r15m-anni-60th-004.png', 'r15m anni 60th 004', 'Yamaha', 2, 5, 'Dòng xe R15M ANNI 60TH 004 thuộc hãng xe Yamaha chất lượng cao và uy tín.', '2022-12-14 21:37:40', 115000000, 0, 42);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (186, 'r15m-monster-004-2.png', 'r15m monster 004 2', 'Yamaha', 2, 5, 'Dòng xe R15M MONSTER 004 2 thuộc hãng xe Yamaha cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 105000000, 0, 25);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (187, '2020-yamaha-tenere-700-4.jpg', '2020 yamaha tenere 700 4', 'Yamaha', 2, 5, 'Dòng xe 2020 YAMAHA TENERE 700 4 thuộc hãng xe Yamaha cực hot.', '2022-12-14 21:37:40', 81000000, 0, 27);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (188, '2020-yamaha-mt-10-2-1.jpg', '2020 yamaha mt 10 2 1', 'Yamaha', 2, 5, 'Dòng xe 2020 YAMAHA MT 10 2 1 thuộc hãng xe Yamaha là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 75000000, 0, 46);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (189, 'ymh-motor-vn-2022_yzf690_dpbmc_usa_team-yamaha-blue_s3_cmyk.png', 'ymh motor vn 2022_yzf690_dpbmc_usa_team yamaha blue_s3_cmyk', 'Yamaha', 2, 5, 'Dòng xe YMH MOTOR VN 2022_YZF690_DPBMC_USA_TEAM YAMAHA BLUE_S3_CMYK thuộc hãng xe Yamaha chất lượng cao và uy tín.', '2022-12-14 21:37:40', 86000000, 0, 42);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (190, '2021-yamaha-mt-09-4.jpg', '2021 yamaha mt 09 4', 'Yamaha', 2, 5, 'Dòng xe 2021 YAMAHA MT 09 4 thuộc hãng xe Yamaha cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 44000000, 0, 46);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (191, 'yamaha_mt-09_2022_1.jpg', 'yamaha_mt 09_2022_1', 'Yamaha', 2, 5, 'Dòng xe YAMAHA_MT 09_2022_1 thuộc hãng xe Yamaha cực hot.', '2022-12-14 21:37:40', 111000000, 0, 30);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (192, 'yamaha-yzf-r15-2013.png', 'yamaha yzf r15 2013', 'Yamaha', 2, 5, 'Dòng xe YAMAHA YZF R15 2013 thuộc hãng xe Yamaha là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 65000000, 0, 24);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (193, 'yamaha-mt-15-22.png', 'yamaha mt 15 22', 'Yamaha', 2, 5, 'Dòng xe YAMAHA MT 15 22 thuộc hãng xe Yamaha chất lượng cao và uy tín.', '2022-12-14 21:37:40', 109000000, 0, 26);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (194, 'yamaha_motocross_1_nqpg.png', 'yamaha_motocross_1_nqpg', 'Yamaha', 2, 5, 'Dòng xe YAMAHA_MOTOCROSS_1_NQPG thuộc hãng xe Yamaha cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 57000000, 0, 49);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (195, 'jupiter-pearl-white-004.png', 'jupiter pearl white 004', 'Yamaha', 2, 2, 'Dòng xe JUPITER PEARL WHITE 004 thuộc hãng xe Yamaha cực hot.', '2022-12-14 21:37:40', 32000000, 0, 48);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (196, 'jupiter-mat-black-004.png', 'jupiter mat black 004', 'Yamaha', 2, 2, 'Dòng xe JUPITER MAT BLACK 004 thuộc hãng xe Yamaha là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 52000000, 0, 34);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (197, 'jupiter-finn-urban-blue-004.png', 'jupiter finn urban blue 004', 'Yamaha', 2, 2, 'Dòng xe JUPITER FINN URBAN BLUE 004 thuộc hãng xe Yamaha chất lượng cao và uy tín.', '2022-12-14 21:37:40', 96000000, 0, 40);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (199, 'jupiter-finn-blue-metallic-004-1.png', 'jupiter finn blue metallic 004 1', 'Yamaha', 2, 2, 'Dòng xe JUPITER FINN BLUE METALLIC 004 1 thuộc hãng xe Yamaha cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 91000000, 0, 49);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (200, 'sirius-red-metallic-004.png', 'sirius red metallic 004', 'Yamaha', 2, 2, 'Dòng xe SIRIUS RED METALLIC 004 thuộc hãng xe Yamaha cực hot.', '2022-12-14 21:37:40', 108000000, 0, 23);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (201, 'sirius-red-black-006.png', 'sirius red black 006', 'Yamaha', 2, 2, 'Dòng xe SIRIUS RED BLACK 006 thuộc hãng xe Yamaha là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 30000000, 0, 42);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (202, 'sirius-dark-blue-007.png', 'sirius dark blue 007', 'Yamaha', 2, 2, 'Dòng xe SIRIUS DARK BLUE 007 thuộc hãng xe Yamaha chất lượng cao và uy tín.', '2022-12-14 21:37:40', 72000000, 0, 43);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (203, 'sirius-red-black-008.png', 'sirius red black 008', 'Yamaha', 2, 2, 'Dòng xe SIRIUS RED BLACK 008 thuộc hãng xe Yamaha cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 61000000, 0, 32);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (204, 'sirius-mat-black-disk-004.png', 'sirius mat black disk 004', 'Yamaha', 2, 2, 'Dòng xe SIRIUS MAT BLACK DISK 004 thuộc hãng xe Yamaha cực hot.', '2022-12-14 21:37:40', 52000000, 0, 22);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (205, 'sirius-bluish-gray-metallic-disk-004.png', 'sirius bluish gray metallic disk 004', 'Yamaha', 2, 2, 'Dòng xe SIRIUS BLUISH GRAY METALLIC DISK 004 thuộc hãng xe Yamaha là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 65000000, 0, 27);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (206, 'sirius-black-drum-004-1.png', 'sirius black drum 004 1', 'Yamaha', 2, 2, 'Dòng xe SIRIUS BLACK DRUM 004 1 thuộc hãng xe Yamaha chất lượng cao và uy tín.', '2022-12-14 21:37:40', 107000000, 0, 40);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (207, 'sirius-black-disk-004.png', 'sirius black disk 004', 'Yamaha', 2, 2, 'Dòng xe SIRIUS BLACK DISK 004 thuộc hãng xe Yamaha cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 90000000, 0, 49);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (208, 'sirius-yellow-rc-004.png', 'sirius yellow rc 004', 'Yamaha', 2, 2, 'Dòng xe SIRIUS YELLOW RC 004 thuộc hãng xe Yamaha cực hot.', '2022-12-14 21:37:40', 66000000, 0, 22);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (209, 'std-white-metallic-6-hub-004.png', 'std white metallic 6 hub 004', 'Yamaha', 2, 2, 'Dòng xe STD WHITE METALLIC 6 HUB 004 thuộc hãng xe Yamaha là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 32000000, 0, 42);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (210, 'yamaha-jupiter-tvs.png', 'yamaha jupiter tvs', 'Yamaha', 2, 2, 'Dòng xe YAMAHA JUPITER TVS thuộc hãng xe Yamaha chất lượng cao và uy tín.', '2022-12-14 21:37:40', 100000000, 0, 29);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (211, 'rc-black-metallic-y-004-copy.png', 'rc black metallic y 004 copy', 'Yamaha', 2, 2, 'Dòng xe RC BLACK METALLIC Y 004 COPY thuộc hãng xe Yamaha cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 95000000, 0, 24);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (212, 'yamaha-ya-1-5.png', 'yamaha ya 1 5', 'Yamaha', 2, 2, 'Dòng xe YAMAHA YA 1 5 thuộc hãng xe Yamaha cực hot.', '2022-12-14 21:37:40', 99000000, 0, 46);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (213, 'freego-mat-grey-smk-004.png', 'freego mat grey smk 004', 'Yamaha', 2, 3, 'Dòng xe FREEGO MAT GREY SMK 004 thuộc hãng xe Yamaha là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 86000000, 0, 37);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (214, 'freego-white-metallic-004.png', 'freego white metallic 004', 'Yamaha', 2, 3, 'Dòng xe FREEGO WHITE METALLIC 004 thuộc hãng xe Yamaha chất lượng cao và uy tín.', '2022-12-14 21:37:40', 73000000, 0, 39);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (215, 'new-grande-limited-pink-004.png', 'new grande limited pink 004', 'Yamaha', 2, 3, 'Dòng xe NEW GRANDE LIMITED PINK 004 thuộc hãng xe Yamaha cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 87000000, 0, 46);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (216, 'new-grande-mat-orange-004.png', 'new grande mat orange 004', 'Yamaha', 2, 3, 'Dòng xe NEW GRANDE MAT ORANGE 004 thuộc hãng xe Yamaha cực hot.', '2022-12-14 21:37:40', 86000000, 0, 26);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (217, 'new-janus-mat-black-pink-smk-004.png', 'new janus mat black pink smk 004', 'Yamaha', 2, 3, 'Dòng xe NEW JANUS MAT BLACK PINK SMK 004 thuộc hãng xe Yamaha là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 90000000, 0, 28);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (218, 'janus-white-004.png', 'janus white 004', 'Yamaha', 2, 3, 'Dòng xe JANUS WHITE 004 thuộc hãng xe Yamaha chất lượng cao và uy tín.', '2022-12-14 21:37:40', 39000000, 0, 42);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (219, 'latte-dark-grey-004.png', 'latte dark grey 004', 'Yamaha', 2, 3, 'Dòng xe LATTE DARK GREY 004 thuộc hãng xe Yamaha cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 100000000, 0, 20);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (220, 'x30-monster-004.png', 'x30 monster 004', 'Yamaha', 2, 3, 'Dòng xe X30 MONSTER 004 thuộc hãng xe Yamaha cực hot.', '2022-12-14 21:37:40', 32000000, 0, 38);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (221, 'nvx-155vva-pastel-dark-grey-004.png', 'nvx 155vva pastel dark grey 004', 'Yamaha', 2, 3, 'Dòng xe NVX 155VVA PASTEL DARK GREY 004 thuộc hãng xe Yamaha là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 58000000, 0, 32);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (222, 'yamaha-classico2011_brown.png', 'yamaha classico2011_brown', 'Yamaha', 2, 3, 'Dòng xe YAMAHA CLASSICO2011_BROWN thuộc hãng xe Yamaha chất lượng cao và uy tín.', '2022-12-14 21:37:40', 109000000, 0, 37);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (223, 'yamaha-nerax.png', 'yamaha nerax', 'Yamaha', 2, 3, 'Dòng xe YAMAHA NERAX thuộc hãng xe Yamaha cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 90000000, 0, 29);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (224, 'yamaha-grande-2020.png', 'yamaha grande 2020', 'Yamaha', 2, 3, 'Dòng xe YAMAHA GRANDE 2020 thuộc hãng xe Yamaha cực hot.', '2022-12-14 21:37:40', 67000000, 0, 48);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (225, 'yamaha-grande-2017-1.png', 'yamaha grande 2017 1', 'Yamaha', 2, 3, 'Dòng xe YAMAHA GRANDE 2017 1 thuộc hãng xe Yamaha là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 83000000, 0, 23);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (226, 'yamaha-smax-2020.png', 'yamaha smax 2020', 'Yamaha', 2, 3, 'Dòng xe YAMAHA SMAX 2020 thuộc hãng xe Yamaha chất lượng cao và uy tín.', '2022-12-14 21:37:40', 43000000, 0, 28);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (227, 'yamaha-gear-125.png', 'yamaha gear 125', 'Yamaha', 2, 3, 'Dòng xe YAMAHA GEAR 125 thuộc hãng xe Yamaha cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 56000000, 0, 27);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (228, 'yamahamiogt.png', 'yamahamiogt', 'Yamaha', 2, 3, 'Dòng xe YAMAHAMIOGT thuộc hãng xe Yamaha cực hot.', '2022-12-14 21:37:40', 75000000, 0, 26);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (229, 'yamaha-vino.png', 'yamaha vino', 'Yamaha', 2, 3, 'Dòng xe YAMAHA VINO thuộc hãng xe Yamaha là một trong những dòng xe bán chạy nhất.', '2022-12-14 21:37:40', 80000000, 0, 35);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (230, 'yamaha-nouvo.png', 'yamaha nouvo', 'Yamaha', 2, 3, 'Dòng xe YAMAHA NOUVO thuộc hãng xe Yamaha chất lượng cao và uy tín.', '2022-12-14 21:37:40', 30000000, 0, 21);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (231, '2019-yamaha-mio-m3.png', '2019 yamaha mio m3', 'Yamaha', 2, 3, 'Dòng xe 2019 YAMAHA MIO M3 thuộc hãng xe Yamaha cực kì sang trọng và đẹp mắt.', '2022-12-14 21:37:40', 99000000, 0, 46);
