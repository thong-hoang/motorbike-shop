-- user
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone_number`, `image_path`, `email`, `password`, `enabled`)
VALUES (1, 'admin', 'admin', '0123456789', NULL, 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', b'1'),
       (2, 'Thông', 'Hoàng Phạm', '0123456789', 'messi.jpg', 'thong@gmail.com', '00822c780b7e4c7a0e4b887d41ca0155',
        b'1'),
       (3, 'Vinh', 'Nguyễn Hoàng', '0123456789', NULL, 'vinh@gmail.com', '6d9573b8494223ea50d7e15075d45a0c', b'0'),
       (4, 'Vinh', 'Nguyễn Thái', '0123456789', 'a.png', 'thaivinh@gmail.com', '6d9573b8494223ea50d7e15075d45a0c',
        b'1');

-- admin123, thong123, vinh123

-- role
INSERT INTO `roles` (`id`, `name`, `description`)
VALUES (1, 'quản trị viên', 'quản lý tất cả'),
       (2, 'nhân viên bán hàng', 'quản lý sản phẩm'),
       (3, 'nhân viên giao hàng', 'quản lý đơn hàng'),
       (4, 'nhân viên biên tập', 'quản lý thể loại, nhãn hiệu, quảng cáo');

-- user role
INSERT INTO `user_role` (`user_id`, `role_id`)
VALUES (1, 1),
       (2, 2),
       (2, 3),
       (2, 4),
       (3, 2),
       (3, 4),
       (4, 3);
