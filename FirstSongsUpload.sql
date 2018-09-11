
--
-- Dumping data for table `albums`
--
INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(6, 'Rap Hits', 6, 2, 'assets/images/artwork/rap.png'),
(7, 'Rock Hits', 6, 1, 'assets/images/artwork/rock.png'),
(8, 'Country Hits', 6, 4, 'assets/images/artwork/country.png'),
(9, 'Summer Hits', 6, 2, 'assets/images/artwork/summer.png'),
(10, 'Pop Hits', 6, 2, 'assets/images/artwork/pop.png');

-- --------------------------------------------------------

-- Dumping data for table `artists`

INSERT INTO `artist` (`id`, `name`) VALUES
(6,'No Artist'),
(7,'Bad Wolves'),
(8,'Bazzi'),
(9,'Bebe Rexha'),
(11,'Cardi B'),
(12,'Disturbed'),
(13,'Drake'),
(14,'Jonas Blue'),
(15,'Kane Brown'),
(16,'Lauv'),
(17,'Maroon 5'),
(18,'Panic! At the Disco'),
(19,'Post Malone'),
(20,'The Chainsmokers'),
(21,'Sam Hunt'),
(22,'Shinedown'),
(23,'Train'),
(24,'5 Seconds Of Summer');

-- --------------------------------------------------------
-- Dumping data for table `genres`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Rap'),
(4, 'Country');

-- --------------------------------------------------------

-- Dumping data for table `Songs`
--

INSERT INTO `Songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(6, 'Zombie', 7, 7, 1, '4:14', 'assets/music/Zombie.mp3', 1, 0),
(7, 'Mine', 8, 10, 2, '2:14', 'assets/music/Mine.mp3', 1, 4),
(8, 'Meant to Be', 9, 10, 4, '2:44', 'assets/music/Meant to Be.mp3', 1, 0),
(9, 'I Like it', 11, 10, 4, '4:13', 'assets/music/I Like It.mp3', 1, 0),
(10, 'The Sound of Silence', 22, 7, 1, '4:08', 'assets/music/Sound of Silence.mp3', 1, 0),
(11, 'I\'m Upset', 13, 10, 2, '3:34', 'assets/music/Im Upset.mp3', 1, 0),
(12, 'Rise', 14, 9, 2, '3:14', 'assets/music/Rise.mp3', 1, 0),
(13, 'What Ifs', 15, 8, 4, '3:11', 'assets/music/What Ifs.mp3', 1, 0),
(14, 'I Like Me Better', 16, 10, 2, '3:17', 'assets/music/I Like Me Better.mp3', 1, 0),
(15, 'Girls Like You', 17, 9, 2, '3:55', 'assets/music/Girls Like You.mp3', 1, 0),
(16, 'High Hopes', 18, 9, 1, '3:11', 'assets/music/High Hopes.mp3', 1, 0),
(17, 'Better Now', 19, 9, 2, '3:51', 'assets/music/Better Now.mp3', 1, 0),
(18, 'Somebody', 20, 9, 2, '3:43', 'assets/music/Somebody.mp3', 1, 0),
(19, 'Body Like a Backroad', 21, 8, 4, '2:42', 'assets/music/Body Like a Backroad.mp3', 1, 0),
(20, 'Sound of Madness', 22, 7, 1, '3:54', 'assets/music/Sound of Madness.mp3', 1, 0),
(21, 'Drive By', 23, 10, 2, '3:17', 'assets/music/Drive By.mp3', 1, 0),
(22, 'Youngblood', 24, 9, 2, '3:23', 'assets/music/Youngblood.mp3', 1, 0);

-- --------------------------------------------------------