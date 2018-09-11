
--
-- Dumping data for table `albums`
--
INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(11, 'Dig Your Roots', 6, 4, 'assets/images/artwork/DigYourRoots.jpg'),
(12, 'Double Vision', 27, 1, 'assets/images/artwork/DoubleVison.jpg'),
(13, 'ye', 26, 2, 'assets/images/artwork/ye.jpg'),
(14, 'beerbongs & bentleys', 19, 2, 'assets/images/artwork/bb&bentleys.jpg');

-- --------------------------------------------------------

-- Dumping data for table `artists`

INSERT INTO `artist` (`id`, `name`) VALUES
(25,'Florida Georgia Line'),
(26,'Kanye West'),
(27,'Foreigner'),
(28,'Dierks Bentley');

-- --------------------------------------------------------
-- Dumping data for table `genres`
--

/*INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Rap'),
(4, 'Country');*/

-- --------------------------------------------------------

-- Dumping data for table `Songs`
--

INSERT INTO `Songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(23, 'Smooth', 25, 11, 4, '2:50', 'assets/music/01 Smooth.mp3', 1, 0),
(24, 'Dig Your Roots', 25, 11, 4, '3:34', 'assets/music/02 Dig Your Roots.mp3', 2, 0),
(25, 'Life is a Honeymoon', 25, 11, 4, '3:05', 'assets/music/03 Life Is A Honeymoon.mp3', 3, 0),
(26, 'H.O.L.Y', 25, 11, 4, '3:14', 'assets/music/04 H.O.L.Y.mp3', 4, 0),
(27, 'Island', 25, 11, 4, '2:40', 'assets/music/05 Island.mp3', 5, 0),
(28, 'May We All', 25, 11, 4, '3:46', 'assets/music/06 May We All.mp3', 6, 0),
(29, 'Summerland', 25, 11, 4, '2:58', 'assets/music/07 Summerland.mp3', 7, 0),
(30, 'Lifer', 25, 11, 4, '4:26', 'assets/music/08 Lifer.mp3', 8, 0),
(31, 'Good Girl Bad Boy', 25, 11, 4, '3:51', 'assets/music/09 Good Girl Bad Boy.mp3', 9, 0),
(32, 'Wish You Were On It', 25, 11, 4, '3:04', 'assets/music/10 Wish You Were On It.mp3', 10, 0),
(33, 'God Your Mama and Me', 25, 11, 4, '3:03', 'assets/music/11 God Your Mama And Me.mp3', 11, 0),
(35, 'Music is Healing', 25, 11, 4, '3:31', 'assets/music/12 Music Is Healing.mp3', 12, 0),
(36, 'While He\'s Still Around', 25, 11, 4, '2:54', 'assets/music/13 While He\'s Still Around.mp3', 13, 0),
(37, 'Grow Old', 25, 11, 4, '3:50', 'assets/music/14 Grow Old.mp3', 14, 0),
(38, 'Heatwave', 25, 11, 4, '3:14', 'assets/music/15 Heatwave.mp3', 15, 0),

(39, 'Hot Blooded', 27, 12, 1, '4:28', 'assets/music/01 Hot Blooded.mp3', 1, 0),
(40, 'Blue Morning Blue Day', 27, 12, 1, '3:13', 'assets/music/02 Blue Morning Blue Day.mp3', 2, 0),
(41, 'You\'re All I Am', 27, 12, 1, '3:24', 'assets/music/03 You\'re All I Am.mp3', 3, 0),
(42, 'Back Where You Belong', 27, 12, 1, '3:15', 'assets/music/04 Back Where You Belong.mp3', 4, 0),
(43, 'Love Has Taken Its Toll', 27, 12, 1, '3:31', 'assets/music/05 Love Has Taken Its Toll.mp3', 5, 0),
(44, 'Double Vision', 27, 12, 1, '3:44', 'assets/music/06 Double Vision.mp3', 6, 0),
(45, 'Tramontane (Instrumental)', 27, 12, 1, '3:56', 'assets/music/07 Tramontane (Instrumental).mp3', 7, 0),
(46, 'I Have Waited So Long', 27, 12, 1, '4:07', 'assets/music/08 I Have Waited So Long.mp3', 8, 0),
(47, 'Lonely Children', 27, 12, 1, '3:37', 'assets/music/09 Lonely Children.mp3', 9, 0),
(48, 'Spellbinder', 27, 12, 1, '4:55', 'assets/music/10 Spellbinder.mp3', 10, 0),
(49, 'Hot Blooded [Live Version]', 27, 12, 1, '6:57', 'assets/music/11 Hot Blooded [Live Version].mp3', 11, 0),
(50, '12 Love Maker [Live Version]', 27, 12, 1, '6:48', 'assets/music/12 Love Maker [Live Version].mp3', 12, 0),
(51, 'I Thought About Killing You', 26, 13, 2, '4:34', 'assets/music/01 I Thought About Killing You.mp3', 1, 0),
(52, 'Yikes', 26, 13, 2, '3:08', 'assets/music/02 Yikes.mp3', 2, 0),
(53, 'All Mine', 26, 13, 2, '2:25', 'assets/music/03 All Mine.mp3', 3, 0),
(54, 'Wouldn\'t Leave', 26, 13, 2, '3:25', 'assets/music/04 Wouldn\'t Leave.mp3', 4, 0),
(55, 'No Mistakes', 26, 13, 2, '2:03', 'assets/music/05 No Mistakes.mp3', 5, 0),
(56, 'Ghost Town', 26, 13, 2, '4:31', 'assets/music/06 Ghost Town.mp3', 6, 0),
(57, 'Violent Crimes', 26, 13, 2, '3:35', 'assets/music/07 Violent Crimes.mp3', 7, 0),

(58, 'Paranoid', 19, 14, 2, '3:41', 'assets/music/01 Paranoid.mp3', 1, 0),
(59, 'Spoil My Night', 19, 14, 2, '3:14', 'assets/music/02 Spoil My Night.mp3', 2, 0),
(60, 'Rich & Sad', 19, 14, 2, '3:26', 'assets/music/03 Rich & Sad.mp3', 3, 0),
(61, 'Zack And Codeine', 19, 14, 2, '3:24', 'assets/music/04 Zack And Codeine.mp3', 4, 0),
(62, 'Takin\' Shots', 19, 14, 2, '3:36', 'assets/music/05 Takin\' Shots.mp3', 5, 0),
(63, 'rockstar', 19, 14, 2, '3:38', 'assets/music/06 rockstar.mp3', 6, 0),
(64, 'Over Now', 19, 14, 2, '4:07', 'assets/music/07 Over Now.mp3', 7, 0),
(65, 'Psycho', 19, 14, 2, '3:41', 'assets/music/08 Psycho.mp3', 8, 0),
(66, 'Better Now', 19, 14, 2, '3:51', 'assets/music/09 Better Now.mp3', 9, 0),
(67, 'Ball For Me', 19, 14, 2, '3:26', 'assets/Ball For Memusic/.mp3', 10, 0),
(68, 'Otherside', 19, 14, 2, '3:48', 'assets/music/11 Otherside.mp3', 11, 0),
(69, 'Stay', 19, 14, 2, '3:24', 'assets/music/12 Stay.mp3', 12, 0),
(70, 'Blame It On Me', 19, 14, 2, '4:21', 'assets/music/13 Blame It On Me.mp3', 13, 0),
(71, 'Same Bitches', 19, 14, 2, '3:32', 'assets/music/14 Same Bitches.mp3', 14, 0),
(72, 'Jonestown (Interlude)', 19, 14, 2, '3:32', 'assets/music/15 Jonestown (Interlude).mp3', 15, 0),
(73, 'Explorer', 19, 14, 2, '3:32', 'assets/music/16 92 Explorer.mp3', 16, 0),
(74, 'Candy Paint', 19, 14, 2, '3:32', 'assets/music/17 Candy Paint.mp3', 17, 0),
(75, 'Sugar Wraith', 19, 14, 2, '3:32', 'assets/music/18 Sugar Wraith.mp3', 18, 0),
(76, 'Drunk On A Plane', 28, 8, 4, '4:14', 'assets/music/06 Drunk On A Plane.mp3', 1, 0);








-- --------------------------------------------------------