use lms;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `admins` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `mobile` varchar(10) NOT NULL
);

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `mobile`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin@1234', 1148458757),
(2, 'Nikitha', 'nikitha@gmail.com', '1234', 9347951085),
(3, 'Rushitha','rushitha07@gmail.com','1234',8919002546);

Select * from admins;


CREATE TABLE `authors` (
  `author_id` int(11) PRIMARY KEY  NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107,
  `author_name` varchar(250) NOT NULL
);

INSERT INTO `authors` (`author_id`, `author_name`) VALUES
(102, 'M D Guptaa'),
(103, 'Chetan Bhagat'),
(104, 'Munshi Prem Chand');



CREATE TABLE `category` (
  `cat_id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10,
  `cat_name` varchar(100) NOT NULL
);

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Computer Science Engineering '),
(2, 'Novel'),
(4, 'Motivational'),
(5, 'Story');




CREATE TABLE `users` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(250) NOT NULL
) ;


INSERT INTO `users` (`id`, `name`, `email`, `password`, `mobile`, `address`) VALUES
(4, 'user', 'user@gmail.com', 'user@1234', 2147483644, 'XYZ Coloney, PQR Nagar , Jaipur'),
(7, 'hemant', 'hemant@gmail.com', 'hemant@123', 2147483644, 'XYZ Coloney, PQR Nagar , Jaipur');

CREATE TABLE `books` (
  `book_id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9,
  `book_name` varchar(250) NOT NULL,
  `author_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `book_no` int(11) NOT NULL,
  `book_price` int(11) NOT NULL,
  FOREIGN KEY (author_id) REFERENCES authors(author_id),
 FOREIGN KEY (cat_id) REFERENCES category(cat_id));


INSERT INTO `books` (`book_id`, `book_name`, `author_id`, `cat_id`, `book_no`, `book_price`) VALUES
(1, 'Software engineering', 101, 1, 4518, 270),
(2, 'Data structure', 102, 2, 6541, 300);


CREATE TABLE `issued_books` (
  `s_no` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19,
  `book_no` int(11) NOT NULL,
  `book_name` varchar(200) NOT NULL,
  `book_author` varchar(200) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `issue_date` longtext NOT NULL,
  FOREIGN KEY (id) REFERENCES users(id),
  FOREIGN KEY (book_id) REFERENCES books(book_id)
);

INSERT INTO `issued_books` (`s_no`, `book_no`, `book_name`, `book_author`, `student_id`, `status`, `issue_date`) VALUES
(1, 6541, 'Data structure', 'D S Gupta', 4, 1, '0000-00-00 00:00:00'),
(18, 7845, 'half Girlfriend', 'Chetan Bhagat', 2, 1, '2020-04-22');

/*ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

ALTER TABLE `issued_books`
  ADD PRIMARY KEY (`s_no`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `issued_books`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;
select * from authors;*/
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
