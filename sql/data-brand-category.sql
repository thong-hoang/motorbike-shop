-- brand
INSERT INTO `brands` (`id`, `name`, `image_path`, `enabled`)
VALUES (1, 'Honda', 'honda.jpg', b'1'),
       (2, 'Yamaha', 'yamaha.png', b'1'),
       (3, 'Piaggio', 'piaggio.png', b'1'),
       (4, 'Sym', 'sym.png', b'1'),
       (5, 'Suzuki', NULL, b'1'),
       (6, 'Ducati', NULL, b'1'),
       (7, 'Kawasaki', NULL, b'1');

-- category
INSERT INTO `categories` (`id`, `name`, `alias`, `parent_id`, `enabled`)
VALUES (1, 'xe máy', '', NULL, b'1'),
       (2, 'xe số', 'xe-số', 1, b'1'),
       (3, 'xe côn tay', 'xe-côn-tay', 1, b'1'),
       (4, 'xe tay ga', 'xe-tay-ga', 1, b'1'),
       (5, 'xe mô tô', 'xe-mô-tô', 1, b'1');