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
       (6, 2),
       (7, 2),
       (8, 2),
       (9, 2),
       (10, 2),
       (11, 2),
       (12, 2),
       (13, 2),
       (14, 2),
       (15, 2),
       (16, 2),
       (17, 2),
       (18, 2),
       (19, 2),
       (20, 2),
       (21, 2),
       (22, 2),
       (23, 2),
       (24, 2),
       (25, 2),
       (26, 2),
       (27, 2),
       (28, 2),
       (29, 2),
       (30, 2),
       (31, 2),
       (32, 2),
       (33, 2),
       (34, 2),
       (35, 2),
       (36, 2),
       (37, 2),
       (38, 2),
       (39, 2),
       (40, 2),
       (41, 2),
       (42, 2),
       (43, 2),
       (44, 2),
       (45, 2),
       (46, 2),
       (47, 2),
       (48, 2),
       (49, 2),
       (50, 2),
       (51, 2),
       (52, 2),
       (53, 2),
       (54, 2),
       (55, 2),
       (56, 2),
       (57, 2),
       (58, 2),
       (59, 2),
       (60, 2),
       (61, 2),
       (62, 2),
       (63, 2),
       (64, 2);

-- products
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (1, 'winner-x-tieuchuan-2022.jpg', 'honda winner x 2022', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-01-28 11:25:45', 100000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (2, 'winner-x-dacbiet-2022.jpg', 'winner x dac biet 2022', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-01-29 11:25:45', 70000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (3, 'winner-x-camo-2020.jpg', 'winner x camo 2020', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-01-30 11:25:45', 57000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (4, 'winner-x-thethao-v3-2022.jpg', 'winner x thethao v3 2022', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-01-31 11:25:45', 35000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (5, 'winner-x-dacbiet-v3-2022.jpg', 'winner x dacbiet v3 2022', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-01 11:25:45', 85000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (6, 'winner-x-tieuchuan-v3-2022.jpg', 'winner x tieuchuan v3 2022', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-02 11:25:45', 55000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (7, 'winner-x-camo-2022.jpg', 'winner x camo 2022', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-03 11:25:45', 122000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (8, 'winner-x-thethao-2022.jpg', 'winner x thethao 2022', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-04 11:25:45', 32000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (9, 'winner-150.png', 'winner 150', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-05 11:25:45', 62000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (10, 'msx-2020.jpg', 'msx 2020', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-06 11:25:45', 34000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (11, 'msx-2021.png', 'msx 2021', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-07 11:25:45', 38000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (12, 'sonic-2021.jpg', 'sonic 2021', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-08 11:25:45', 88000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (13, 'sonic-2022.jpg', 'sonic 2022', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-09 11:25:45', 88000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (14, 'cb150r-streetster.png', 'cb150r streetster', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-10 11:25:45', 77000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (15, 'cb150-verza.jpg', 'cb150 verza', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-11 11:25:45', 170000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (16, 'cb150r-exmotion.png', 'cb150r exmotion', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-12 11:25:45', 120000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (17, 'cb150r-streetfire.jpg', 'cb150r streetfire', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-13 11:25:45', 99000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (18, 'cb150r-2021.jpg', 'cb150r 2021', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-14 11:25:45', 90000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (19, 'cb150x-2022.jpg', 'cb150x 2022', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-15 11:25:45', 89000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (20, 'cbr150r-tieuchuan.png', 'cbr150r tieuchuan', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-16 11:25:45', 69000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (21, 'cbr150r-thethao.png', 'cbr150r thethao', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-17 11:25:45', 49000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (22, 'cbr150r-dacbiet.jpg', 'cbr150r dacbiet', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-18 11:25:45', 79000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (23, 'cbf125r-2021.jpg', 'cbf125r 2021', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-19 11:25:45', 76000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (24, 'cb-hornet-160r.png', 'cb hornet 160r', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-20 11:25:45', 66000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (25, 'monkey-2021.png', 'monkey 2021', 'Honda', 1, 3, 'Uy tín và chất lượng', '2023-02-21 11:25:45', 62000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (26, 'rebel-1100.png', 'rebel 1100', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-02-22 11:25:45', 602000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (27, 'rebel-1100-dct.png', 'rebel 1100 dct', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-02-23 11:25:45', 455000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (28, 'cbr1000rr-fireblade.png', 'cbr1000rr fireblade', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-02-24 11:25:45', 355000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (29, 'cbr1000rr-fireblade-sp-2018.png', 'cbr1000rr fireblade sp 2018', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-02-25 11:25:45', 278000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (30, 'cbr1000rr-r-fireblade-2022.png', 'cbr1000rr r fireblade 2022', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-02-26 11:25:45', 499000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (31, 'cbr1000rr-r-fireblade-sp-2022.png', 'cbr1000rr r fireblade sp 2022', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-02-27 11:25:45', 246000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (32, 'x-adv-750.png', 'x adv 750', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-02-28 11:25:45', 500000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (33, 'rebel-250.jpg', 'rebel 250', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-03-01 11:25:45', 345000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (34, 'rebel-300.jpg', 'rebel 300', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-03-02 11:25:45', 278000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (35, 'rebel-500.png', 'rebel 500', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-03-03 11:25:45', 338000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (36, 'cbr250.jpg', 'cbr250', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-03-04 11:25:45', 200000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (37, 'cbr500r.jpg', 'cbr500r', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-03-05 11:25:45', 379000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (38, 'cbr650r-2021.png', 'cbr650r 2021', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-03-06 11:25:45', 369000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (39, 'cbr650r-2022.jpg', 'cbr650r 2022', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-03-07 11:25:45', 600000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (40, 'cbr650f.jpg', 'cbr650f', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-03-08 11:25:45', 456000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (41, 'cb650r-2021.png', 'cb650r 2021', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-03-09 11:25:45', 542000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (42, 'cb650r-2022.png', 'cb650r 2022', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-03-10 11:25:45', 355000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (43, 'cb500f.jpg', 'cb500f', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-03-11 11:25:45', 322000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (44, 'cb650f.jpg', 'cb650f', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-03-12 11:25:45', 440000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (45, 'cb300r.png', 'cb300r', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-03-13 11:25:45', 320000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (46, 'cb1000r.png', 'cb1000r', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-03-14 11:25:45', 390000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (47, 'cb1000r-limited.jpg', 'cb1000r limited', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-03-15 11:25:45', 299000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (48, 'cb1100.jpg', 'cb1000', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-03-16 11:25:45', 482000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (49, 'cb500x.jpg', 'cb500x', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-03-17 11:25:45', 599000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (50, 'cbs350rs.jpg', 'cbs350rs', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-03-18 11:25:45', 355000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (51, 'intruder-150-2022.png', 'intruder 150 2022', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-03-19 11:25:45', 450000000, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (52, 'suzuki-satria-2022.png', 'suzuki satria 2022', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-03-20 11:25:45', 75000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (53, 'raider-2022.png', 'raider 2022', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-03-21 11:25:45', 46000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (54, 'gsx150-bandit.png', 'gsx150 bandit', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-03-22 11:25:45', 51000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (55, 'gd110.png', 'gd110', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-03-23 11:25:45', 62000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (56, 'gsx-s150.jpg', 'gsx s150', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-03-24 11:25:45', 44000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (57, 'gsx-r150.png', 'gsx r150', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-03-25 11:25:45', 78000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (58, 'raider-150-fi.jpg', 'raider 150 fi', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-03-26 11:25:45', 63000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (59, 'raider-150-2016.jpg', 'raider 150 2016', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-03-27 11:25:45', 58000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (60, 'raider-150-2015.jpg', 'raider 150 2015', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-03-28 11:25:45', 71000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (61, 'raider-150.jpg', 'raider 150', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-03-29 11:25:45', 49000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (62, 'en-150a.jpg', 'en 150a', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-03-30 11:25:45', 56000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (63, 'gz150-a-2020.png', 'gz150 a 2020', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-03-31 11:25:45', 58000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (64, 'axelo-125-2017.jpg', 'axelo 125 2017', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-04-01 11:25:45', 64000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (65, 'africa-twin.jpg', 'africa twin', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-04-02 11:25:45', 360000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (66, 'africa twin adventure sport', 'africa twin adventure sport', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-04-03 11:25:45', 250000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (67, 'gold-wing-2022.png', 'gold wing 2022', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-04-04 11:25:45', 260000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (68, 'fury-1300.jpg', 'fury 1300', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-04-05 11:25:45', 330000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (69, 'shadow-phantom-750.jpg', 'shadow phantom 750', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-04-06 11:25:45', 420000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (70, 'blade-2021.png', 'blade 2021', 'Honda', 1, 2, 'Uy tín và chất lượng', '2023-04-07 11:25:45', 21000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (71, 'blade-2022.png', 'blade 2022', 'Honda', 1, 2, 'Uy tín và chất lượng', '2023-04-08 11:25:45', 26000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (72, 'wave-alpha-2015.jpg', 'wave alpha 2015', 'Honda', 1, 2, 'Uy tín và chất lượng', '2023-04-09 11:25:45', 18000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (73, 'wave-alpha-2022.png', 'wave alpha 2022', 'Honda', 1, 2, 'Uy tín và chất lượng', '2023-04-10 11:25:45', 27000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (74, 'wave-110s.jpg', 'wave 110s', 'Honda', 1, 2, 'Uy tín và chất lượng', '2023-04-11 11:25:45', 22000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (75, 'wave-110rs.jpg', 'wave 110rs', 'Honda', 1, 2, 'Uy tín và chất lượng', '2023-04-12 11:25:45', 20000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (76, 'wave-alpha-zx.jpg', 'wave alpha zx', 'Honda', 1, 2, 'Uy tín và chất lượng', '2023-04-13 11:25:45', 25000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (77, 'wave-rsx-2014.png', 'wave rsx 2014', 'Honda', 1, 2, 'Uy tín và chất lượng', '2023-04-14 11:25:45', 29000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (78, 'wave-rsx-fi-at.jpg', 'wave rsx fi at', 'Honda', 1, 2, 'Uy tín và chất lượng', '2023-04-15 11:25:45', 24000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (79, 'wave-rsx-2020.jpg', 'wave rsx 2020', 'Honda', 1, 2, 'Uy tín và chất lượng', '2023-04-16 11:25:45', 20000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (80, 'wave-rsx-fi-2022.png', 'wave rsx fi 2022', 'Honda', 1, 2, 'Uy tín và chất lượng', '2023-04-17 11:25:45', 22000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (81, 'super-dream-2013.png', 'super dream 2013', 'Honda', 1, 2, 'Uy tín và chất lượng', '2023-04-18 11:25:45', 20000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (82, 'super-dream-2014.jpg', 'super dream 2014', 'Honda', 1, 2, 'Uy tín và chất lượng', '2023-04-19 11:25:45', 22000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (83, 'super-dream-2015.png', 'super dream 2015', 'Honda', 1, 2, 'Uy tín và chất lượng', '2023-04-20 11:25:45', 21000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (84, 'future-fi-2013.jpg', 'future fi 2013', 'Honda', 1, 2, 'Uy tín và chất lượng', '2023-04-21 11:25:45', 28000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (85, 'future-fi-2014.jpg', 'future fi 2014', 'Honda', 1, 2, 'Uy tín và chất lượng', '2023-04-22 11:25:45', 17000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (86, 'future-fi-2022.png', 'future fi 2022', 'Honda', 1, 2, 'Uy tín và chất lượng', '2023-04-23 11:25:45', 24000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (87, 'future-x.jpg', 'future x', 'Honda', 1, 2, 'Uy tín và chất lượng', '2023-04-24 11:25:45', 27000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (88, 'super-cub-c125.png', 'super cub c125', 'Honda', 1, 2, 'Uy tín và chất lượng', '2023-04-25 11:25:45', 23000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (89, 'trail-cup.jpg', 'trail cup', 'Honda', 1, 2, 'Uy tín và chất lượng', '2023-04-26 11:25:45', 19000000, 0, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (90, 'airblade-125-tieuchuan-2021.jpg', '90', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (91, 'airblade-160-dacbiet-2022.png', '91', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (92, 'airblade-125-dacbiet-2022.jpg', '92', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (93, 'airblade-160-tieuchuan-2023.jpg', '93', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (94, 'airblade-125-dacbiet-2023.jpg', '94', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (95, 'airblade-150-2020.jpg', '95', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (96, 'sh-mode-cbs-2022.jpg', '96', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (97, 'sh-150i-abs-2022.png', '97', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (98, 'sh-350i-2021.jpg', '98', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (99, 'sh-125i-cbs-2021.png', '99', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (100, 'sh-150i-abs-2021.jpg', '100', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (101, 'sh-mode-abs-2022.jpg', '101', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (102, 'sh-150i-abs-2020.jpg', '102', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (103, 'sh-125i-cbs-2020.jpg', '103', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (104, 'sh-mode-125i-2023.jpg', '104', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (105, 'sh-mode-125i-2019.jpg', '105', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (106, 'sh-125i-cbs-2022.jpg', '106', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (107, 'vision-catinh-2021.png', '107', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (108, 'vision-dacbiet-2021.png', '108', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (109, 'vision-tieuchuan-2021.jpg', '109', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (110, 'vision-caocap-2021.jpg', '110', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (111, 'vision-dacbiet-2019.jpg', '111', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (112, 'vision-tieuchuan-2019.jpg', '112', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (113, 'vision-caocap-2022.jpg', '113', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (114, 'vision-dacbiet-2020.jpg', '114', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (115, 'vision-tieuchuan-2022.jpg', '115', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (116, 'lead-caocap-2022.jpg', '116', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (117, 'lead-tieuchuan-2022.jpg', '117', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (118, 'lead-dacbiet-2022.jpg', '118', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (119, 'adv-150.png', '119', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (120, 'adv-160.png', '120', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (121, 'adv-350.jpeg', '121', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (122, 'dio.png', '122', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (123, 'forza-300.jpg', '123', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (124, 'forza-350.png', '124', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (125, 'genivo.png', '125', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (126, 'pcx.jpg', '126', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (127, 'today-50cc.jpg', '127', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (128, 'vario-150.jpg', '128', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (129, 'x-adv.png', '129', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (130, 'zoomer-x.png', '130', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (131, 'dunk.jpg', '131', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (132, 'scoopy.jpg', '132', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (133, 'moove.png', '133', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (134, 'giorno.jpg', '134', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (135, 'click-160.png', '135', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (136, 'pcx-hybrid.jpg', '136', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (137, 'vario-125.jpg', '137', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (138, 'beat.jpg', '138', 'Honda', 1, 4, NULL, '0000-00-00 00:00:00', 0, 0, 0);
