# Add seed data here. Seed your database with `rake db:seed`

User.create(username: "lena1", email: "lena1@gmail.com", password: "hongbu247?")

User.create(username: "Joyce2", email: "joyce2@gmail.com", password: "xingfu54!")

Genre.create(name: "Children")

Genre.create(name: "Mystery")

Genre.create(name: "Art")

Genre.create(name: "Science")

Genre.create(name: "History")

Genre.create(name: "Romance")   

Genre.create(name: "Fantasy")   

Genre.create(name: "Religion") 
    
Genre.create(name: "Cooking")       


Review.create(book_title: "Listen", genre_ids: [1, 7], content: "In the opening pages of Listen, a girl stands on her front porch, her backpack resting squarely on her shoulders. She is surrounded by the din of the city. “When you step out into the big, wild world, sometimes all you hear is . . . NOISE!” narrates an encouraging second-person voice. The girl follows the text’s advice to “stop, close your eyes, and LISTEN,” harnessing her attention to single out each individual sound as she walks. She hears a dog yipping at a car, a crow squawking on a power line, a teakettle whistling from an open window, gravel crunching under feet and much, much more. ", rating: 5, thumbnail: "https://t1.bookpage.com/books/images/6f6a4b34fca8faabe9a9b8c814b9c17a/large.jpg", user_id: 2)

Review.create(book_title: "Marty", genre_ids: [1, 2], content: "Marty is a lot like you and me. He has hobbies, a job and trouble deciding what to wear every day. For the most part, Marty fits in. But Marty is a little bit different, too. You see, he doesn’t exactly come from this planet, and it could be a problem if his true green-skinned self were to be revealed. But when an act of artistic expression leads to uninvited scrutiny, Marty begins to wonder whether he will ever truly belong on Earth. Rachel Noble and Zoey Abbott’s Marty is a charming story of acceptance, friendship and finding home.

You can’t help but like this little Martian. He’s a friendly shade of green with a simple, open face. Thanks to his flair for style and costume design, Marty can be anyone, anywhere, from the construction worker across the street to the skateboarder in the park or the barista behind the coffee shop counter. He lives in a big old tree outside the city that looks so homey and fun, it just might make you consider moving into the backyard.", rating: 5, thumbnail: "https://t1.bookpage.com/books/images/206d4981889390a5a6ee1f93801b722b/large.jpg", user_id: 1)

Review.create(book_title: "Ahmed Aziz’s Epic Year", genre_ids: [1, 2], content: "Ahmed Aziz’s Epic Year marks Hamza as a writer to watch and provides engaging opportunities for readers to discover common ground with Ahmed and with the characters he meets during his epic year. Hamza hints at a sequel when Mrs. Gaarder reveals that she’ll lead a similar exercise in her class next year with a study of three of Shakespeare’s plays. We can only hope this is the case.", rating: 4, thumbnail: "https://t1.bookpage.com/books/images/a2c06ef2e1d864c82c9389b3518085c7/large.jpg", user_id: 1)



