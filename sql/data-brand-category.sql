-- brand
INSERT INTO `brands` (`id`, `name`, `image_path`, `enabled`)
VALUES (1, 'Honda', 'honda.jpg', b'1'),
       (2, 'Yamaha', 'yamaha.png', b'1'),
       (3, 'Piaggio', 'piaggio.png', b'1'),
       (4, 'Sym', 'sym.png', b'1'),
       (5, 'Suzuki', 'suzuki.png', b'1'),
       (6, 'Ducati', 'ducati.png', b'1'),
       (7, 'Kawasaki', 'kawasaki.png', b'1');

-- category
INSERT INTO `categories` (`id`, `name`, `alias`, `parent_id`, `enabled`)
VALUES (1, 'xe máy', '', NULL, b'1'),
       (2, 'xe số', 'xe-số', 1, b'1'),
       (3, 'xe côn tay', 'xe-côn-tay', 1, b'1'),
       (4, 'xe tay ga', 'xe-tay-ga', 1, b'1'),
       (5, 'xe mô tô', 'xe-mô-tô', 1, b'1');

-- brand_category
INSERT INTO `brand_category` (`brand_id`, `category_id`)
VALUES (1, 2),
       (1, 3),
       (1, 4),
       (1, 5),
       (2, 2),
       (2, 3),
       (2, 4),
       (2, 5),
       (5, 2),
       (5, 3),
       (5, 4),
       (5, 5),
       (3, 2),
       (3, 3),
       (3, 4),
       (3, 5),
       (4, 2),
       (4, 3),
       (4, 4),
       (4, 5);
