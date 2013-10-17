--
-- Database `db1`
--

-- --------------------------------------------------------

--
-- Table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` tinyint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dump table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `created`) VALUES
(1, 'Article 1', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. [:gallery-1] Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', 1381959656),
(2, 'Article 2', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. [:gallery-2] Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. [:gallery-3] Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 1381959751),
(3, 'Article 3', ' In auctor convallis ultrices. In hac habitasse platea dictumst. Aenean volutpat auctor pulvinar. Donec volutpat pharetra mi, et cursus nunc volutpat eget. Aenean ut nibh sit amet leo posuere mollis eget vestibulum quam. [:gallery-1] Duis eleifend a metus a ultricies. Nulla id lectus laoreet, tempor arcu a, malesuada ipsum. Donec ut orci facilisis, faucibus elit quis, ornare lacus. Pellentesque blandit cursus tellus, sed lacinia augue rhoncus eget. Vivamus consectetur dignissim leo. Pellentesque accumsan tortor nulla. Cras pulvinar vitae lectus sit amet congue. Sed pulvinar posuere sem, sit amet rutrum tortor placerat et.\r\n[:gallery-2]\r\nMorbi vehicula ligula ac varius bibendum. Cras et laoreet metus, quis accumsan erat. Sed aliquam eu arcu ac dictum. Nam ac urna et ligula porta bibendum. Pellentesque accumsan diam a ligula semper, vel vestibulum mauris suscipit. Fusce eget magna nec ipsum scelerisque bibendum. Integer auctor lectus nulla, nec pellentesque odio tincidunt sit amet. [:gallery-4] Maecenas fringilla commodo ante, ac consectetur eros pellentesque eget. Maecenas varius feugiat dolor eget ullamcorper. Nullam sollicitudin, libero non rutrum ultrices, enim quam volutpat eros, sed cursus ligula nulla nec felis. ', 1381959881),
(4, 'Article 4', ' Fusce libero sem, suscipit et diam a, porttitor suscipit dui. Curabitur vel gravida enim, in scelerisque erat. Aenean sollicitudin accumsan elit nec euismod. Aenean eget augue gravida, mattis ligula non, viverra lectus. Nullam et dolor eget tellus cursus aliquet in quis lorem. Nunc tortor nulla, egestas id lacinia eu, fermentum non arcu. Aenean non pulvinar lacus. Aenean sed tincidunt lectus. Duis imperdiet odio non purus eleifend fringilla. Nulla id ullamcorper massa.\r\n\r\nVestibulum sed feugiat libero. Phasellus eros diam, lobortis ut lobortis et, faucibus ac ligula. Vestibulum lorem sem, pulvinar feugiat luctus vestibulum, luctus eu velit. Integer sagittis, nisi at porttitor tincidunt, nulla magna viverra odio, sit amet varius lacus ligula sed urna. Cras nec lectus volutpat, consectetur dui quis, sollicitudin risus. Vestibulum mollis mauris eget elit fermentum commodo. Aliquam erat volutpat. In dapibus posuere nisl sed aliquam. Pellentesque molestie nulla non ornare placerat. Suspendisse mauris dolor, venenatis at varius id, facilisis ac leo. Pellentesque non enim augue. Cras imperdiet, sem at feugiat placerat, leo augue porttitor sem, sed gravida urna lacus eu est. Phasellus ligula tortor, mollis ac lorem in, pulvinar pellentesque eros. ', 1381959960);

-- --------------------------------------------------------

--
-- Table `galleries`
--

CREATE TABLE IF NOT EXISTS `galleries` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dump table `galleries`
--

INSERT INTO `galleries` (`id`, `title`) VALUES
(1, 'Trees'),
(2, 'Flowers'),
(3, 'Grasses'),
(4, 'Bushes');

-- --------------------------------------------------------

--
-- Table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `image_big` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- ДDump table `images`
--

INSERT INTO `images` (`id`, `title`, `gallery_id`, `image_big`, `image_thumb`) VALUES
(1, 'Winnersh Meadows Tree', 1, 'images/big/tree_1.jpg', 'images/thumb/tree_1_thumb.jpg'),
(2, 'Tree enforcement', 1, 'images/big/tree_2.jpg', 'images/thumb/tree_2_thumb.jpg'),
(3, 'Tree', 1, 'images/big/tree_3.jpg', 'images/thumb/tree_3_thumb.jpg'),
(4, 'Teignbridge''s Trees', 1, 'images/big/tree_4.jpg', 'images/thumb/tree_4_thumb.jpg'),
(5, 'Flowers and Red Roses', 2, 'images/big/flower_1.jpg', 'images/thumb/flower_1_thumb.jpg'),
(6, 'Flowers', 2, 'images/big/flower_2.jpg', 'images/thumb/flower_2_thumb.jpg'),
(7, 'Water lily or lotus', 2, 'images/big/flower_3.jpg', 'images/thumb/flower_3_thumb.jpg'),
(8, 'Pink flowers', 2, 'images/big/flower_4.jpg', 'images/thumb/flower_4_thumb.jpg'),
(9, 'Ribbon Grass', 3, 'images/big/grass_1.jpg', 'images/thumb/grass_1_thumb.jpg'),
(10, 'Ornamental Grass', 3, 'images/big/grass_2.jpg', 'images/thumb/grass_2_thumb.jpg'),
(11, 'Monthjanuary Grass', 3, 'images/big/grass_3.jpg', 'images/thumb/grass_3_thumb.jpg'),
(12, 'Fall Landscapes Grass', 3, 'images/big/grass_4.jpg', 'images/thumb/grass_4_thumb.jpg'),
(13, 'Ceratiola ericoides bushes', 4, 'images/big/bush_1.jpg', 'images/thumb/bush_1_thumb.jpg'),
(14, 'Group Of Bushes', 4, 'images/big/bush_2.jpg', 'images/thumb/bush_2_thumb.jpg'),
(15, 'Yellow Bushes', 4, 'images/big/bush_3.jpg', 'images/thumb/bush_3_thumb.jpg'),
(16, 'Echium hierrense bushes', 4, 'images/big/bush_4.jpg', 'images/thumb/bush_4_thumb.jpg');
