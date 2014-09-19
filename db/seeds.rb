require 'digester'

User.create(name: "Devon Bradley", username: "dbradleyfl", password: Digester::Digester.digest("devon1"), gravatar: "dbradleyfl@gmail.com")

Oink.create(message: "Dude... RE-OINK: @DVega", user_id: 1)

Oink.create(message: "I don't follow Joan because he is a dork!", user_id: 1)

Oink.create(message: "I gotta get out of here and go surf!", user_id: 1)

Oink.create(message: "She's kinda hott...", user_id: 1)

Oink.create(message: "Epicccc", user_id: 1)

Oink.create(message: "Oinker is the shit!!", user_id: 1)

Follower.create(user_id: 1 , follower_id: 2)

Follower.create(user_id: 1 , follower_id: 3)

Follower.create(user_id: 1 , follower_id: 4)

User.create(name: "Danny Vega", username: "DVega", password: Digester::Digester.digest("danny2"), gravatar: "dannyevega@gmail.com")

Oink.create(message: "That's sick", user_id: 2)

Oink.create(message: "Dude...", user_id: 2)

Oink.create(message: "Responsive web design is hard.", user_id: 2)

Oink.create(message: "I need some coffee", user_id: 2)

Oink.create(message: "Fuck interpretive dance!!", user_id: 2)

Follower.create(user_id: 2, follower_id: 1)

Follower.create(user_id: 2, follower_id: 4)

User.create(name: "Melissa Porto", username: "mporto", password: Digester::Digester.digest("porto101"), gravatar: "melroman26@gmail.com")

Oink.create(message: "Righttttt", user_id: 3)

Oink.create(message: "I'm the third Oink user ever created!!", user_id: 3)

Oink.create(message: "Cool.", user_id: 3)

Oink.create(message: "That's all we need for MVP bro.", user_id: 3)

Oink.create(message: "My P2 is awesome. Check it out.", user_id: 3)

Follower.create(user_id: 3, follower_id: 1)

Follower.create(user_id: 3, follower_id: 2)

User.create(name: "Joan Torres", username: "Gunga", password: Digester::Digester.digest("imthinkimfunny"), gravatar: "joan.torres@upr.edu")

Oink.create(message: "Why did the chicken cross the road?", user_id: 4)

Oink.create(message: "No no no... we gotta do it this way.", user_id: 4)

Oink.create(message: "Claro que si.", user_id: 4)

Oink.create(message: "Listen to my album.", user_id: 4)

Oink.create(message: "Screw code. Give me a bass.", user_id: 4)

Follower.create(user_id: 4, follower_id: 2)

Follower.create(user_id: 4, follower_id: 3)
