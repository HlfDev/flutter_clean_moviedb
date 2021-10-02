const similarMoviesMock = """ {
"page": 1,
"results": [
{
"adult": false,
"backdrop_path": "/7PR2yMwXuXelAcp3qpJ3isZCdd0.jpg",
"genre_ids": [
12,
28,
53,
878
],
"id": 563,
"title": "Starship Troopers",
"original_language": "en",
"original_title": "Starship Troopers",
"overview": "Set in the future, the story follows a young soldier named Johnny Rico and his exploits in the Mobile Infantry. Rico's military career progresses from recruit to non-commissioned officer and finally to officer against the backdrop of an interstellar war between mankind and an arachnoid species known as the Bugs.",
"popularity": 21.915,
"poster_path": "/cxCmv23O7p3hyHwqoktHYkZcGsY.jpg",
"release_date": "1997-11-07",
"video": false,
"vote_average": 6.949,
"vote_count": 3514
},
{
"adult": false,
"backdrop_path": "/4lr2VqOcw9YROMnOWoHtUR9xGxA.jpg",
"genre_ids": [
27,
35
],
"id": 747,
"title": "Shaun of the Dead",
"original_language": "en",
"original_title": "Shaun of the Dead",
"overview": "Shaun lives a supremely uneventful life, which revolves around his girlfriend, his mother, and, above all, his local pub. This gentle routine is threatened when the dead return to life and make strenuous attempts to snack on ordinary Londoners.",
"popularity": 21.691,
"poster_path": "/dgXPhzNJH8HFTBjXPB177yNx6RI.jpg",
"release_date": "2004-04-09",
"video": false,
"vote_average": 7.526,
"vote_count": 6452
},
{
"adult": false,
"backdrop_path": "/mtaqzndq6KJpWBdgLmnYR3Ap2rk.jpg",
"genre_ids": [
28,
80,
878,
53
],
"id": 754,
"title": "Face/Off",
"original_language": "en",
"original_title": "Face/Off",
"overview": "Sean Archer, a very tough, rugged FBI Agent. Who is still grieving for his dead son Michael. Archer believes that his son's killer is his sworn enemy, a very powerful criminal, Castor Troy. One day, Archer has finally cornered Castor, however, their fight has knocked out Troy cold. As Archer finally breathes easy over the capture of his enemy, he finds out that Troy has planted a bomb that will destroy the entire city of Los Angeles and all of its inhabitants. Unfortunately the only other person who knows its location is Castor's brother Pollux, and he refuses to talk. The solution, a special operation doctor that can cut off people's faces, and can place a person's face onto another person. Archer undergoes one of those surgeries to talk to Pollux. However, Castor Troy somehow regains consciousness and now wants revenge on Archer for taking his face. Not only is Troy ruining Archer's mission, but his personal life as well. Archer must stop Troy again. This time, it's personal.",
"popularity": 26.246,
"poster_path": "/aYZDYdiMym5xEkSs4BrJMXFdZ9g.jpg",
"release_date": "1997-06-27",
"video": false,
"vote_average": 6.988,
"vote_count": 3923
},
{
"adult": false,
"backdrop_path": "/aXKUodFZfaMMm2nM4rdekrNgvE2.jpg",
"genre_ids": [
12,
18,
37
],
"id": 581,
"title": "Dances with Wolves",
"original_language": "en",
"original_title": "Dances with Wolves",
"overview": "Wounded Civil War soldier, John Dunbar tries to commit suicide—and becomes a hero instead. As a reward, he's assigned to his dream post, a remote junction on the Western frontier, and soon makes unlikely friends with the local Sioux tribe.",
"popularity": 16.992,
"poster_path": "/cvaBVpS0GzKqBd63pFT8f1E8OKv.jpg",
"release_date": "1990-03-30",
"video": false,
"vote_average": 7.851,
"vote_count": 3093
},
{
"adult": false,
"backdrop_path": "/4NsQl44oXVMiuIM9t7ZsVgYzOkv.jpg",
"genre_ids": [
53,
9648
],
"id": 591,
"title": "The Da Vinci Code",
"original_language": "en",
"original_title": "The Da Vinci Code",
"overview": "A murder in Paris’ Louvre Museum and cryptic clues in some of Leonardo da Vinci’s most famous paintings lead to the discovery of a religious mystery. For 2,000 years a secret society closely guards information that — should it come to light — could rock the very foundations of Christianity.",
"popularity": 26.007,
"poster_path": "/6jexEWBXepwB1ZLpCEllI04Agrb.jpg",
"release_date": "2006-05-17",
"video": false,
"vote_average": 6.721,
"vote_count": 7405
},
{
"adult": false,
"backdrop_path": "/ynJwGLbjx9ypfkHoDOMbc0IOIti.jpg",
"genre_ids": [
53,
878,
9648,
10749
],
"id": 782,
"title": "Gattaca",
"original_language": "en",
"original_title": "Gattaca",
"overview": "In a future society in the era of indefinite eugenics, humans are set on a life course depending on their DNA. Young Vincent Freeman is born with a condition that would prevent him from space travel, yet is determined to infiltrate the GATTACA space program.",
"popularity": 17.713,
"poster_path": "/eSKr5Fl1MEC7zpAXaLWBWSBjgJq.jpg",
"release_date": "1997-09-07",
"video": false,
"vote_average": 7.5,
"vote_count": 4767
},
{
"adult": false,
"backdrop_path": "/icmmSD4vTTDKOq2vvdulafOGw93.jpg",
"genre_ids": [
28,
878
],
"id": 603,
"title": "The Matrix",
"original_language": "en",
"original_title": "The Matrix",
"overview": "Set in the 22nd century, The Matrix tells the story of a computer hacker who joins a group of underground insurgents fighting the vast and powerful computers who now rule the earth.",
"popularity": 66.537,
"poster_path": "/f89U3ADr1oiB1s9GkdPOEpXUk5H.jpg",
"release_date": "1999-03-30",
"video": false,
"vote_average": 8.162,
"vote_count": 19941
},
{
"adult": false,
"backdrop_path": "/sDxCd4nt3eR4qOCW1GoD0RabQtq.jpg",
"genre_ids": [
12,
28,
53,
878
],
"id": 604,
"title": "The Matrix Reloaded",
"original_language": "en",
"original_title": "The Matrix Reloaded",
"overview": "Six months after the events depicted in The Matrix, Neo has proved to be a good omen for the free humans, as more and more humans are being freed from the matrix and brought to Zion, the one and only stronghold of the Resistance.  Neo himself has discovered his superpowers including super speed, ability to see the codes of the things inside the matrix and a certain degree of pre-cognition. But a nasty piece of news hits the human resistance: 250,000 machine sentinels are digging to Zion and would reach them in 72 hours. As Zion prepares for the ultimate war, Neo, Morpheus and Trinity are advised by the Oracle to find the Keymaker who would help them reach the Source.  Meanwhile Neo's recurrent dreams depicting Trinity's death have got him worried and as if it was not enough, Agent Smith has somehow escaped deletion, has become more powerful than before and has fixed Neo as his next target.",
"popularity": 53.44,
"poster_path": "/8xEVAe84zlL9rkfYT6dZXero4KK.jpg",
"release_date": "2003-05-15",
"video": false,
"vote_average": 6.986,
"vote_count": 8168
},
{
"adult": false,
"backdrop_path": "/533xAMhhVyjTy8hwMUFEt5TuDfR.jpg",
"genre_ids": [
12,
28,
53,
878
],
"id": 605,
"title": "The Matrix Revolutions",
"original_language": "en",
"original_title": "The Matrix Revolutions",
"overview": "The human city of Zion defends itself against the massive invasion of the machines as Neo fights to end the war at another front while also opposing the rogue Agent Smith.",
"popularity": 46.107,
"poster_path": "/fgm8OZ7o4G1G1I9EeGcb85Noe6L.jpg",
"release_date": "2003-11-05",
"video": false,
"vote_average": 6.671,
"vote_count": 7312
},
{
"adult": false,
"backdrop_path": "/pE3dLJJ55Y2eiO5s7wYe9J3qS63.jpg",
"genre_ids": [
18
],
"id": 615,
"title": "The Passion of the Christ",
"original_language": "en",
"original_title": "The Passion of the Christ",
"overview": "A graphic portrayal of the last twelve hours of Jesus of Nazareth's life.",
"popularity": 53.164,
"poster_path": "/2C9vyK6leWDb2ds65R7uIwSmh8V.jpg",
"release_date": "2004-02-25",
"video": false,
"vote_average": 7.4,
"vote_count": 3120
},
{
"adult": false,
"backdrop_path": "/Aw0z8bUhGljT0ots6udf1MTLEMi.jpg",
"genre_ids": [
18,
80
],
"id": 627,
"title": "Trainspotting",
"original_language": "en",
"original_title": "Trainspotting",
"overview": "Heroin addict Mark Renton stumbles through bad ideas and sobriety attempts with his unreliable friends -- Sick Boy, Begbie, Spud and Tommy. He also has an underage girlfriend, Diane, along for the ride. After cleaning up and moving from Edinburgh to London, Mark finds he can't escape the life he left behind when Begbie shows up at his front door on the lam, and a scheming Sick Boy follows.",
"popularity": 15.783,
"poster_path": "/6UTzw3kipgTYAJCX8GExoXzcVOx.jpg",
"release_date": "1996-02-23",
"video": false,
"vote_average": 7.979,
"vote_count": 7683
},
{
"adult": false,
"backdrop_path": "/3fChciF2G1wXHsyTfJD9y7uN6Il.jpg",
"genre_ids": [
27,
18,
14
],
"id": 628,
"title": "Interview with the Vampire",
"original_language": "en",
"original_title": "Interview with the Vampire",
"overview": "A vampire relates his epic life story of love, betrayal, loneliness, and dark hunger to an over-curious reporter.",
"popularity": 19.232,
"poster_path": "/2162lAT2MP36MyJd2sttmj5du5T.jpg",
"release_date": "1994-11-11",
"video": false,
"vote_average": 7.364,
"vote_count": 4329
},
{
"adult": false,
"backdrop_path": "/qAvou7F5P4VcIR72JzzrnKEQSN3.jpg",
"genre_ids": [
12,
14,
10751
],
"id": 630,
"title": "The Wizard of Oz",
"original_language": "en",
"original_title": "The Wizard of Oz",
"overview": "Young Dorothy finds herself in a magical world where she makes friends with a lion, a scarecrow and a tin man as they make their way along the yellow brick road to talk with the Wizard and ask for the things they miss most in their lives. The Wicked Witch of the West is the only thing that could stop them.",
"popularity": 44.279,
"poster_path": "/bSA6DbAC5gdkaooU164lQUX6rVs.jpg",
"release_date": "1939-08-15",
"video": false,
"vote_average": 7.6,
"vote_count": 4275
},
{
"adult": false,
"backdrop_path": "/yX1IsNlhVnqkSD6XBXnVNKOQ6WL.jpg",
"genre_ids": [
18,
878,
12
],
"id": 644,
"title": "A.I. Artificial Intelligence",
"original_language": "en",
"original_title": "A.I. Artificial Intelligence",
"overview": "David, a robotic boy—the first of his kind programmed to love—is adopted as a test case by a Cybertronics employee and his wife. Though he gradually becomes their child, a series of unexpected circumstances make this life impossible for David. Without final acceptance by humans or machines, David embarks on a journey to discover where he truly belongs, uncovering a world in which the line between robot and machine is both vast and profoundly thin.",
"popularity": 18.867,
"poster_path": "/wnUAcUrMRGPPZUDroLeZhSjLkuu.jpg",
"release_date": "2001-06-29",
"video": false,
"vote_average": 7.02,
"vote_count": 4863
},
{
"adult": false,
"backdrop_path": "/srgq7bzZsuDw7NoGXdazRXp7Hl6.jpg",
"genre_ids": [
12,
28,
53
],
"id": 646,
"title": "Dr. No",
"original_language": "en",
"original_title": "Dr. No",
"overview": "In the film that launched the James Bond saga, Agent 007 battles mysterious Dr. No, a scientific genius bent on destroying the U.S. space program. As the countdown to disaster begins, Bond must go to Jamaica, where he encounters beautiful Honey Ryder, to confront a megalomaniacal villain in his massive island headquarters.",
"popularity": 29.793,
"poster_path": "/w9ph5cUfGbw41WXt7yuXsWeN2TV.jpg",
"release_date": "1962-10-07",
"video": false,
"vote_average": 6.997,
"vote_count": 2566
},
{
"adult": false,
"backdrop_path": "/8uNjWHsSW3TSOWDU4EY76H5MzAG.jpg",
"genre_ids": [
28,
53,
12
],
"id": 657,
"title": "From Russia with Love",
"original_language": "en",
"original_title": "From Russia with Love",
"overview": "Agent 007 is back in the second installment of the James Bond series, this time battling a secret crime organization known as SPECTRE. Russians Rosa Klebb and Kronsteen are out to snatch a decoding device known as the Lektor, using the ravishing Tatiana to lure Bond into helping them. Bond willingly travels to meet Tatiana in Istanbul, where he must rely on his wits to escape with his life in a series of deadly encounters with the enemy",
"popularity": 23.943,
"poster_path": "/zx4V17FP8oclNvOpTgs2iCCtiYk.jpg",
"release_date": "1963-10-11",
"video": false,
"vote_average": 7.08,
"vote_count": 2082
},
{
"adult": false,
"backdrop_path": "/lh65Y0sUQcRh5UVVgnTOfMUbN2c.jpg",
"genre_ids": [
12,
28,
53
],
"id": 658,
"title": "Goldfinger",
"original_language": "en",
"original_title": "Goldfinger",
"overview": "Special agent 007 comes face to face with one of the most notorious villains of all time, and now he must outwit and outgun the powerful tycoon to prevent him from cashing in on a devious scheme to raid Fort Knox -- and obliterate the world's economy.",
"popularity": 21.355,
"poster_path": "/knGY8IxwAKXiWXsPbYbhQWqiQCK.jpg",
"release_date": "1964-09-20",
"video": false,
"vote_average": 7.345,
"vote_count": 2603
},
{
"adult": false,
"backdrop_path": "/j5gi60OUwOeHHfDssa855c5LSJ6.jpg",
"genre_ids": [
27
],
"id": 2662,
"title": "House of 1000 Corpses",
"original_language": "en",
"original_title": "House of 1000 Corpses",
"overview": "Two teenage couples traveling across the backwoods of Texas searching for urban legends of serial killers end up as prisoners of a bizarre and sadistic backwater family of serial killers.",
"popularity": 17.657,
"poster_path": "/zEAVm1zpjkk4XFL2i5EZehkEgkH.jpg",
"release_date": "2003-04-11",
"video": false,
"vote_average": 6.184,
"vote_count": 1115
},
{
"adult": false,
"backdrop_path": "/ust0K60AYegrKkE34ONo66r7Hfx.jpg",
"genre_ids": [
12,
10751,
14
],
"id": 2454,
"title": "The Chronicles of Narnia: Prince Caspian",
"original_language": "en",
"original_title": "The Chronicles of Narnia: Prince Caspian",
"overview": "One year after their incredible adventures in the Lion, the Witch and the Wardrobe, Peter, Edmund, Lucy and Susan Pevensie return to Narnia to aid a young prince whose life has been threatened by the evil King Miraz. Now, with the help of a colorful cast of new characters, including Trufflehunter the badger and Nikabrik the dwarf, the Pevensie clan embarks on an incredible quest to ensure that Narnia is returned to its rightful heir.",
"popularity": 45.611,
"poster_path": "/qxz3WIyjZiSKUhaTIEJ3c1GcC9z.jpg",
"release_date": "2008-05-15",
"video": false,
"vote_average": 6.596,
"vote_count": 5025
},
{
"adult": false,
"backdrop_path": "/2GB3sdsWn3drlkwGMMNQ3KFNbIV.jpg",
"genre_ids": [
14,
28,
12,
10751
],
"id": 2486,
"title": "Eragon",
"original_language": "en",
"original_title": "Eragon",
"overview": "In his homeland of Alagaesia, a farm boy happens upon a dragon's egg -- a discovery that leads him on a predestined journey where he realized he's the one person who can defend his home against an evil king.",
"popularity": 15.276,
"poster_path": "/mNu6QLUnKqPIjRA3pgEb5dkJye6.jpg",
"release_date": "2006-12-14",
"video": false,
"vote_average": 5.038,
"vote_count": 2634
}
],
"total_pages": 500,
"total_results": 10000
}""";
