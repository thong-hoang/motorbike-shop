-- role
INSERT INTO `roles` (`id`, `name`, `description`) VALUES (1, 'quản trị viên', 'quản lý tất cả');
INSERT INTO `roles` (`id`, `name`, `description`) VALUES (2, 'nhân viên bán hàng', 'quản lý sản phẩm');
INSERT INTO `roles` (`id`, `name`, `description`) VALUES (3, 'nhân viên giao hàng', 'quản lý đơn hàng');
INSERT INTO `roles` (`id`, `name`, `description`) VALUES (4, 'nhân viên biên tập', 'quản lý thể loại, nhãn hiệu, quảng cáo');

-- user
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone_number`, `image_path`, `email`, `password`, `enabled`) 
            VALUES (1, 'admin', 'admin', '0123456789', NULL, 'admin@gmail.com', 'admin123', b'1');

-- user role
INSERT INTO `user_role` (`user_id`, `role_id`) VALUES (1, 1);