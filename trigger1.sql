CREATE DEFINER=`root`@`localhost` TRIGGER `order_AFTER_INSERT` AFTER INSERT ON `order` FOR EACH ROW BEGIN
 UPDATE product SET availabilty = 0 WHERE product.product_ID = (SELECT cart.product_ID FROM cart WHERE cart.idcart = NEW.cart_link);
END