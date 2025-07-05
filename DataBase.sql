
CREATE TABLE IF NOT EXISTS `register` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) NOT NULL,
  `email` VARCHAR(30) NOT NULL UNIQUE,
  `password` VARCHAR(30) NOT NULL,
  `phone` VARCHAR(20),
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `email`, `password`, `phone`) VALUES
('mai', 'mai@gmail.com', 'mai','0912345678');


CREATE TABLE IF NOT EXISTS `movies_inventory` (
    `show_id` INT NOT NULL AUTO_INCREMENT,
    `movie_name` VARCHAR(100) NOT NULL,
    `theatre` VARCHAR(100) NOT NULL, -- اسم المسرح
    `shows` VARCHAR(20) NOT NULL,     -- وقت العرض
    `show_date` VARCHAR(20) NOT NULL,
    `tickets` INT NOT NULL,           -- عدد التذاكر المتاحة
    PRIMARY KEY (`show_id`),
    UNIQUE (`movie_name`, `theatre`, `shows`, `show_date`) -- لضمان فرادة كل عرض
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `movies_inventory` (`movie_name`, `theatre`, `shows`, `show_date`, `tickets`) VALUES
('The lion king', 'Vox cinemas', '11:00AM', '11-11-2025', 250),
('The lion king', 'Vox cinemas', '11:00AM', '04-11-2025', 250),
('The lion king', 'Vox cinemas', '9:00PM', '11-11-2025', 250),
('The lion king', 'Vox cinemas', '9:00PM', '04-11-2025', 250),
('The lion king', 'Galaxy cinemas', '9:00PM', '11-11-2025', 250),
('The lion king', 'Galaxy cinemas', '9:00PM', '04-11-2025', 250),
('The lion king', 'Galaxy cinemas', '11:00AM', '11-11-2025', 250),
('The lion king', 'Galaxy cinemas', '11:00AM', '04-11-2025', 250),
('The lion king', 'Odeon cinemas', '11:00AM', '11-11-2025', 250),
('The lion king', 'Odeon cinemas', '11:00AM', '04-11-2025', 250),
('The lion king', 'Odeon cinemas', '9:00PM', '11-11-2025', 250),
('The lion king', 'Odeon cinemas', '9:00PM', '04-11-2025', 250),
('Finding Nemo', 'Vox cinemas', '11:00AM', '04-11-2025', 250),
('Finding Nemo', 'Vox cinemas', '11:00AM', '11-11-2025', 250),
('Finding Nemo', 'Vox cinemas', '9:00PM', '04-11-2025', 250),
('Finding Nemo', 'Vox cinemas', '9:00PM', '11-11-2025', 250),
('Finding Nemo', 'Galaxy cinemas', '11:00AM', '04-11-2025', 250),
('Finding Nemo', 'Galaxy cinemas', '11:00AM', '11-11-2025', 250),
('Finding Nemo', 'Galaxy cinemas', '9:00PM', '04-11-2025', 250),
('Finding Nemo', 'Galaxy cinemas', '9:00PM', '11-11-2025', 250),
('Finding Nemo', 'Odeon cinemas', '11:00AM', '04-11-2025', 250),
('Finding Nemo', 'Odeon cinemas', '11:00AM', '11-11-2025', 250),
('Finding Nemo', 'Odeon cinemas', '9:00PM', '04-11-2025', 250),
('Finding Nemo', 'Odeon cinemas', '9:00PM', '11-11-2025', 250),
('Toy Story', 'Vox cinemas', '11:00AM', '04-11-2025', 250),
('Toy Story', 'Vox cinemas', '11:00AM', '11-11-2025', 250),
('Toy Story', 'Vox cinemas', '9:00PM', '04-11-2025', 250),
('Toy Story', 'Vox cinemas', '9:00PM', '11-11-2025', 250),
('Toy Story', 'Galaxy cinemas', '11:00AM', '11-11-2025', 250),
('Toy Story', 'Galaxy cinemas', '11:00AM', '04-11-2025', 250),
('Toy Story', 'Galaxy cinemas', '9:00PM', '11-11-2025', 250),
('Toy Story', 'Galaxy cinemas', '9:00PM', '04-11-2025', 250),
('Toy Story', 'Odeon cinemas', '11:00AM', '11-11-2025', 250),
('Toy Story', 'Odeon cinemas', '11:00AM', '04-11-2025', 250),
('Toy Story', 'Odeon cinemas', '9:00PM', '11-11-2025', 250),
('Toy Story', 'Odeon cinemas', '9:00PM', '04-11-2025', 250);





CREATE TABLE IF NOT EXISTS `bookings` (
    `booking_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` INT NOT NULL,
    `show_id` INT NOT NULL,
    `number_of_tickets_booked` INT NOT NULL,
    `total_price` DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (`user_id`) REFERENCES `register`(`id`)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`show_id`) REFERENCES `movies_inventory`(`show_id`)
        ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;