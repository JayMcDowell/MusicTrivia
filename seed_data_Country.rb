require_relative 'bootstrap_ar'
connect_to 'development'

question_list = [
  [ 'Country', 'Who married movie producer John Leventhal in 1995?', 'Dolly Parton', 'Loretta Lynn', 'Rosanne Cash', 'Tammy Wynette', 'Rosanne Cash' ],
  [ 'Country', 'What Australian country singer appeared on "The Facts Of Life"?', 'Reba McEntire', 'Sherie Austin', 'Amanda McCAdams', 'Lynn Anderson', 'Sherie Austin' ],
  [ 'Country', 'Who originally recorded Garth Brooks hit "The Thunder Rolls"?', 'Tanya Tucker', 'Reba McEntire', 'Trisha Yearwood', 'Tammy Wynette', 'Tanya Tucker' ],
  [ 'Country', 'What country star sang in his 1990 song "Sometimes I thank God for unanswered prayers"?', 'Garth Brooks', 'George Strait', 'Travis Tritt', 'Toby Keith', 'Garth Brooks' ],
  [ 'Country', 'Who was the Dixie Chicks lead singer before Natalie Maines?', 'Laura Lynch', 'Pam Tillis', 'Crystal McCain', 'Janie Fricke', 'Laura Lynch' ],
  [ 'Country', 'Which groups original name was Wildcountry?', 'The Oak Ridge Boys', 'Sugarland', 'Brooks & Dunn', 'Alabama', 'Alabama' ],
  [ 'Country', 'As part of Johnny Cashs "A Boy Named Sue," who wrote the lyrics "Son, this world is rough; And if a mans gonna make it, hes gotta be tough"?', 'Shel Silverstein', 'John Lennon', 'Dylan Thomas', 'Viraj Parikh', 'Shel Silverstein'],
  [ 'Country', 'What was singer Patsy Clines real name?', 'Roberta Streeter', 'Eileen Regina Edwards', 'Kathleen Sears', 'Virginia Patterson Hensley', 'Virginia Patterson Hensley'],
  [ 'Country', 'What bluegrass duo were regulars on the TV show "Beverly Hillbillies"?', 'Pinson & Owens', 'Flatt & Scruggs', 'Casey & Cash', 'Stark & McBrien', 'Flatt & Scruggs'],
  [ 'Country', 'Which Marty Robbins hit tells the story of a west Texas cowboy who falls in love with Feleena at a bar?', 'Dont Worry', 'El Paso', 'She Was Only Seventeen', 'Big Iron', 'El Paso'],
  [ 'Country', 'What city did Glen Campbell sing about, where you could "still hear your sea winds blowing"?', 'Sacramento','Galveston','Houston','Boston', 'Galveston'],
  [ 'Country', 'Who performed on the pilot of Austin City Limits?', 'George Strait', 'Jerry Jeff Walker', 'Willie Nelson', 'Waylon Jennings', 'Willie Nelson'],
  [ 'Country', 'Who replaced William Lee Golden in the Oak Ridge Boys?', 'Steve Wariner', 'TG Sheppard', 'Steve Sanders', 'Razzy Bailey', 'Steve Sanders'],
  [ 'Country', 'What singer was "Lookin For Love (In All The Wrong Places)"?', 'Johnny Cash', 'George Jones', 'Johnny Lee', 'Eddie Rabbitt', 'Johnny Lee'],
  [ 'Country', 'What was the name of Pam Tillis first album?', 'I Fought The Law', 'Voices Carry', 'Beyond the Doll of Cutey', 'Standing in a Field', 'Beyond the Doll of Cutey'],
  [ 'Country', 'What was the first country album to feature five #1 hits?', '"Diamonds and Dirt" by Rodney Crowell', '"Take Me As I Am" by Faith Hill','"Somewhere Down In Texas" by George Strait','"No Fences" by Garth Brooks', '"Diamonds and Dirt" by Rodney Crowell'],
  [ 'Country', 'What year was Dolly Parton born?', '1956', '1946', '1951', '1941', '1946'],
  [ 'Country', 'Which Kenny Chesney hit has the lyrics "If you see her down at a local bar, showing all the signs of a lonely heart"?', '"She Gets That Way"', '"Shes Got It All"', '"Shes Mine"', '"She Thinks My Tractors Sexy"', '"She Gets That Way"'],
  [ 'Country', 'What country star had a biography titled "I Lived To Tell It All"?', 'Johnny Paycheck', 'George Jones', 'George Lindsay', 'George Strait', 'George Jones'],
  [ 'Country', 'What is Shania Twains real name?', 'Eileen Regina Edwards', 'Kathleen Sears', 'Selena Boz', 'Virginia Patterson Hensley', 'Eileen Regina Edwards'],
  [ 'Country', 'What is Garth Brooks real first name?', 'Terrence', 'Trinidad', 'Thomas', 'Troyal', 'Troyal'],
  [ 'Country', 'In Reba McEntires hit "Fancy," she lived on the outskirts of what city?', 'San Francisco', 'New Orleans', 'New York City', 'Tulsa', 'New Orleans'],
]
question_list.each do |quiz_id, query, a, b, c, d, correct_answer|
  Question.create( quiz_id: quiz_id, query: query, a: a, b: b, c: c, d: d, correct_answer: correct_answer )
end