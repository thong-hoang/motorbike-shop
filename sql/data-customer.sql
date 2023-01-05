-- customer
INSERT INTO `customers` (`id`, `first_name`, `last_name`, `phone_number`, `email`, `password`, `created_time`,
                         `authentication_type`, `verification_code`, `enabled`)
VALUES (1, 'Long', 'Phan Đình', '0123456789', 'long@gmail.com', '36ed58c5c14dc2f58eef099585d2a939',
        '2022-12-29 21:51:32', NULL, NULL, b'0'),
       (2, 'Mẫn', 'Trần Minh', '0123456789', 'man@gmail.com', 'd1e6b917e2b99d7e4a94d0390b84e304', '2022-12-30 10:26:07',
        NULL, NULL, b'1');