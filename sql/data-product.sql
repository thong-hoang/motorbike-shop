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
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (28, 'cbr1000rr-fireblade.png', 'cbr1000rr fireblade', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 355000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (29, 'cbr1000rr-fireblade-sp-2018.png', 'cbr1000rr fireblade sp 2018', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 278000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (30, 'cbr1000rr-r-fireblade-2022.png', 'cbr1000rr r fireblade 2022', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 499000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (31, 'cbr1000rr-r-fireblade-sp-2022.png', 'cbr1000rr r fireblade sp 2022', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 246000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (32, 'x-adv-750.png', 'x adv 750', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 500000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (33, 'rebel-250.jpg', 'rebel 250', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 345000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (34, 'rebel-300.jpg', 'rebel 300', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 278000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (35, 'rebel-500.png', 'rebel 500', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 338000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (36, 'cbr250.jpg', 'cbr250', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 200000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (37, 'cbr500r.jpg', 'cbr500r', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 379000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (38, 'cbr650r-2021.png', 'cbr650r 2021', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 369000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (39, 'cbr650r-2022.jpg', 'cbr650r 2022', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 600000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (40, 'cbr650f.jpg', 'cbr650f', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 456000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (41, 'cb650r-2021.png', 'cb650r 2021', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 542000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (42, 'cb650r-2022.png', 'cb650r 2022', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 355000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (43, 'cb500f.jpg', 'cb500f', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 322000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (44, 'cb650f.jpg', 'cb650f', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 440000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (45, 'cb300r.png', 'cb300r', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 320000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (46, 'cb1000r.png', 'cb1000r', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 390000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (47, 'cb1000r-limited.jpg', 'cb1000r limited', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 299000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (48, 'cb1100.jpg', 'cb1000', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 482000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (49, 'cb500x.jpg', 'cb500x', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 599000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (50, 'cbs350rs.jpg', 'cbs350rs', 'Honda', 1, 5, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 355000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (51, 'intruder-150-2022.png', 'intruder 150 2022', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 450000000, 0, 0);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (52, 'suzuki-satria-2022.png', 'suzuki satria 2022', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 75000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (53, 'raider-2022.png', 'raider 2022', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 46000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (54, 'gsx150-bandit.png', 'gsx150 bandit', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 51000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (55, 'gd110.png', 'gd110', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 62000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (56, 'gsx-s150.jpg', 'gsx s150', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 44000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (57, 'gsx-r150.png', 'gsx r150', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 78000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (58, 'raider-150-fi.jpg', 'raider 150 fi', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 63000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (59, 'raider-150-2016.jpg', 'raider 150 2016', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 58000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (60, 'raider-150-2015.jpg', 'raider 150 2015', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 71000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (61, 'raider-150.jpg', 'raider 150', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 49000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (62, 'en-150a.jpg', 'en 150a', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 56000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (63, 'gz150-a-2020.png', 'gz150 a 2020', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 58000000, 1, 50);
INSERT INTO `products`(`id`, `main_image_path`, `name`, `alias`, `brand_id`, `category_id`, `description`, `last_updated_time`, `price`, `percent_discount`, `quantity`) VALUES (64, 'axelo-125-2017.jpg', 'axelo 125 2017', 'Suzuki', 5, 3, 'Uy tín và chất lượng', '2023-01-04 11:25:45', 64000000, 1, 50);