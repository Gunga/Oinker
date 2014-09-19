require 'digester'

User.create(name: "Derek Reeve", username: "dreeve", password: Digester::Digester.digest("dr"), gravatar: "derek@devbootcamp.com")
User.create(name: "Ruskin Constant", username: "im_ruskin_it", password: Digester::Digester.digest("russy"), gravatar: "ruskin.constant+dev@gmail.com")
User.create(name: "Joan Torres", username: "Gunga", password: Digester::Digester.digest("imthinkimfunny"), gravatar: "joan.torres@upr.edu")
User.create(name: "Jay Dave", username: "FUCKeverything", password: Digester::Digester.digest("fuck"), gravatar: "jaycdave@gmail.com")
User.create(name: "Melissa Porto", username: "mporto", password: Digester::Digester.digest("porto101"), gravatar: "melroman26@gmail.com")
User.create(name: "Jess Heron", username: "peace_and_love", password: Digester::Digester.digest("hippylife"), gravatar: "jessbheron@gmail.com")
User.create(name: "Danny Vega", username: "DVega", password: Digester::Digester.digest("danny2"), gravatar: "dannyevega@gmail.com")
User.create(name: "Devon Bradley", username: "dbradleyfl", password: Digester::Digester.digest("devon1"), gravatar: "dbradleyfl@gmail.com")
User.create(name: "Josh Marsh", username: "_jm_", password: Digester::Digester.digest("josh"), gravatar: "josh@devbootcamp.com")




Oink.create(message: "Dude... RE-OINK: @DVega", user_id: 1)
Oink.create(message: "Responsive web design is hard.", user_id: 2)
Oink.create(message: "I love A-ha moments", user_id: 7)
Oink.create(message: "Yeah, but can we work on the technical aspect.", user_id: 6)
Oink.create(message: "I don't fucking know. Fuck.", user_id: 5)
Oink.create(message: "My P2 is awesome. Check it out.", user_id: 3)
Oink.create(message: "Fuck interpretive dance!!", user_id: 2)
Oink.create(message: "Screw code. Give me a bass.", user_id: 4)
Oink.create(message: "Epicccc", user_id: 1)
Oink.create(message: "Dude...", user_id: 2)
Oink.create(message: "They would never do this in Geneva", user_id: 7)
Oink.create(message: "No no no... we gotta do it this way.", user_id: 4)
Oink.create(message: "I'm the third Oink user ever created!!", user_id: 3)
Oink.create(message: "Cool.", user_id: 3)
Oink.create(message: "Why did the chicken cross the road?", user_id: 4)
Oink.create(message: "I don't follow Joan because he is a dork!", user_id: 1)
Oink.create(message: "Ehhh Danny 2 times!! @DVega", user_id: 5)
Oink.create(message: "Listen to my album.", user_id: 4)
Oink.create(message: "Well, from my life experience...", user_id: 6)
Oink.create(message: "I gotta get out of here and go surf!", user_id: 1)
Oink.create(message: "That's all we need for MVP bro.", user_id: 3)
Oink.create(message: "I need some coffee", user_id: 2)
Oink.create(message: "Fuck this, I'm going home.", user_id: 5)
Oink.create(message: "EE is my happy place :)", user_id: 6)
Oink.create(message: "IT'S SIX o' CLOCK!!!", user_id: 7)
Oink.create(message: "She's kinda hott...", user_id: 1)
Oink.create(message: "Righttttt", user_id: 3)
Oink.create(message: "Claro que si.", user_id: 4)
Oink.create(message: "Oinker is the shit!!", user_id: 1)
Oink.create(message: "That's sick", user_id: 2)
Oink.create(message: "Fuck Google Fiber. Maybe if I hold my laptop closer to the ceiling??", user_id: 8)




Follower.create(user_id: 1 , follower_id: 2)
Follower.create(user_id: 1 , follower_id: 3)
Follower.create(user_id: 1 , follower_id: 4)
Follower.create(user_id: 2, follower_id: 1)
Follower.create(user_id: 2, follower_id: 4)
Follower.create(user_id: 2, follower_id: 8)
Follower.create(user_id: 2, follower_id: 6)
Follower.create(user_id: 3, follower_id: 1)
Follower.create(user_id: 3, follower_id: 2)
Follower.create(user_id: 3, follower_id: 5)
Follower.create(user_id: 3, follower_id: 7)
Follower.create(user_id: 4, follower_id: 2)
Follower.create(user_id: 4, follower_id: 3)
Follower.create(user_id: 5, follower_id: 2)
Follower.create(user_id: 5, follower_id: 6)
Follower.create(user_id: 5, follower_id: 1)
Follower.create(user_id: 6, follower_id: 2)
Follower.create(user_id: 6, follower_id: 3)
Follower.create(user_id: 6, follower_id: 1)
Follower.create(user_id: 6, follower_id: 4)
Follower.create(user_id: 7, follower_id: 5)
Follower.create(user_id: 7, follower_id: 4)
Follower.create(user_id: 7, follower_id: 2)
Follower.create(user_id: 8, follower_id: 4)
Follower.create(user_id: 8, follower_id: 3)
Follower.create(user_id: 8, follower_id: 2)









