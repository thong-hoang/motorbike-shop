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
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (1, 'winner-x-tieuchuan-2022.jpg', 'honda winner x 2022', 'winner-x-tieuchuan-2022', 1, 3, 'Dòng xe HONDA WINNER X 2022 thuộc hãng xe winner-x-tieuchuan-2022 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 100000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (2, 'winner-x-dacbiet-2022.jpg', 'winner x dac biet 2022', 'winner-x-dacbiet-2022', 1, 3, 'Dòng xe WINNER X DAC BIET 2022 thuộc hãng xe winner-x-dacbiet-2022 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 70000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (3, 'winner-x-camo-2020.jpg', 'winner x camo 2020', 'winner-x-camo-2020', 1, 3, 'Dòng xe WINNER X CAMO 2020 thuộc hãng xe winner-x-camo-2020 cực hot.', '2022-12-16 22:53:05', 57000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (4, 'winner-x-thethao-v3-2022.jpg', 'winner x thethao v3 2022', 'winner-x-thethao-v3-2022', 1, 3, 'Dòng xe WINNER X THETHAO V3 2022 thuộc hãng xe winner-x-thethao-v3-2022 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 35000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (5, 'winner-x-dacbiet-v3-2022.jpg', 'winner x dacbiet v3 2022', 'winner-x-dacbiet-v3-2022', 1, 3, 'Dòng xe WINNER X DACBIET V3 2022 thuộc hãng xe winner-x-dacbiet-v3-2022 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 85000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (6, 'winner-x-tieuchuan-v3-2022.jpg', 'winner x tieuchuan v3 2022', 'winner-x-tieuchuan-v3-2022', 1, 3, 'Dòng xe WINNER X TIEUCHUAN V3 2022 thuộc hãng xe winner-x-tieuchuan-v3-2022 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 55000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (7, 'winner-x-camo-2022.jpg', 'winner x camo 2022', 'winner-x-camo-2022', 1, 3, 'Dòng xe WINNER X CAMO 2022 thuộc hãng xe winner-x-camo-2022 cực hot.', '2022-12-16 22:53:05', 122000000, 0, 6);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (8, 'winner-x-thethao-2022.jpg', 'winner x thethao 2022', 'winner-x-thethao-2022', 1, 3, 'Dòng xe WINNER X THETHAO 2022 thuộc hãng xe winner-x-thethao-2022 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 32000000, 0, 13);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (9, 'winner-150.png', 'winner 150', 'winner-150', 1, 3, 'Dòng xe WINNER 150 thuộc hãng xe winner-150 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 62000000, 0, 6);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (10, 'msx-2020.jpg', 'msx 2020', 'msx-2020', 1, 3, 'Dòng xe MSX 2020 thuộc hãng xe msx-2020 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 34000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (11, 'msx-2021.png', 'msx 2021', 'msx-2021', 1, 3, 'Dòng xe MSX 2021 thuộc hãng xe msx-2021 cực hot.', '2022-12-16 22:53:05', 38000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (12, 'sonic-2021.jpg', 'sonic 2021', 'sonic-2021', 1, 3, 'Dòng xe SONIC 2021 thuộc hãng xe sonic-2021 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 88000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (13, 'sonic-2022.jpg', 'sonic 2022', 'sonic-2022', 1, 3, 'Dòng xe SONIC 2022 thuộc hãng xe sonic-2022 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 88000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (14, 'cb150r-streetster.png', 'cb150r streetster', 'cb150r-streetster', 1, 3, 'Dòng xe CB150R STREETSTER thuộc hãng xe cb150r-streetster cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 77000000, 0, 13);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (15, 'cb150-verza.jpg', 'cb150 verza', 'cb150-verza', 1, 3, 'Dòng xe CB150 VERZA thuộc hãng xe cb150-verza cực hot.', '2022-12-16 22:53:05', 170000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (16, 'cb150r-exmotion.png', 'cb150r exmotion', 'cb150r-exmotion', 1, 3, 'Dòng xe CB150R EXMOTION thuộc hãng xe cb150r-exmotion là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 120000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (17, 'cb150r-streetfire.jpg', 'cb150r streetfire', 'cb150r-streetfire', 1, 3, 'Dòng xe CB150R STREETFIRE thuộc hãng xe cb150r-streetfire chất lượng cao và uy tín.', '2022-12-16 22:53:05', 99000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (18, 'cb150r-2021.jpg', 'cb150r 2021', 'cb150r-2021', 1, 3, 'Dòng xe CB150R 2021 thuộc hãng xe cb150r-2021 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 90000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (19, 'cb150x-2022.jpg', 'cb150x 2022', 'cb150x-2022', 1, 3, 'Dòng xe CB150X 2022 thuộc hãng xe cb150x-2022 cực hot.', '2022-12-16 22:53:05', 89000000, 0, 6);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (20, 'cbr150r-tieuchuan.png', 'cbr150r tieuchuan', 'cbr150r-tieuchuan', 1, 3, 'Dòng xe CBR150R TIEUCHUAN thuộc hãng xe cbr150r-tieuchuan là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 69000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (21, 'cbr150r-thethao.png', 'cbr150r thethao', 'cbr150r-thethao', 1, 3, 'Dòng xe CBR150R THETHAO thuộc hãng xe cbr150r-thethao chất lượng cao và uy tín.', '2022-12-16 22:53:05', 49000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (22, 'cbr150r-dacbiet.jpg', 'cbr150r dacbiet', 'cbr150r-dacbiet', 1, 3, 'Dòng xe CBR150R DACBIET thuộc hãng xe cbr150r-dacbiet cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 79000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (23, 'cbf125r-2021.jpg', 'cbf125r 2021', 'cbf125r-2021', 1, 3, 'Dòng xe CBF125R 2021 thuộc hãng xe cbf125r-2021 cực hot.', '2022-12-16 22:53:05', 76000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (24, 'cb-hornet-160r.png', 'cb hornet 160r', 'cb-hornet-160r', 1, 3, 'Dòng xe CB HORNET 160R thuộc hãng xe cb-hornet-160r là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 66000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (25, 'monkey-2021.png', 'monkey 2021', 'monkey-2021', 1, 3, 'Dòng xe MONKEY 2021 thuộc hãng xe monkey-2021 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 62000000, 0, 13);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (26, 'rebel-1100.png', 'rebel 1100', 'rebel-1100', 1, 5, 'Dòng xe REBEL 1100 thuộc hãng xe rebel-1100 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 602000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (27, 'rebel-1100-dct.png', 'rebel 1100 dct', 'rebel-1100-dct', 1, 5, 'Dòng xe REBEL 1100 DCT thuộc hãng xe rebel-1100-dct cực hot.', '2022-12-16 22:53:05', 455000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (28, 'cbr1000rr-fireblade.png', 'cbr1000rr fireblade', 'cbr1000rr-fireblade', 1, 5, 'Dòng xe CBR1000RR FIREBLADE thuộc hãng xe cbr1000rr-fireblade là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 355000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (29, 'cbr1000rr-fireblade-sp-2018.png', 'cbr1000rr fireblade sp 2018', 'cbr1000rr-fireblade-sp-2018', 1, 5, 'Dòng xe CBR1000RR FIREBLADE SP 2018 thuộc hãng xe cbr1000rr-fireblade-sp-2018 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 278000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (30, 'cbr1000rr-r-fireblade-2022.png', 'cbr1000rr r fireblade 2022', 'cbr1000rr-r-fireblade-2022', 1, 5, 'Dòng xe CBR1000RR R FIREBLADE 2022 thuộc hãng xe cbr1000rr-r-fireblade-2022 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 499000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (31, 'cbr1000rr-r-fireblade-sp-2022.png', 'cbr1000rr r fireblade sp 2022', 'cbr1000rr-r-fireblade-sp-2022', 1, 5, 'Dòng xe CBR1000RR R FIREBLADE SP 2022 thuộc hãng xe cbr1000rr-r-fireblade-sp-2022 cực hot.', '2022-12-16 22:53:05', 246000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (32, 'x-adv-750.png', 'x adv 750', 'x-adv-750', 1, 5, 'Dòng xe X ADV 750 thuộc hãng xe x-adv-750 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 500000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (33, 'rebel-250.jpg', 'rebel 250', 'rebel-250', 1, 5, 'Dòng xe REBEL 250 thuộc hãng xe rebel-250 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 345000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (34, 'rebel-300.jpg', 'rebel 300', 'rebel-300', 1, 5, 'Dòng xe REBEL 300 thuộc hãng xe rebel-300 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 278000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (35, 'rebel-500.png', 'rebel 500', 'rebel-500', 1, 5, 'Dòng xe REBEL 500 thuộc hãng xe rebel-500 cực hot.', '2022-12-16 22:53:05', 338000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (36, 'cbr250.jpg', 'cbr250', 'cbr250', 1, 5, 'Dòng xe CBR250 thuộc hãng xe cbr250 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 200000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (37, 'cbr500r.jpg', 'cbr500r', 'cbr500r', 1, 5, 'Dòng xe CBR500R thuộc hãng xe cbr500r chất lượng cao và uy tín.', '2022-12-16 22:53:05', 379000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (38, 'cbr650r-2021.png', 'cbr650r 2021', 'cbr650r-2021', 1, 5, 'Dòng xe CBR650R 2021 thuộc hãng xe cbr650r-2021 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 369000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (39, 'cbr650r-2022.jpg', 'cbr650r 2022', 'cbr650r-2022', 1, 5, 'Dòng xe CBR650R 2022 thuộc hãng xe cbr650r-2022 cực hot.', '2022-12-16 22:53:05', 600000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (40, 'cbr650f.jpg', 'cbr650f', 'cbr650f', 1, 5, 'Dòng xe CBR650F thuộc hãng xe cbr650f là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 456000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (41, 'cb650r-2021.png', 'cb650r 2021', 'cb650r-2021', 1, 5, 'Dòng xe CB650R 2021 thuộc hãng xe cb650r-2021 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 542000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (42, 'cb650r-2022.png', 'cb650r 2022', 'cb650r-2022', 1, 5, 'Dòng xe CB650R 2022 thuộc hãng xe cb650r-2022 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 355000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (43, 'cb500f.jpg', 'cb500f', 'cb500f', 1, 5, 'Dòng xe CB500F thuộc hãng xe cb500f cực hot.', '2022-12-16 22:53:05', 322000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (44, 'cb650f.jpg', 'cb650f', 'cb650f', 1, 5, 'Dòng xe CB650F thuộc hãng xe cb650f là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 440000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (45, 'cb300r.png', 'cb300r', 'cb300r', 1, 5, 'Dòng xe CB300R thuộc hãng xe cb300r chất lượng cao và uy tín.', '2022-12-16 22:53:05', 320000000, 0, 13);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (46, 'cb1000r.png', 'cb1000r', 'cb1000r', 1, 5, 'Dòng xe CB1000R thuộc hãng xe cb1000r cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 390000000, 0, 9);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (47, 'cb1000r-limited.jpg', 'cb1000r limited', 'cb1000r-limited', 1, 5, 'Dòng xe CB1000R LIMITED thuộc hãng xe cb1000r-limited cực hot.', '2022-12-16 22:53:05', 299000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (48, 'cb1100.jpg', 'cb1000', 'cb1100', 1, 5, 'Dòng xe CB1000 thuộc hãng xe cb1100 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 482000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (49, 'cb500x.jpg', 'cb500x', 'cb500x', 1, 5, 'Dòng xe CB500X thuộc hãng xe cb500x chất lượng cao và uy tín.', '2022-12-16 22:53:05', 599000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (50, 'cbs350rs.jpg', 'cbs350rs', 'cbs350rs', 1, 5, 'Dòng xe CBS350RS thuộc hãng xe cbs350rs cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 355000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (51, 'intruder-150-2022.png', 'intruder 150 2022', 'intruder-150-2022', 5, 3, 'Dòng xe INTRUDER 150 2022 thuộc hãng xe intruder-150-2022 cực hot.', '2022-12-16 22:53:05', 450000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (52, 'suzuki-satria-2022.png', 'suzuki satria 2022', 'suzuki-satria-2022', 5, 3, 'Dòng xe SUZUKI SATRIA 2022 thuộc hãng xe suzuki-satria-2022 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 75000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (53, 'raider-2022.png', 'raider 2022', 'raider-2022', 5, 3, 'Dòng xe RAIDER 2022 thuộc hãng xe raider-2022 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 46000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (54, 'gsx150-bandit.png', 'gsx150 bandit', 'gsx150-bandit', 5, 3, 'Dòng xe GSX150 BANDIT thuộc hãng xe gsx150-bandit cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 51000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (55, 'gd110.png', 'gd110', 'gd110', 5, 3, 'Dòng xe GD110 thuộc hãng xe gd110 cực hot.', '2022-12-16 22:53:05', 62000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (56, 'gsx-s150.jpg', 'gsx s150', 'gsx-s150', 5, 3, 'Dòng xe GSX S150 thuộc hãng xe gsx-s150 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 44000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (57, 'gsx-r150.png', 'gsx r150', 'gsx-r150', 5, 3, 'Dòng xe GSX R150 thuộc hãng xe gsx-r150 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 78000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (58, 'raider-150-fi.jpg', 'raider 150 fi', 'raider-150-fi', 5, 3, 'Dòng xe RAIDER 150 FI thuộc hãng xe raider-150-fi cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 63000000, 0, 6);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (59, 'raider-150-2016.jpg', 'raider 150 2016', 'raider-150-2016', 5, 3, 'Dòng xe RAIDER 150 2016 thuộc hãng xe raider-150-2016 cực hot.', '2022-12-16 22:53:05', 58000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (60, 'raider-150-2015.jpg', 'raider 150 2015', 'raider-150-2015', 5, 3, 'Dòng xe RAIDER 150 2015 thuộc hãng xe raider-150-2015 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 71000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (61, 'raider-150.jpg', 'raider 150', 'raider-150', 5, 3, 'Dòng xe RAIDER 150 thuộc hãng xe raider-150 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 49000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (62, 'en-150a.jpg', 'en 150a', 'en-150a', 5, 3, 'Dòng xe EN 150A thuộc hãng xe en-150a cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 56000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (63, 'gz150-a-2020.png', 'gz150 a 2020', 'gz150-a-2020', 5, 3, 'Dòng xe GZ150 A 2020 thuộc hãng xe gz150-a-2020 cực hot.', '2022-12-16 22:53:05', 58000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (64, 'axelo-125-2017.jpg', 'axelo 125 2017', 'axelo-125-2017', 5, 3, 'Dòng xe AXELO 125 2017 thuộc hãng xe axelo-125-2017 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 64000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (65, 'africa-twin.jpg', 'africa twin', 'africa-twin', 1, 5, 'Dòng xe AFRICA TWIN thuộc hãng xe africa-twin chất lượng cao và uy tín.', '2022-12-16 22:53:05', 360000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (66, 'africa-twin-adventure-sport.jpg', 'africa twin adventure sport', 'africa-twin-adventure-sport', 1, 5, 'Dòng xe AFRICA TWIN ADVENTURE SPORT thuộc hãng xe africa-twin-adventure-sport cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 250000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (67, 'gold-wing-2022.png', 'gold wing 2022', 'gold-wing-2022', 1, 5, 'Dòng xe GOLD WING 2022 thuộc hãng xe gold-wing-2022 cực hot.', '2022-12-16 22:53:05', 260000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (68, 'fury-1300.jpg', 'fury 1300', 'fury-1300', 1, 5, 'Dòng xe FURY 1300 thuộc hãng xe fury-1300 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 330000000, 0, 9);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (69, 'shadow-phantom-750.jpg', 'shadow phantom 750', 'shadow-phantom-750', 1, 5, 'Dòng xe SHADOW PHANTOM 750 thuộc hãng xe shadow-phantom-750 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 420000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (70, 'blade-2021.png', 'blade 2021', 'blade-2021', 1, 2, 'Dòng xe BLADE 2021 thuộc hãng xe blade-2021 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 21000000, 0, 9);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (71, 'blade-2022.png', 'blade 2022', 'blade-2022', 1, 2, 'Dòng xe BLADE 2022 thuộc hãng xe blade-2022 cực hot.', '2022-12-16 22:53:05', 26000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (72, 'wave-alpha-2015.jpg', 'wave alpha 2015', 'wave-alpha-2015', 1, 2, 'Dòng xe WAVE ALPHA 2015 thuộc hãng xe wave-alpha-2015 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 18000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (73, 'wave-alpha-2022.png', 'wave alpha 2022', 'wave-alpha-2022', 1, 2, 'Dòng xe WAVE ALPHA 2022 thuộc hãng xe wave-alpha-2022 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 27000000, 0, 13);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (74, 'wave-110s.jpg', 'wave 110s', 'wave-110s', 1, 2, 'Dòng xe WAVE 110S thuộc hãng xe wave-110s cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 22000000, 0, 9);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (75, 'wave-110rs.jpg', 'wave 110rs', 'wave-110rs', 1, 2, 'Dòng xe WAVE 110RS thuộc hãng xe wave-110rs cực hot.', '2022-12-16 22:53:05', 20000000, 0, 9);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (76, 'wave-alpha-zx.jpg', 'wave alpha zx', 'wave-alpha-zx', 1, 2, 'Dòng xe WAVE ALPHA ZX thuộc hãng xe wave-alpha-zx là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 25000000, 0, 13);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (77, 'wave-rsx-2014.png', 'wave rsx 2014', 'wave-rsx-2014', 1, 2, 'Dòng xe WAVE RSX 2014 thuộc hãng xe wave-rsx-2014 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 29000000, 0, 9);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (78, 'wave-rsx-fi-at.jpg', 'wave rsx fi at', 'wave-rsx-fi-at', 1, 2, 'Dòng xe WAVE RSX FI AT thuộc hãng xe wave-rsx-fi-at cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 24000000, 0, 9);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (79, 'wave-rsx-2020.jpg', 'wave rsx 2020', 'wave-rsx-2020', 1, 2, 'Dòng xe WAVE RSX 2020 thuộc hãng xe wave-rsx-2020 cực hot.', '2022-12-16 22:53:05', 20000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (80, 'wave-rsx-fi-2022.png', 'wave rsx fi 2022', 'wave-rsx-fi-2022', 1, 2, 'Dòng xe WAVE RSX FI 2022 thuộc hãng xe wave-rsx-fi-2022 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 22000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (81, 'super-dream-2013.png', 'super dream 2013', 'super-dream-2013', 1, 2, 'Dòng xe SUPER DREAM 2013 thuộc hãng xe super-dream-2013 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 20000000, 0, 6);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (82, 'super-dream-2014.jpg', 'super dream 2014', 'super-dream-2014', 1, 2, 'Dòng xe SUPER DREAM 2014 thuộc hãng xe super-dream-2014 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 22000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (83, 'super-dream-2015.png', 'super dream 2015', 'super-dream-2015', 1, 2, 'Dòng xe SUPER DREAM 2015 thuộc hãng xe super-dream-2015 cực hot.', '2022-12-16 22:53:05', 21000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (84, 'future-fi-2013.jpg', 'future fi 2013', 'future-fi-2013', 1, 2, 'Dòng xe FUTURE FI 2013 thuộc hãng xe future-fi-2013 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 28000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (85, 'future-fi-2014.jpg', 'future fi 2014', 'future-fi-2014', 1, 2, 'Dòng xe FUTURE FI 2014 thuộc hãng xe future-fi-2014 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 17000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (86, 'future-fi-2022.png', 'future fi 2022', 'future-fi-2022', 1, 2, 'Dòng xe FUTURE FI 2022 thuộc hãng xe future-fi-2022 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 24000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (87, 'future-x.jpg', 'future x', 'future-x', 1, 2, 'Dòng xe FUTURE X thuộc hãng xe future-x cực hot.', '2022-12-16 22:53:05', 27000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (88, 'super-cub-c125.png', 'super cub c125', 'super-cub-c125', 1, 2, 'Dòng xe SUPER CUB C125 thuộc hãng xe super-cub-c125 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 23000000, 0, 13);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (89, 'trail-cup.jpg', 'trail cup', 'trail-cup', 1, 2, 'Dòng xe TRAIL CUP thuộc hãng xe trail-cup chất lượng cao và uy tín.', '2022-12-16 22:53:05', 19000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (90, 'airblade-160-dacbiet-2022.png', 'airblade 160 dacbiet 2022', 'airblade-160-dacbiet-2022', 1, 4, 'Dòng xe AIRBLADE 160 DACBIET 2022 thuộc hãng xe airblade-160-dacbiet-2022 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 67000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (91, 'airblade-125-dacbiet-2022.jpg', 'airblade 125 dacbiet 2022', 'airblade-125-dacbiet-2022', 1, 4, 'Dòng xe AIRBLADE 125 DACBIET 2022 thuộc hãng xe airblade-125-dacbiet-2022 cực hot.', '2022-12-16 22:53:05', 77000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (92, 'airblade-125-tieuchuan-2021.jpg', 'airblade 125 tieuchuan 2021', 'airblade-125-tieuchuan-2021', 1, 4, 'Dòng xe AIRBLADE 125 TIEUCHUAN 2021 thuộc hãng xe airblade-125-tieuchuan-2021 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 30000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (93, 'airblade-160-tieuchuan-2023.jpg', 'airblade 160 tieuchuan 2023', 'airblade-160-tieuchuan-2023', 1, 4, 'Dòng xe AIRBLADE 160 TIEUCHUAN 2023 thuộc hãng xe airblade-160-tieuchuan-2023 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 115000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (94, 'airblade-125-dacbiet-2023.jpg', 'airblade 125 dacbiet 2023', 'airblade-125-dacbiet-2023', 1, 4, 'Dòng xe AIRBLADE 125 DACBIET 2023 thuộc hãng xe airblade-125-dacbiet-2023 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 97000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (95, 'airblade-150-2020.jpg', 'airblade 150 2020', 'airblade-150-2020', 1, 4, 'Dòng xe AIRBLADE 150 2020 thuộc hãng xe airblade-150-2020 cực hot.', '2022-12-16 22:53:05', 89000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (96, 'sh-mode-cbs-2022.jpg', 'sh mode cbs 2022', 'sh-mode-cbs-2022', 1, 4, 'Dòng xe SH MODE CBS 2022 thuộc hãng xe sh-mode-cbs-2022 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 58000000, 0, 6);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (97, 'sh-150i-abs-2022.png', 'sh 150i abs 2022', 'sh-150i-abs-2022', 1, 4, 'Dòng xe SH 150I ABS 2022 thuộc hãng xe sh-150i-abs-2022 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 95000000, 0, 6);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (98, 'sh-350i-2021.jpg', 'sh 350i 2021', 'sh-350i-2021', 1, 4, 'Dòng xe SH 350I 2021 thuộc hãng xe sh-350i-2021 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 38000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (99, 'sh-125i-cbs-2021.png', 'sh 125i cbs 2021', 'sh-125i-cbs-2021', 1, 4, 'Dòng xe SH 125I CBS 2021 thuộc hãng xe sh-125i-cbs-2021 cực hot.', '2022-12-16 22:53:05', 48000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (100, 'sh-150i-abs-2021.jpg', 'sh 150i abs 2021', 'sh-150i-abs-2021', 1, 4, 'Dòng xe SH 150I ABS 2021 thuộc hãng xe sh-150i-abs-2021 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 106000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (101, 'sh-mode-abs-2022.jpg', 'sh mode abs 2022', 'sh-mode-abs-2022', 1, 4, 'Dòng xe SH MODE ABS 2022 thuộc hãng xe sh-mode-abs-2022 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 114000000, 0, 6);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (102, 'sh-150i-abs-2020.jpg', 'sh 150i abs 2020', 'sh-150i-abs-2020', 1, 4, 'Dòng xe SH 150I ABS 2020 thuộc hãng xe sh-150i-abs-2020 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 115000000, 0, 13);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (103, 'sh-125i-cbs-2020.jpg', 'sh 125i cbs 2020', 'sh-125i-cbs-2020', 1, 4, 'Dòng xe SH 125I CBS 2020 thuộc hãng xe sh-125i-cbs-2020 cực hot.', '2022-12-16 22:53:05', 62000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (104, 'sh-mode-125i-2023.jpg', 'sh mode 125i 2023', 'sh-mode-125i-2023', 1, 4, 'Dòng xe SH MODE 125I 2023 thuộc hãng xe sh-mode-125i-2023 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 42000000, 0, 9);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (105, 'sh-mode-125i-2019.jpg', 'sh mode 125i 2019', 'sh-mode-125i-2019', 1, 4, 'Dòng xe SH MODE 125I 2019 thuộc hãng xe sh-mode-125i-2019 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 98000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (106, 'sh-125i-cbs-2022.jpg', 'sh 125i cbs 2022', 'sh-125i-cbs-2022', 1, 4, 'Dòng xe SH 125I CBS 2022 thuộc hãng xe sh-125i-cbs-2022 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 112000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (107, 'vision-catinh-2021.png', 'vision catinh 2021', 'vision-catinh-2021', 1, 4, 'Dòng xe VISION CATINH 2021 thuộc hãng xe vision-catinh-2021 cực hot.', '2022-12-16 22:53:05', 65000000, 0, 13);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (108, 'vision-dacbiet-2021.png', 'vision dacbiet 2021', 'vision-dacbiet-2021', 1, 4, 'Dòng xe VISION DACBIET 2021 thuộc hãng xe vision-dacbiet-2021 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 87000000, 0, 13);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (109, 'vision-tieuchuan-2021.jpg', 'vision tieuchuan 2021', 'vision-tieuchuan-2021', 1, 4, 'Dòng xe VISION TIEUCHUAN 2021 thuộc hãng xe vision-tieuchuan-2021 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 34000000, 0, 13);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (110, 'vision-caocap-2021.jpg', 'vision caocap 2021', 'vision-caocap-2021', 1, 4, 'Dòng xe VISION CAOCAP 2021 thuộc hãng xe vision-caocap-2021 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 70000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (111, 'vision-dacbiet-2019.jpg', 'vision dacbiet 2019', 'vision-dacbiet-2019', 1, 4, 'Dòng xe VISION DACBIET 2019 thuộc hãng xe vision-dacbiet-2019 cực hot.', '2022-12-16 22:53:05', 108000000, 0, 6);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (112, 'vision-tieuchuan-2019.jpg', 'vision tieuchuan 2019', 'vision-tieuchuan-2019', 1, 4, 'Dòng xe VISION TIEUCHUAN 2019 thuộc hãng xe vision-tieuchuan-2019 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 109000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (113, 'vision-caocap-2022.jpg', 'vision caocap 2022', 'vision-caocap-2022', 1, 4, 'Dòng xe VISION CAOCAP 2022 thuộc hãng xe vision-caocap-2022 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 53000000, 0, 13);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (114, 'vision-dacbiet-2020.jpg', 'vision dacbiet 2020', 'vision-dacbiet-2020', 1, 4, 'Dòng xe VISION DACBIET 2020 thuộc hãng xe vision-dacbiet-2020 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 98000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (115, 'vision-tieuchuan-2022.jpg', 'vision tieuchuan 2022', 'vision-tieuchuan-2022', 1, 4, 'Dòng xe VISION TIEUCHUAN 2022 thuộc hãng xe vision-tieuchuan-2022 cực hot.', '2022-12-16 22:53:05', 113000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (116, 'lead-caocap-2022.jpg', 'lead caocap 2022', 'lead-caocap-2022', 1, 4, 'Dòng xe LEAD CAOCAP 2022 thuộc hãng xe lead-caocap-2022 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 51000000, 0, 13);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (117, 'lead-tieuchuan-2022.jpg', 'lead tieuchuan 2022', 'lead-tieuchuan-2022', 1, 4, 'Dòng xe LEAD TIEUCHUAN 2022 thuộc hãng xe lead-tieuchuan-2022 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 114000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (118, 'lead-dacbiet-2022.jpg', 'lead dacbiet 2022', 'lead-dacbiet-2022', 1, 4, 'Dòng xe LEAD DACBIET 2022 thuộc hãng xe lead-dacbiet-2022 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 38000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (119, 'adv-150.png', 'adv 150', 'adv-150', 1, 4, 'Dòng xe ADV 150 thuộc hãng xe adv-150 cực hot.', '2022-12-16 22:53:05', 61000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (120, 'adv-160.png', 'adv 160', 'adv-160', 1, 4, 'Dòng xe ADV 160 thuộc hãng xe adv-160 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 82000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (121, 'adv-350.jpeg', 'adv 350.', 'adv-350.', 1, 4, 'Dòng xe ADV 350. thuộc hãng xe adv-350. chất lượng cao và uy tín.', '2022-12-16 22:53:05', 73000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (122, 'dio.png', 'dio', 'dio', 1, 4, 'Dòng xe DIO thuộc hãng xe dio cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 93000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (123, 'forza-300.jpg', 'forza 300', 'forza-300', 1, 4, 'Dòng xe FORZA 300 thuộc hãng xe forza-300 cực hot.', '2022-12-16 22:53:05', 87000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (124, 'forza-350.png', 'forza 350', 'forza-350', 1, 4, 'Dòng xe FORZA 350 thuộc hãng xe forza-350 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 40000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (125, 'genivo.png', 'genivo', 'genivo', 1, 4, 'Dòng xe GENIVO thuộc hãng xe genivo chất lượng cao và uy tín.', '2022-12-16 22:53:05', 46000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (126, 'pcx.jpg', 'pcx', 'pcx', 1, 4, 'Dòng xe PCX thuộc hãng xe pcx cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 34000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (127, 'today-50cc.jpg', 'today 50cc', 'today-50cc', 1, 4, 'Dòng xe TODAY 50CC thuộc hãng xe today-50cc cực hot.', '2022-12-16 22:53:05', 104000000, 0, 6);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (128, 'vario-150.jpg', 'vario 150', 'vario-150', 1, 4, 'Dòng xe VARIO 150 thuộc hãng xe vario-150 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 57000000, 0, 13);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (129, 'x-adv.png', 'x adv', 'x-adv', 1, 4, 'Dòng xe X ADV thuộc hãng xe x-adv chất lượng cao và uy tín.', '2022-12-16 22:53:05', 87000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (130, 'zoomer-x.png', 'zoomer x', 'zoomer-x', 1, 4, 'Dòng xe ZOOMER X thuộc hãng xe zoomer-x cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 89000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (131, 'dunk.jpg', 'dunk', 'dunk', 1, 4, 'Dòng xe DUNK thuộc hãng xe dunk cực hot.', '2022-12-16 22:53:05', 40000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (132, 'scoopy.jpg', 'scoopy', 'scoopy', 1, 4, 'Dòng xe SCOOPY thuộc hãng xe scoopy là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 97000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (133, 'moove.png', 'moove', 'moove', 1, 4, 'Dòng xe MOOVE thuộc hãng xe moove chất lượng cao và uy tín.', '2022-12-16 22:53:05', 85000000, 0, 6);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (134, 'giorno.jpg', 'giorno', 'giorno', 1, 4, 'Dòng xe GIORNO thuộc hãng xe giorno cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 77000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (135, 'click-160.png', 'click 160', 'click-160', 1, 4, 'Dòng xe CLICK 160 thuộc hãng xe click-160 cực hot.', '2022-12-16 22:53:05', 117000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (136, 'pcx-hybrid.jpg', 'pcx hybrid', 'pcx-hybrid', 1, 4, 'Dòng xe PCX HYBRID thuộc hãng xe pcx-hybrid là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 73000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (137, 'vario-125.jpg', 'vario 125', 'vario-125', 1, 4, 'Dòng xe VARIO 125 thuộc hãng xe vario-125 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 81000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (138, 'beat.jpg', 'beat', 'beat', 1, 4, 'Dòng xe BEAT thuộc hãng xe beat cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 60000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (139, 'gixxer-sf250.jpg', 'gixxer sf250', 'gixxer-sf250', 5, 5, 'Dòng xe GIXXER SF250 thuộc hãng xe gixxer-sf250 cực hot.', '2022-12-16 22:53:05', 73000000, 0, 13);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (140, 'hayabusa-1300.jpg', 'hayabusa 1300', 'hayabusa-1300', 5, 5, 'Dòng xe HAYABUSA 1300 thuộc hãng xe hayabusa-1300 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 66000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (141, 'gixxer-250.jpg', 'gixxer 250', 'gixxer-250', 5, 5, 'Dòng xe GIXXER 250 thuộc hãng xe gixxer-250 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 69000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (142, 'hayabusa-2022.jpg', 'hayabusa 2022', 'hayabusa-2022', 5, 5, 'Dòng xe HAYABUSA 2022 thuộc hãng xe hayabusa-2022 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 50000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (143, 'v-strom-1050.jpg', 'v strom 1050', 'v-strom-1050', 5, 5, 'Dòng xe V STROM 1050 thuộc hãng xe v-strom-1050 cực hot.', '2022-12-16 22:53:05', 37000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (144, 'gsx-s1000-2022.jpg', 'gsx s1000 2022', 'gsx-s1000-2022', 5, 5, 'Dòng xe GSX S1000 2022 thuộc hãng xe gsx-s1000-2022 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 58000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (145, 'gladius-650.jpg', 'gladius 650', 'gladius-650', 5, 5, 'Dòng xe GLADIUS 650 thuộc hãng xe gladius-650 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 97000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (146, 'viva-115-fi-2015.jpg', 'viva 115 fi 2015', 'viva-115-fi-2015', 5, 2, 'Dòng xe VIVA 115 FI 2015 thuộc hãng xe viva-115-fi-2015 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 75000000, 0, 9);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (147, 'revo-110-vanh-duc.jpg', 'revo 110 vanh duc', 'revo-110-vanh-duc', 5, 2, 'Dòng xe REVO 110 VANH DUC thuộc hãng xe revo-110-vanh-duc cực hot.', '2022-12-16 22:53:05', 62000000, 0, 9);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (148, 'revo-110-phanh-dia.jpg', 'revo 110 phanh dia', 'revo-110-phanh-dia', 5, 2, 'Dòng xe REVO 110 PHANH DIA thuộc hãng xe revo-110-phanh-dia là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 73000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (149, 'revo-110-phanh-co.png', 'revo 110 phanh co', 'revo-110-phanh-co', 5, 2, 'Dòng xe REVO 110 PHANH CO thuộc hãng xe revo-110-phanh-co chất lượng cao và uy tín.', '2022-12-16 22:53:05', 67000000, 0, 13);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (150, 'x-bike-125.jpg', 'x bike 125', 'x-bike-125', 5, 2, 'Dòng xe X BIKE 125 thuộc hãng xe x-bike-125 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 82000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (151, 'axelo-125.jpg', 'axelo 125', 'axelo-125', 5, 2, 'Dòng xe AXELO 125 thuộc hãng xe axelo-125 cực hot.', '2022-12-16 22:53:05', 113000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (152, 'viva-115-fi.jpg', 'viva 115 fi', 'viva-115-fi', 5, 2, 'Dòng xe VIVA 115 FI thuộc hãng xe viva-115-fi là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 76000000, 0, 13);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (153, 'impulse.png', 'impulse', 'impulse', 5, 4, 'Dòng xe IMPULSE thuộc hãng xe impulse chất lượng cao và uy tín.', '2022-12-16 22:53:05', 117000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (154, 'burgman-street-125.png', 'burgman street 125', 'burgman-street-125', 5, 4, 'Dòng xe BURGMAN STREET 125 thuộc hãng xe burgman-street-125 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 111000000, 0, 13);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (155, 'address-110.jpg', 'address 110', 'address-110', 5, 4, 'Dòng xe ADDRESS 110 thuộc hãng xe address-110 cực hot.', '2022-12-16 22:53:05', 81000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (156, 'impulse-125-fi.jpg', 'impulse 125 fi', 'impulse-125-fi', 5, 4, 'Dòng xe IMPULSE 125 FI thuộc hãng xe impulse-125-fi là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 67000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (157, 'skydrive-125.jpg', 'skydrive 125', 'skydrive-125', 5, 4, 'Dòng xe SKYDRIVE 125 thuộc hãng xe skydrive-125 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 106000000, 0, 13);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (158, 'ua125-t.jpg', 'ua125 t', 'ua125-t', 5, 4, 'Dòng xe UA125 T thuộc hãng xe ua125-t cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 57000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (159, 'hayate-125.jpg', 'hayate 125', 'hayate-125', 5, 4, 'Dòng xe HAYATE 125 thuộc hãng xe hayate-125 cực hot.', '2022-12-16 22:53:05', 77000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (160, 'hayate-125-ss-fi-special.jpg', 'hayate 125 ss fi special', 'hayate-125-ss-fi-special', 5, 4, 'Dòng xe HAYATE 125 SS FI SPECIAL thuộc hãng xe hayate-125-ss-fi-special là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 33000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (161, 'hayate-125-ss-fi.jpg', 'hayate 125 ss fi', 'hayate-125-ss-fi', 5, 4, 'Dòng xe HAYATE 125 SS FI thuộc hãng xe hayate-125-ss-fi chất lượng cao và uy tín.', '2022-12-16 22:53:05', 30000000, 0, 6);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (162, 'hayate-125-ss.jpg', 'hayate 125 ss', 'hayate-125-ss', 5, 4, 'Dòng xe HAYATE 125 SS thuộc hãng xe hayate-125-ss cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 83000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (163, 'born-to-ride-004.png', 'born to ride 004', 'born-to-ride-004', 2, 3, 'Dòng xe BORN TO RIDE 004 thuộc hãng xe born-to-ride-004 cực hot.', '2022-12-16 22:53:05', 90000000, 0, 6);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (164, '60th-white-004.png', '60th white 004', '60th-white-004', 2, 3, 'Dòng xe 60TH WHITE 004 thuộc hãng xe 60th-white-004 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 36000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (165, 'monster-04-copy.png', 'monster 04 copy', 'monster-04-copy', 2, 3, 'Dòng xe MONSTER 04 COPY thuộc hãng xe monster-04-copy chất lượng cao và uy tín.', '2022-12-16 22:53:05', 54000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (166, 'exciter-155-gp-deep-purple-004.png', 'exciter 155 gp deep purple 004', 'exciter-155-gp-deep-purple-004', 2, 3, 'Dòng xe EXCITER 155 GP DEEP PURPLE 004 thuộc hãng xe exciter-155-gp-deep-purple-004 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 67000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (167, 'exciter-155-gp-004.png', 'exciter 155 gp 004', 'exciter-155-gp-004', 2, 3, 'Dòng xe EXCITER 155 GP 004 thuộc hãng xe exciter-155-gp-004 cực hot.', '2022-12-16 22:53:05', 73000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (168, 'ex155-petronas-004.png', 'ex155 petronas 004', 'ex155-petronas-004', 2, 3, 'Dòng xe EX155 PETRONAS 004 thuộc hãng xe ex155-petronas-004 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 119000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (169, 'ex155-yellow-grey-004.png', 'ex155 yellow grey 004', 'ex155-yellow-grey-004', 2, 3, 'Dòng xe EX155 YELLOW GREY 004 thuộc hãng xe ex155-yellow-grey-004 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 108000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (170, 'exciter-155-rc-dlx-reddish-yellow-004.png', 'exciter 155 rc dlx reddish yellow 004', 'exciter-155-rc-dlx-reddish-yellow-004', 2, 3, 'Dòng xe EXCITER 155 RC DLX REDDISH YELLOW 004 thuộc hãng xe exciter-155-rc-dlx-reddish-yellow-004 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 32000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (171, 'exciter-155-mat-black-smartkey-004.png', 'exciter 155 mat black smartkey 004', 'exciter-155-mat-black-smartkey-004', 2, 3, 'Dòng xe EXCITER 155 MAT BLACK SMARTKEY 004 thuộc hãng xe exciter-155-mat-black-smartkey-004 cực hot.', '2022-12-16 22:53:05', 68000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (172, 'xe-con-tay-co-dien-yamaha-sr400.png', 'xe con tay co dien yamaha sr400', 'xe-con-tay-co-dien-yamaha-sr400', 2, 3, 'Dòng xe XE CON TAY CO DIEN YAMAHA SR400 thuộc hãng xe xe-con-tay-co-dien-yamaha-sr400 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 113000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (173, 'exciter-155-mat-red-004-1.png', 'exciter 155 mat red 004 1', 'exciter-155-mat-red-004-1', 2, 3, 'Dòng xe EXCITER 155 MAT RED 004 1 thuộc hãng xe exciter-155-mat-red-004-1 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 109000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (174, 'exciter-150-pearl-white-004.png', 'exciter 150 pearl white 004', 'exciter-150-pearl-white-004', 2, 3, 'Dòng xe EXCITER 150 PEARL WHITE 004 thuộc hãng xe exciter-150-pearl-white-004 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 57000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (175, 'exciter-blue-orange-004-1.png', 'exciter blue orange 004 1', 'exciter-blue-orange-004-1', 2, 3, 'Dòng xe EXCITER BLUE ORANGE 004 1 thuộc hãng xe exciter-blue-orange-004-1 cực hot.', '2022-12-16 22:53:05', 49000000, 0, 6);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (176, 'exciter-mat-black-004-1.png', 'exciter mat black 004 1', 'exciter-mat-black-004-1', 2, 3, 'Dòng xe EXCITER MAT BLACK 004 1 thuộc hãng xe exciter-mat-black-004-1 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 39000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (177, 'yamaha-xsr-115-001.png', 'yamaha xsr 115 001', 'yamaha-xsr-115-001', 2, 3, 'Dòng xe YAMAHA XSR 115 001 thuộc hãng xe yamaha-xsr-115-001 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 79000000, 0, 9);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (178, 'yamaha-150.png', 'yamaha 150', 'yamaha-150', 2, 3, 'Dòng xe YAMAHA 150 thuộc hãng xe yamaha-150 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 93000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (179, '2021_mtn320-a_pgd_usa_mt-03_storm-fluo_360_036-1.png', '2021_mtn320 a_pgd_usa_mt 03_storm fluo_360_036 1', '2021_mtn320-a_pgd_usa_mt-03_storm-fluo_360_036-1', 2, 5, 'Dòng xe 2021_MTN320 A_PGD_USA_MT 03_STORM FLUO_360_036 1 thuộc hãng xe 2021_mtn320-a_pgd_usa_mt-03_storm-fluo_360_036-1 cực hot.', '2022-12-16 22:53:05', 69000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (180, 'mt15-gp-004.png', 'mt15 gp 004', 'mt15-gp-004', 2, 5, 'Dòng xe MT15 GP 004 thuộc hãng xe mt15-gp-004 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 65000000, 0, 6);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (181, 'r15-gp-004.png', 'r15 gp 004', 'r15-gp-004', 2, 5, 'Dòng xe R15 GP 004 thuộc hãng xe r15-gp-004 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 45000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (182, 'yamaha-92904.png', 'yamaha 92904', 'yamaha-92904', 2, 5, 'Dòng xe YAMAHA 92904 thuộc hãng xe yamaha-92904 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 68000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (183, 'r15m-silver-004.png', 'r15m silver 004', 'r15m-silver-004', 2, 5, 'Dòng xe R15M SILVER 004 thuộc hãng xe r15m-silver-004 cực hot.', '2022-12-16 22:53:05', 68000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (184, 'r15_stdblue_idn_2020-copy.png', 'r15_stdblue_idn_2020 copy', 'r15_stdblue_idn_2020-copy', 2, 5, 'Dòng xe R15_STDBLUE_IDN_2020 COPY thuộc hãng xe r15_stdblue_idn_2020-copy là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 61000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (185, 'r15m-anni-60th-004.png', 'r15m anni 60th 004', 'r15m-anni-60th-004', 2, 5, 'Dòng xe R15M ANNI 60TH 004 thuộc hãng xe r15m-anni-60th-004 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 31000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (186, 'r15m-monster-004-2.png', 'r15m monster 004 2', 'r15m-monster-004-2', 2, 5, 'Dòng xe R15M MONSTER 004 2 thuộc hãng xe r15m-monster-004-2 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 108000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (187, '2020-yamaha-tenere-700-4.jpg', '2020 yamaha tenere 700 4', '2020-yamaha-tenere-700-4', 2, 5, 'Dòng xe 2020 YAMAHA TENERE 700 4 thuộc hãng xe 2020-yamaha-tenere-700-4 cực hot.', '2022-12-16 22:53:05', 118000000, 0, 9);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (188, '2020-yamaha-mt-10-2-1.jpg', '2020 yamaha mt 10 2 1', '2020-yamaha-mt-10-2-1', 2, 5, 'Dòng xe 2020 YAMAHA MT 10 2 1 thuộc hãng xe 2020-yamaha-mt-10-2-1 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 42000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (189, 'ymh-motor-vn-2022_yzf690_dpbmc_usa_team-yamaha-blue_s3_cmyk.png', 'ymh motor vn 2022_yzf690_dpbmc_usa_team yamaha blue_s3_cmyk', 'ymh-motor-vn-2022_yzf690_dpbmc_usa_team-yamaha-blue_s3_cmyk', 2, 5, 'Dòng xe YMH MOTOR VN 2022_YZF690_DPBMC_USA_TEAM YAMAHA BLUE_S3_CMYK thuộc hãng xe ymh-motor-vn-2022_yzf690_dpbmc_usa_team-yamaha-blue_s3_cmyk chất lượng cao và uy tín.', '2022-12-16 22:53:05', 45000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (190, '2021-yamaha-mt-09-4.jpg', '2021 yamaha mt 09 4', '2021-yamaha-mt-09-4', 2, 5, 'Dòng xe 2021 YAMAHA MT 09 4 thuộc hãng xe 2021-yamaha-mt-09-4 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 73000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (191, 'yamaha_mt-09_2022_1.jpg', 'yamaha_mt 09_2022_1', 'yamaha_mt-09_2022_1', 2, 5, 'Dòng xe YAMAHA_MT 09_2022_1 thuộc hãng xe yamaha_mt-09_2022_1 cực hot.', '2022-12-16 22:53:05', 51000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (192, 'yamaha-yzf-r15-2013.png', 'yamaha yzf r15 2013', 'yamaha-yzf-r15-2013', 2, 5, 'Dòng xe YAMAHA YZF R15 2013 thuộc hãng xe yamaha-yzf-r15-2013 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 117000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (193, 'yamaha-mt-15-22.png', 'yamaha mt 15 22', 'yamaha-mt-15-22', 2, 5, 'Dòng xe YAMAHA MT 15 22 thuộc hãng xe yamaha-mt-15-22 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 49000000, 0, 9);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (194, 'yamaha_motocross_1_nqpg.png', 'yamaha_motocross_1_nqpg', 'yamaha_motocross_1_nqpg', 2, 5, 'Dòng xe YAMAHA_MOTOCROSS_1_NQPG thuộc hãng xe yamaha_motocross_1_nqpg cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 90000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (195, 'jupiter-pearl-white-004.png', 'jupiter pearl white 004', 'jupiter-pearl-white-004', 2, 2, 'Dòng xe JUPITER PEARL WHITE 004 thuộc hãng xe jupiter-pearl-white-004 cực hot.', '2022-12-16 22:53:05', 105000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (196, 'jupiter-mat-black-004.png', 'jupiter mat black 004', 'jupiter-mat-black-004', 2, 2, 'Dòng xe JUPITER MAT BLACK 004 thuộc hãng xe jupiter-mat-black-004 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 87000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (197, 'jupiter-finn-urban-blue-004.png', 'jupiter finn urban blue 004', 'jupiter-finn-urban-blue-004', 2, 2, 'Dòng xe JUPITER FINN URBAN BLUE 004 thuộc hãng xe jupiter-finn-urban-blue-004 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 113000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (199, 'jupiter-finn-blue-metallic-004-1.png', 'jupiter finn blue metallic 004 1', 'jupiter-finn-blue-metallic-004-1', 2, 2, 'Dòng xe JUPITER FINN BLUE METALLIC 004 1 thuộc hãng xe jupiter-finn-blue-metallic-004-1 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 79000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (200, 'sirius-red-metallic-004.png', 'sirius red metallic 004', 'sirius-red-metallic-004', 2, 2, 'Dòng xe SIRIUS RED METALLIC 004 thuộc hãng xe sirius-red-metallic-004 cực hot.', '2022-12-16 22:53:05', 65000000, 0, 14);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (201, 'sirius-red-black-006.png', 'sirius red black 006', 'sirius-red-black-006', 2, 2, 'Dòng xe SIRIUS RED BLACK 006 thuộc hãng xe sirius-red-black-006 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 53000000, 0, 6);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (202, 'sirius-dark-blue-007.png', 'sirius dark blue 007', 'sirius-dark-blue-007', 2, 2, 'Dòng xe SIRIUS DARK BLUE 007 thuộc hãng xe sirius-dark-blue-007 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 56000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (203, 'sirius-red-black-008.png', 'sirius red black 008', 'sirius-red-black-008', 2, 2, 'Dòng xe SIRIUS RED BLACK 008 thuộc hãng xe sirius-red-black-008 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 111000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (204, 'sirius-mat-black-disk-004.png', 'sirius mat black disk 004', 'sirius-mat-black-disk-004', 2, 2, 'Dòng xe SIRIUS MAT BLACK DISK 004 thuộc hãng xe sirius-mat-black-disk-004 cực hot.', '2022-12-16 22:53:05', 94000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (205, 'sirius-bluish-gray-metallic-disk-004.png', 'sirius bluish gray metallic disk 004', 'sirius-bluish-gray-metallic-disk-004', 2, 2, 'Dòng xe SIRIUS BLUISH GRAY METALLIC DISK 004 thuộc hãng xe sirius-bluish-gray-metallic-disk-004 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 113000000, 0, 6);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (206, 'sirius-black-drum-004-1.png', 'sirius black drum 004 1', 'sirius-black-drum-004-1', 2, 2, 'Dòng xe SIRIUS BLACK DRUM 004 1 thuộc hãng xe sirius-black-drum-004-1 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 45000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (207, 'sirius-black-disk-004.png', 'sirius black disk 004', 'sirius-black-disk-004', 2, 2, 'Dòng xe SIRIUS BLACK DISK 004 thuộc hãng xe sirius-black-disk-004 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 112000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (208, 'sirius-yellow-rc-004.png', 'sirius yellow rc 004', 'sirius-yellow-rc-004', 2, 2, 'Dòng xe SIRIUS YELLOW RC 004 thuộc hãng xe sirius-yellow-rc-004 cực hot.', '2022-12-16 22:53:05', 54000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (209, 'std-white-metallic-6-hub-004.png', 'std white metallic 6 hub 004', 'std-white-metallic-6-hub-004', 2, 2, 'Dòng xe STD WHITE METALLIC 6 HUB 004 thuộc hãng xe std-white-metallic-6-hub-004 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 103000000, 0, 8);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (210, 'yamaha-jupiter-tvs.png', 'yamaha jupiter tvs', 'yamaha-jupiter-tvs', 2, 2, 'Dòng xe YAMAHA JUPITER TVS thuộc hãng xe yamaha-jupiter-tvs chất lượng cao và uy tín.', '2022-12-16 22:53:05', 88000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (211, 'rc-black-metallic-y-004-copy.png', 'rc black metallic y 004 copy', 'rc-black-metallic-y-004-copy', 2, 2, 'Dòng xe RC BLACK METALLIC Y 004 COPY thuộc hãng xe rc-black-metallic-y-004-copy cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 50000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (212, 'yamaha-ya-1-5.png', 'yamaha ya 1 5', 'yamaha-ya-1-5', 2, 2, 'Dòng xe YAMAHA YA 1 5 thuộc hãng xe yamaha-ya-1-5 cực hot.', '2022-12-16 22:53:05', 44000000, 0, 9);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (213, 'freego-mat-grey-smk-004.png', 'freego mat grey smk 004', 'freego-mat-grey-smk-004', 2, 3, 'Dòng xe FREEGO MAT GREY SMK 004 thuộc hãng xe freego-mat-grey-smk-004 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 84000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (214, 'freego-white-metallic-004.png', 'freego white metallic 004', 'freego-white-metallic-004', 2, 3, 'Dòng xe FREEGO WHITE METALLIC 004 thuộc hãng xe freego-white-metallic-004 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 39000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (215, 'new-grande-limited-pink-004.png', 'new grande limited pink 004', 'new-grande-limited-pink-004', 2, 3, 'Dòng xe NEW GRANDE LIMITED PINK 004 thuộc hãng xe new-grande-limited-pink-004 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 57000000, 0, 9);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (216, 'new-grande-mat-orange-004.png', 'new grande mat orange 004', 'new-grande-mat-orange-004', 2, 3, 'Dòng xe NEW GRANDE MAT ORANGE 004 thuộc hãng xe new-grande-mat-orange-004 cực hot.', '2022-12-16 22:53:05', 114000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (217, 'new-janus-mat-black-pink-smk-004.png', 'new janus mat black pink smk 004', 'new-janus-mat-black-pink-smk-004', 2, 3, 'Dòng xe NEW JANUS MAT BLACK PINK SMK 004 thuộc hãng xe new-janus-mat-black-pink-smk-004 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 68000000, 0, 11);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (218, 'janus-white-004.png', 'janus white 004', 'janus-white-004', 2, 3, 'Dòng xe JANUS WHITE 004 thuộc hãng xe janus-white-004 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 47000000, 0, 10);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (219, 'latte-dark-grey-004.png', 'latte dark grey 004', 'latte-dark-grey-004', 2, 3, 'Dòng xe LATTE DARK GREY 004 thuộc hãng xe latte-dark-grey-004 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 96000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (220, 'x30-monster-004.png', 'x30 monster 004', 'x30-monster-004', 2, 3, 'Dòng xe X30 MONSTER 004 thuộc hãng xe x30-monster-004 cực hot.', '2022-12-16 22:53:05', 81000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (221, 'nvx-155vva-pastel-dark-grey-004.png', 'nvx 155vva pastel dark grey 004', 'nvx-155vva-pastel-dark-grey-004', 2, 3, 'Dòng xe NVX 155VVA PASTEL DARK GREY 004 thuộc hãng xe nvx-155vva-pastel-dark-grey-004 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 83000000, 0, 5);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (222, 'yamaha-classico2011_brown.png', 'yamaha classico2011_brown', 'yamaha-classico2011_brown', 2, 3, 'Dòng xe YAMAHA CLASSICO2011_BROWN thuộc hãng xe yamaha-classico2011_brown chất lượng cao và uy tín.', '2022-12-16 22:53:05', 115000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (223, 'yamaha-nerax.png', 'yamaha nerax', 'yamaha-nerax', 2, 3, 'Dòng xe YAMAHA NERAX thuộc hãng xe yamaha-nerax cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 49000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (224, 'yamaha-grande-2020.png', 'yamaha grande 2020', 'yamaha-grande-2020', 2, 3, 'Dòng xe YAMAHA GRANDE 2020 thuộc hãng xe yamaha-grande-2020 cực hot.', '2022-12-16 22:53:05', 55000000, 0, 9);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (225, 'yamaha-grande-2017-1.png', 'yamaha grande 2017 1', 'yamaha-grande-2017-1', 2, 3, 'Dòng xe YAMAHA GRANDE 2017 1 thuộc hãng xe yamaha-grande-2017-1 là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 47000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (226, 'yamaha-smax-2020.png', 'yamaha smax 2020', 'yamaha-smax-2020', 2, 3, 'Dòng xe YAMAHA SMAX 2020 thuộc hãng xe yamaha-smax-2020 chất lượng cao và uy tín.', '2022-12-16 22:53:05', 118000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (227, 'yamaha-gear-125.png', 'yamaha gear 125', 'yamaha-gear-125', 2, 3, 'Dòng xe YAMAHA GEAR 125 thuộc hãng xe yamaha-gear-125 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 111000000, 0, 9);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (228, 'yamahamiogt.png', 'yamahamiogt', 'yamahamiogt', 2, 3, 'Dòng xe YAMAHAMIOGT thuộc hãng xe yamahamiogt cực hot.', '2022-12-16 22:53:05', 100000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (229, 'yamaha-vino.png', 'yamaha vino', 'yamaha-vino', 2, 3, 'Dòng xe YAMAHA VINO thuộc hãng xe yamaha-vino là một trong những dòng xe bán chạy nhất.', '2022-12-16 22:53:05', 62000000, 0, 12);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (230, 'yamaha-nouvo.png', 'yamaha nouvo', 'yamaha-nouvo', 2, 3, 'Dòng xe YAMAHA NOUVO thuộc hãng xe yamaha-nouvo chất lượng cao và uy tín.', '2022-12-16 22:53:05', 82000000, 0, 7);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (231, '2019-yamaha-mio-m3.png', '2019 yamaha mio m3', '2019-yamaha-mio-m3', 2, 3, 'Dòng xe 2019 YAMAHA MIO M3 thuộc hãng xe 2019-yamaha-mio-m3 cực kì sang trọng và đẹp mắt.', '2022-12-16 22:53:05', 92000000, 0, 5);
