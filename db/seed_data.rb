require_relative 'bootstrap_ar'
connect_to 'development'

# Question.create( quiz_id: '60s', query: 'What British Invasion act had the song "When I Get Home"?', a: 'The Hollies', b: 'The Rolling Stones', c: 'The Beatles', d: 'The Dave Clark Five', correct_answer: 'The Beatles' )
# Question.create( quiz_id: '60s', query: 'What Monkee had writing credits on their debut album?', a: 'Davy Jones', b: 'Micky Dolenz', c: 'Peter Tork', d: 'Michael Nesmith', correct_answer: 'Michael Nesmith' )


question_list = [
  ]
question_list.each do |quiz_id, query, a, b, c, d, correct_answer|
  Question.create( quiz_id: quiz_id, query: query, a: a, b: b, c: c, d: d, correct_answer: correct_answer )
end