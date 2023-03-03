-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 03, 2023 at 09:44 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guvitask`
--

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `email` text NOT NULL,
  `dob` date NOT NULL,
  `age` int(11) NOT NULL,
  `phonenumber` int(11) NOT NULL,
  `pincode` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `fullname`, `email`, `dob`, `age`, `phonenumber`, `pincode`, `created_at`, `update_at`) VALUES
(1, 'Vignesh', 'hi@hi.com', '2002-11-28', 20, 49400, 600073, '2023-03-03 07:03:36', '2023-03-03 07:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(23, 'hi@hi.com', '$2y$10$0sqJIh4rkUcAxLjoHV6Hv.9Xs4YO2GDQV3c4YyzEFn96Oz1LI5qtu', '2023-03-02 12:04:37', '2023-03-02 12:04:37'),
(24, 'hi@hi.com', '$2y$10$D40z.kZ5w8gPBFOK2rMoK.F/hUutw2KRhfRxEvb6WGRg296tAZEqS', '2023-03-02 12:20:34', '2023-03-02 12:20:34'),
(25, 'hi@hi.com', '$2y$10$fanVq38FZga9TQS6LgRF.uOmovz0cs71ivEsp5aevzo7U9T85gprK', '2023-03-02 12:25:06', '2023-03-02 12:25:06'),
(26, 'hi@hi.com', '$2y$10$O4sdhQDYPVjhjDNWgRrTmuinTeqMV50EGKd9Gh3O0zs96Jj2EQaOK', '2023-03-02 12:25:11', '2023-03-02 12:25:11'),
(27, 'hi@hi.com', '$2y$10$ipj8Pi/Af.IKpIklvkA4heHdowPmWjiCfB.CI1IjqJpuBUf4LML3a', '2023-03-02 12:25:33', '2023-03-02 12:25:33'),
(28, 'hi@hi.com', '$2y$10$baCEFGyHRll2LZrRwU6mQ.OSCJlVtBVYLpFaLQ6j8nwy6KMZS7V/O', '2023-03-02 12:26:04', '2023-03-02 12:26:04'),
(29, 'hello@gmail.com', '$2y$10$UKTP4jjuAHiLcJdY9vAHNOoH6npnFmLw2Ny5HFS8kxFIKx/BSb0tC', '2023-03-02 12:27:33', '2023-03-02 12:27:33'),
(30, 'hi@123.com', '$2y$10$ke8jMMRZ01qNGop0Ru0AtuipRjpgD8kkTaw8p3f37Ry5umw5QDk/O', '2023-03-02 12:28:37', '2023-03-02 12:28:37'),
(31, 'hi@123.com', '$2y$10$7X6uSmnGB9W/AXHV0qvKh.hDfOOexeq2ITZmF0jRCI2WlhWS8iZLC', '2023-03-02 12:29:04', '2023-03-02 12:29:04'),
(32, 'hi@123.com', '$2y$10$wVkj5VCBboPYt.6FUdIngeoLyJOArSMaAR8mFEKOKP527gFhlMUrq', '2023-03-02 12:29:39', '2023-03-02 12:29:39'),
(33, 'se@123.com', '$2y$10$Vxl4fPhm852WAo8jJz6hSu/su9JSSirTROeB9KBeci7MUsKkJ5Zvu', '2023-03-02 12:31:23', '2023-03-02 12:31:23'),
(34, 'ju@123.com', '$2y$10$vW9/As7Em4UqJI6R6AsxKOIJYowSYT0.0IdhNIsF1S8ND6nsXhBU6', '2023-03-02 12:34:45', '2023-03-02 12:34:45'),
(35, 'ju@123.com', '$2y$10$ntJ9yIfpHmmAYjkkuMfhGeY5Eh87R91dsIGZFH64TO4xzMeC7iXYu', '2023-03-02 13:14:40', '2023-03-02 13:14:40'),
(36, 'si@123.com', '$2y$10$1ORhcUt0Q/ECHslSogy.0OE6tpzKSTFnl5Bp3xD7ZOpWiGmEBfuli', '2023-03-02 13:44:21', '2023-03-02 13:44:21'),
(37, 'si@123.com', '$2y$10$rO5.xTx6ZLml.GGc.tAB9.7.flcAEnn9Fh9Q.AkmA65K1G5ZBO.ty', '2023-03-02 13:45:07', '2023-03-02 13:45:07'),
(38, 'si@123.com', '$2y$10$GoSxr.cA247kv1aA8T5m8eCxZcrQScv9doxPcr/MjduDgVrFduR46', '2023-03-02 13:45:25', '2023-03-02 13:45:25'),
(39, 'si@123.com', '$2y$10$0LZnsqF2GKxyG19gT5O1veqBFVr9MhmOQdpN9eoFYbqFkvxcZqEDa', '2023-03-02 13:46:12', '2023-03-02 13:46:12'),
(40, 'si@123.com', '$2y$10$572WJf33LvE0.k5IqC15UuGGIeMS3CQVfiJfmJuOcemDwIsowDc.S', '2023-03-02 13:47:07', '2023-03-02 13:47:07'),
(41, 'si@123.com', '$2y$10$NP/ZsDmCLZI1GmmVmCr.D.m84.f9cU8lc2dNJ7G.BracuSfmbrIwi', '2023-03-02 13:47:50', '2023-03-02 13:47:50'),
(42, 'si@123.com', '$2y$10$bO1QPQFxPN/VZXTxsDYEsuVxjt.OvWSS7V4iSnAyqoq56n.kAFJHa', '2023-03-02 13:48:28', '2023-03-02 13:48:28'),
(43, 'si@123.com', '$2y$10$97oyF0yjOTYweRiLi9AvjuacLiojEb0zOlAPzBBvAb7xG4xRJwQQS', '2023-03-02 13:50:28', '2023-03-02 13:50:28'),
(44, 'si@123.com', '$2y$10$FsMGIPL43HIsOXMRc5acZOGi/Je4aZrh1/inplkIuQ9Sn3/Uh/UU6', '2023-03-02 13:56:02', '2023-03-02 13:56:02'),
(45, 'si@123.com', '$2y$10$49dPmuBaLE1dTH3WZ/omneulGegRuavAgsb9ZtCUKIdt7jXb3gjdm', '2023-03-02 13:56:08', '2023-03-02 13:56:08'),
(46, 'si@123.com', '$2y$10$I0EB27KblR4STp9HHl5Hh./.w5t4mgAeblVYX4S54WkJkFC51Mhbm', '2023-03-02 13:58:09', '2023-03-02 13:58:09'),
(47, 'SI@123.COM', '$2y$10$G6/lY9DUBbHvPtz9CrGboOclHCohXTKiEbVqFdf9O3MIlpn9LruTG', '2023-03-02 13:58:39', '2023-03-02 13:58:39'),
(48, 'SI@123.COM', '$2y$10$wvFGXEZbAj5ImVLQ.XlihOVUzkPpstbLDDHLSjIDUAIDjndjvHdy6', '2023-03-02 14:01:14', '2023-03-02 14:01:14'),
(49, 'si@123.com', '$2y$10$MYe0yGqheHjS98NRFW.K9OOnIyASEo8jcRxlaoTmTtnjB1FtWbEsq', '2023-03-02 14:02:55', '2023-03-02 14:02:55'),
(50, 'si@123.com', '$2y$10$z6nlLTOxvaRBYzvdR7rQnOWvJ8rvDLe7jlHHU4/CynHiRm7WQEO.W', '2023-03-02 14:03:22', '2023-03-02 14:03:22'),
(51, 'si@123.com', '$2y$10$x4XgprzItsdD6tm.VsTR6uF5GQVBUvWOk6D52Zf.kbioOJviKgatq', '2023-03-02 14:04:56', '2023-03-02 14:04:56'),
(52, 'si@123.com', '$2y$10$3Qd0Yk.HiC87g0vG.0Isce7xsJpw8Sjp9SEEXft43G7KqUxnY2obO', '2023-03-02 14:06:32', '2023-03-02 14:06:32'),
(53, 'si@123.com', '$2y$10$KDK3nj48y3AYWHIJwxzDxOrgkxVr1FG3dghBsJTGSVZSx0fC0TIg.', '2023-03-02 14:14:23', '2023-03-02 14:14:23'),
(54, 'si@123.com', '$2y$10$eGht8inSzU0aywOK/Ir.Oew9SA9Lokx7hTeJ4nnu.23IJhAJOf8su', '2023-03-02 14:17:20', '2023-03-02 14:17:20'),
(55, 'jvigneshj612@gmail.com', '$2y$10$5ej0Jd.HiCVUBkFSiYkrcuZaEyjJteA45IeRaWPRvaoNR1llUi23u', '2023-03-03 00:21:36', '2023-03-03 00:21:36'),
(56, 'hi@hii.com', '$2y$10$.wRRpTrhLUBsoTgZ82zG.OQYgzINUwjfvTSaZQ.VK8tWhjjXPjQmy', '2023-03-03 06:30:30', '2023-03-03 06:30:30'),
(57, 'hello@hello.com', '$2y$10$7FflD5ztldQk6vBpzRwMh.Oh7B9lYvk9zJo8YHfxG4BSZ22nx.iT.', '2023-03-03 08:39:15', '2023-03-03 08:39:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
