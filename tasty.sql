-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 21 2022 г., 06:25
-- Версия сервера: 5.7.38
-- Версия PHP: 8.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tasty`
--

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `message`, `name`, `email`, `subject`) VALUES
(1, 'halo', 'Лиля', 'melissa.erdman@mail.ru', 'Get in Touch'),
(2, 'tgfutfut', 'kfhyu', 'katekaterine01@gmail.com', 'Get in Touch'),
(3, 'haloo', 'Петров Андрей Павлович', 'katekaterine01@gmail.com', 'Get in Touch'),
(4, 'jgcvhkvhgljubglj', 'Лиля', 'ndndmdmdm@mail.ru', 'Get in Touch'),
(5, 'haallooo', 'Олина', 'melissa.erdman@mail.ru', 'Get in Touch'),
(6, 'Hello, I want to leave the recipe. How should I do it?', 'Prosto Olega', 'melissa.erdman@mail.ru', 'Question'),
(7, 'Hello, I want to leave the recipe. How should I do it?', 'Prosto Olega', 'melissa.erdman@mail.ru', 'Question'),
(8, 'Hello, I want to leave the recipe. How should I do it?', 'Prosto Olega', 'melissa.erdman@mail.ru', 'Question'),
(9, 'Hello, I want to leave the recipe. How should I do it?', 'Prosto Olega', 'melissa.erdman@mail.ru', 'Question'),
(10, 'Hello, I want to leave the recipe. How should I do it?', 'Prosto Olega', 'melissa.erdman@mail.ru', 'Question'),
(11, 'Hello, I want to leave the recipe. How should I do it?', 'Prosto Olega', 'melissa.erdman@mail.ru', 'Question'),
(12, 'Hello, I want to leave the recipe. How should I do it?', 'Prosto Olega', 'melissa.erdman@mail.ru', 'Question'),
(13, 'Hello, I want to leave the recipe. How should I do it?', 'Prosto Olega', 'melissa.erdman@mail.ru', 'Question'),
(14, 'Hello, I want to leave the recipe. How should I do it?', 'Prosto Olega', 'melissa.erdman@mail.ru', 'Question'),
(15, 'Hello, I want to leave the recipe. How should I do it?', 'Prosto Olega', 'melissa.erdman@mail.ru', 'Question'),
(16, 'Hello, I want to leave the recipe. How should I do it?', 'Prosto Olega', 'melissa.erdman@mail.ru', 'Question'),
(17, 'Hello, do you have belyashi with meat?', 'Prosto Tamara', 'tamarochka@mail.ru', 'Belyashi');

-- --------------------------------------------------------

--
-- Структура таблицы `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_needs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_descr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `big_descr` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `category`, `time_needs`, `small_descr`, `big_descr`) VALUES
(1, 'Egg Manchurian', 'Appetizer', '30 Mins', 'Egg Manchurian is an another delicious recipe made by steaming the eggs and then deep frying them, the added sauces at the end nicely coats with the fried eggs and gives nice taste and sourness to the recipe .', 'Break open 4 eggs into a bowl and add required salt, some pepper and mix well. Grease a pan with oil and transfer the egg mixture into that bowl and place it inside an Idli cooker (we can also use rice cooker without adding the cooker weight).\r\n\r\nSteam it for 15-20 minutes.Run a knife through the edges and cut the steamed eggs into desired shape and keep it aside.\r\n\r\nIn a mixing bowl add maida, corn flour, chili powder ,add water and mix well to for a semi thick batter. Coat the cooked eggs and fry it in hot oil. Once they become crispy take it off from the oil and set aside.\r\n\r\nNow in a pan heat oil and add finely chopped ginger, chopped garlic and saute it for a minute until the raw smell is gone.Then add chopped onions and cook for a minute until it turns translucent. Then add bell peppers / Capsicum and cook for a couple of minutes.\r\n\r\nNow its time to add the sauces - chilli sauce, tomato ketchup, Soy sauce and mix well. If you want the recipe to be dry then we can add the fried eggs and mix with the sauces and turn off the heat after a couple of minutes, but if you want little gravy then dissolve corn starch in water and add it to the pan. once it thickens up a bit add the fried eggs and cook for another 2 minutes.\r\nFinally add required salt, some pepper and garnish with chopped spring Onions. '),
(2, 'Pure Vegetable Bowl', 'Appetizer', '20 Mins', 'The best part about this delicious Asian Veggie Bowl is how fast it comes together. Warmed veggies tossed in sweet, spicy, and luscious sauce; piled high in a bowl; and paired with cooling cucumbers, earthy spinach, and hearty brown rice makes for a simple and quick dish that will get those taste buds tingling.', 'Place all the Sauce Ingredients into a small bowl, whisk, set aside.\r\nIn an enamel/ceramic lined Dutch oven, skillet or similar non-stick skillet, add the sliced mushrooms and 1 Tablespoon tamari, sauté for 3 to 5 minutes over medium-high heat to allow the mushrooms to release their liquid.\r\nThen add the sliced bell peppers, carrots, onions, and edamame; sauté until the bell peppers, carrots, and onions have reached the desired tenderness (approx. 3 to 5 minutes – or longer). Add a splash of water if needed to prevent burning.\r\nAdd the sauce, stir constantly and heat on high until it thickens, continue to stir constantly for several minutes. You want to make sure the cornstarch is cooked.  When the veggies are completely coated in the sauce, about one minute.\r\nRemove from heat, create the stir fry bowl, by laying down a bed of steamed rice, the Veggie Stir Fry, freshly sliced cucumbers and a bed of baby spinach.Sprinkle with some sliced green onions, toasted sesame seeds, and a small dollop of sriracha sauce or chili garlic sauce.'),
(3, 'Egg Masala Ramen', 'Main Dish', '30 Mins', 'Easy homemade chicken ramen, with a flavorful broth, roasted chicken, fresh veggies, lots of noodles, and a soft cooked egg. Inspired by traditional Japanese ramen, but on the table in under an hour.', 'COOK THE CHICKEN:\nPreheat the oven to 375℉. Season the chicken generously with salt and pepper.\nMelt the butter in a large oven-safe skillet over medium heat. Add the chicken, skin-side down, and cook until the skin is golden brown and releases easily from the pan, about 5-7 minutes. Flip the chicken over and cook for another 4-5 minutes, until golden.\nTransfer the skillet to the oven and roast for 15-20 minutes, until the chicken is cooked through. Remove from the oven, transfer the chicken to a plate, and cover with foil until ready to serve.\nMAKE THE RAMEN BROTH:\nHeat the oil in a large pot over medium heat until shimmering. Add the garlic and ginger, and cook for a few minutes until softened. Add the soy sauce and mirin, and stir to combine. Cook for another minute.\nAdd the stock, cover, and bring to a boil. Remove the lid, and let simmer uncovered for 5 minutes, then add the dried mushrooms. Simmer gently for another 10 minutes, and season with salt, to taste.\nMAKE THE SOFT-BOILED EGGS:\nFill a pot with enough water to cover the eggs, and bring to a boil. Gently lower the eggs (still cold from the fridge) into the boiling water, and let simmer for 7 minutes (for a slightly-runny yolk) or 8 minutes (for a soft, but set-up yolk).\nMeanwhile, fill a large bowl with ice water. When the timer finishes, transfer the eggs to the ice bath to stop the cooking process. Wait at least 5 minutes, or until cool enough to handle, then carefully peel away the shell and slice in half, lengthwise. Set aside until ready to serve.\nASSEMBLE THE RAMEN BOWLS:\nMeanwhile, chop the scallions and jalapeño (if using). Slice the chicken into thin pieces. Set aside. When the eggs finish cooking, add the ramen noodles to the boiling water.\nCook for 2-3 minutes, until soft, then divide the noodles into two large bowls. Add the sliced chicken and the ramen broth. Top with the fresh scallions, jalapeño, and the soft boiled egg. Serve immediately. Enjoy!!'),
(4, 'Tiger prawns', 'Appetizer', '60 Mins', 'Happy Chinese (or Lunar) New Year! My favourite thing about Chinese New Year is that my hubby will whip up a bunch of delicious Chinese dishes. This year he surprised me with my favourite perfectly cooked, juicy, tender tiger prawns in delicious garlic ginger soy sauce. So, of course I had to photograph and share his masterpiece recipe with you.', 'Heat oil in a large skillet over medium-high heat. Add ginger and garlic and cook for 30 seconds until fragrant. Add tiger prawns and stir to coat with oil. Continue to cook for 1-2 minutes, stirring constantly to ensure even cooking on all sides.\r\nStir in cooking wine and continue to stir for 15 seconds. Stir in soy sauce and reduce heat to medium. Cook for 1 minute, stirring occasionally.\r\nStir in sugar, pepper (optional) and water. Turn heat to high, cover and cook for 2 minutes.\r\nTurn heat down to low, give the prawns a final stir, ensuring that the sauce is coating prawns completely. Remove from heat. (Note: prawns will be done once they are evenly coloured and have shrunk in size but are no longer getting smaller).\r\nServe with some cilantro on top.'),
(5, 'Greek salad', 'Salad', '20 Mins', 'Quality Greek kalamata olives and creamy feta cheese, made from sheep’s milk, are a must in this salad. And the cheese is never crumbled, but served in large chunks or blocks crowning the beautiful fresh salad!\r\n\r\nThe dressing is as simple as they come, a splash of good extra virgin olive oil and citrus (a little red wine vinegar or lemon juice).', 'Cut the red onion in half and thinly slice into half moons. (If you want to take the edge off, place the sliced onions in a solution of iced water and vinegar for a bit before adding to the salad. I do this in the video).\r\nCut the tomatoes into wedges or large chunks (I sliced some into rounds and cut the rest in wedges).\r\nCut the partially peeled cucumber in half length-wise, then slice into thick halves (at least ½\" in thickness)\r\nThinly slice the bell pepper into rings.\r\nPlace everything in a large salad dish. Add a good handful of pitted kalamata olives.\r\nSeason very lightly with kosher salt (just a pinch) and a bit of dried oregano.\r\nPour the olive oil and red wine vinegar all over the salad. Give everything a very gentle toss to mix (do NOT over mix, this salad is not meant to be handled too much).\r\nNow add the the feta blocks on top and add a sprinkle more of dried oregano.\r\nServe with crusty bread.'),
(6, 'Soba noodles', 'Second dish', '20 Mins', 'When we talk about where to go if we’re eating out, our favorite spots will almost always be Asian cuisine. Thai, Vietnamese, Korean, and of course Japanese meals are the ultimate tickler to our taste buds.\r\n\r\nWhen we go out to eat, we don’t even think about how complicated a dish might be. But when we cook at home, you can bet your chopstick that simplicity is a big part of our dinner-making decisions.', 'Bring a large pot of water to a boil and cook the soba noodles for 4-5 minutes or just until tender, stirring occasionally so the noodles don\'t clump. Drain in a colander and rinse well under cold water, tossing to remove the starch. \r\nWhile the noodles are cooking, in a medium bowl, whisk together the soy sauce, sesame oil, rice vinegar, sugar, and black pepper. Set aside.\r\nHeat a large skillet over medium-high heat. Add the canola oil and heat until shimmering then add the chopped green onions. Cook, stirring, for 15 to 30 seconds or until fragrant.\r\nAdd the soy and sesame mixture and cook for 30 seconds, Add the noodles and toss until the noodles are heated through. Add the remaining minced green onion and half of the sesame seeds. Garnish with the remaining seeds and serve warm or at room temperature. '),
(7, 'Gyudon', 'Second dish', '120 Mins', 'One of my absolute favorite lunch options, however, was a Japanese place that served the dish we’re talking about today: Gyudon.\r\n\r\nGyudon is basically a dish of thinly sliced fatty beef, cooked in a slightly sweet mixture of mirin and soy sauce and served over rice. Sake is also sometimes added for extra flavor. At the place I went to in Beijing, the would serve it piping hot with a raw egg yolk on top.', 'Heat 2 tablespoons oil in a large skillet over medium high heat, and cook the sliced onions for about 10 minutes, stirring often.\r\nAdd the beef and sugar, and cook until the beef is slightly browned. Add the mirin, soy sauce, and stock. Bring to a simmer, and cook for about 10-15 minutes to reduce the stock into a thin sauce. Taste for seasoning, and add a little more soy sauce if needed.\r\nMeanwhile, heat another couple tablespoons of oil in a cast iron or non-stick skillet. Cook the eggs sunny-side up. You can cook them in batches if needed. The yolks should still be runny!\r\nWhen the beef is done simmering, divide the rice among 4 bowls, and top with the beef and an egg for each bowl. Garnish with chopped scallion and toasted sesame seeds, if using.'),
(8, 'Chawanmushi', 'Main Dish', '50 Mins', 'Chawanmushi is a classic Japanese savory custard that’s steamed and served in a delicate cup. Tender chicken pieces, colorful kamaboko fish cake, and shimeji mushrooms are draped in a smooth and silky custard seasoned with dashi soup stock. Learn how to make this famous appetizer for a true Japanese home cooking experience.', 'Bring the water in the pot to a boil again. Once the water starts boiling, reduce the heat to the lowest setting. Carefully place the cups with their lids on in the hot water and cover the pot, leaving the pot lid slightly ajar. Gently cook for 20 minutes on the lowest heat. If you omit the chicken, the cooking time should be only 15 minutes (depending on how much custard mixture is in the cups). Tip: The simmering water should be 176-194ºF (80-90ºC). Avoid boiling the custard mixture or the finished custard will not be smooth.\r\nTo check if the chawanmushi is done, insert a skewer in the center of the steamed custard; if clear liquid comes out, it\'s done. Or, tilt the cup to see if the mixture is runny or not; if the custard is set, it\'s done. Carefully remove the cups from the hot water. \r\nCover the cups with their lids and serve warm.\r\n'),
(9, 'Funchosa with shrimp', 'Salad', '30 Mins', 'Funchoza with shrimp and vegetables is a light, aromatic and rich dish, it can be served warm or cold. It is very simple and quick to prepare, take any size shrimp for cooking. This dish is perfect for all lovers of light food and those who are crazy about seafood, dressing nourishes vegetables and noodles with a unique aroma and oriental taste.', 'Boil the funchoza according to the instructions indicated on the package, because noodles can be of different and different cooking times, some need only be filled with boiling water. Drain and let cool slightly.\r\nCut the vegetables into strips and add to the noodles.\r\nFor the sauce, mix olive oil, soy sauce, garlic and finely chopped chili peppers. Mix well.\r\nSeason vegetables with noodles with dressing, mix and let stand for several minutes.\r\nBoil the shrimp until cooked in salted water, the cooking time will depend on the size of the shrimp, this is about 3-7 minutes, you can also add bay leaf and peppercorns. Peel off the shell, add to the rest of the ingredients and mix.\r\nSprinkle the dish with sesame seeds and serve.\r\n'),
(10, 'Tofu', 'Main Dish', '110 Mins', 'A meatless variation of the traditional dish from Laos.', 'Drain the tofu and gently crumble with your hands, do not crumble too fine. Set aside. Heat the oil in a non-stick skillet on medium heat and add shallot, ginger and lemongrass. Stir and cook until fragrant. Adjust heat if necessary. Do not let it get dark. Add tofu and gently stir to combine. Raise heat to medium-high and continue to stir. Continue to cook the tofu until most of the moisture evaporates and it begins to slightly brown around the edges. Add gochujang, fish sauce, sugar and lime juice. Continue to cook on low heat and stir to combine all ingredients in the skillet. Remove the skillet from the heat and quickly toss with scallion, mint, cilantro and fresh chilies. Prepare a serving platter with steamed jasmine rice, tofu mixture, jicama wraps, cucumber and remaining fresh herbs. Garnish with fresh lime wedges. Serve immediately.'),
(13, 'Tiramisu Layer Cake', 'Appetizer', '30 Mins', 'This is a fabulous recipe that is sure to impress! It looks and tastes like a much more difficult cake. It is a wonderful indulgence! (This cake was much easier for me to make the 2nd time around when I knew what to expect.)', 'Preheat oven to 350°F Grease and flour 3 (9-inch) round pans. Prepare the cake mix according to package directions. Divide two thirds of batter between 2 pans. Stir instant coffee into remaining batter; pour into remaining pan. Bake in the preheated oven for 20-25 minutes, or until a toothpick inserted into the center of the cake comes out clean. Let cool in pan for 10 minutes, then turn out onto a wire rack and cool completely. In a measuring cup, combine brewed coffee and 3 tablespoons Kahlua; set aside. To make the filling: In a small bowl, using an electric mixer set on low speed, combine mascarpone, 1/2 cup powdered sugar and 2 tablespoons Kahlua; beat just until smooth. Cover with plastic wrap and refrigerate. To make the frosting: In a medium bowl, using an electric mixer set on medium-high speed, beat the cream, 1/4 cup powdered sugar and 2 tablespoons Kahlua until stiff. Fold 1/2 cup of cream mixture into filling mixture. To assemble the cake: Place one plain cake layer on a serving plate. Using a th');

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `tag`) VALUES
(1, 'Dinner'),
(2, 'Main'),
(3, 'Chicken'),
(4, 'Dragon'),
(5, 'Phoenix'),
(6, 'Appetizer'),
(7, 'Egg'),
(8, 'Prawn'),
(9, 'Salad'),
(10, 'Soba'),
(11, 'Funchosa'),
(12, 'Shrimp'),
(13, 'Mushroom'),
(14, 'Vegetables'),
(15, 'Second');

-- --------------------------------------------------------

--
-- Структура таблицы `tags_recipes`
--

CREATE TABLE `tags_recipes` (
  `id` int(11) NOT NULL,
  `recipes_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags_recipes`
--

INSERT INTO `tags_recipes` (`id`, `recipes_id`, `tags_id`) VALUES
(1, 1, 6),
(2, 1, 7),
(3, 1, 14),
(4, 2, 14),
(5, 2, 6),
(6, 3, 7),
(7, 3, 2),
(8, 3, 14),
(9, 3, 1),
(10, 4, 6),
(11, 4, 8),
(12, 5, 14),
(13, 5, 9),
(14, 6, 10),
(15, 6, 15),
(16, 6, 7),
(17, 6, 1),
(18, 6, 14),
(19, 7, 7),
(20, 7, 1),
(21, 7, 15),
(22, 7, 14),
(23, 8, 2),
(24, 8, 13),
(25, 8, 14),
(26, 9, 11),
(27, 9, 12),
(28, 9, 1),
(29, 9, 9),
(30, 13, 6);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags_recipes`
--
ALTER TABLE `tags_recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipes_id` (`recipes_id`),
  ADD KEY `tags_id` (`tags_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `tags_recipes`
--
ALTER TABLE `tags_recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tags_recipes`
--
ALTER TABLE `tags_recipes`
  ADD CONSTRAINT `tags_recipes_ibfk_1` FOREIGN KEY (`recipes_id`) REFERENCES `recipes` (`id`),
  ADD CONSTRAINT `tags_recipes_ibfk_2` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
