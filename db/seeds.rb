puts "🌱 Seeding spices..."

# Seed your database here
Answer.delete_all
Question.delete_all
Game.delete_all

game1 = Game.create(title: "Happy game",image_url: "https://media.giphy.com/media/ALalVMOVR8Qw/giphy.gif", description: "Kenya based questions");
game2 = Game.create(title: "Mr. Cute", image_url: "https://thumbs.gfycat.com/EquatorialIckyCat-max-1mb.gif", description: "Random questions");
game3 = Game.create(title: "Mx. Monkey", image_url: "https://thumbs.gfycat.com/FatalInnocentAmericanshorthair-max-1mb.gif", description: "Random questions");
game4 = Game.create(title: "Ms. Zebra", image_url: "https://media2.giphy.com/media/20G9uNqE3K4dRjCppA/source.gif", description: "Javascript");

q1 = Question.create(quiz: "What is the capital city of Kenya?", game_id: game1.id)
# Question 1 answers
Answer.create(value: "Nairobi", correct: true, question_id: q1.id)
Answer.create(value: "Mombasa", correct: false, question_id: q1.id)
Answer.create(value: "Kisumu", correct: false, question_id: q1.id)

q2 = Question.create(quiz: "Who was the first president of Kenya", game_id: game1.id)
# Question 2 answers
Answer.create(value: "Jomo Kenyatta", correct: true, question_id: q2.id)
Answer.create(value: "Daniel Moi", correct: false, question_id: q2.id)
Answer.create(value: "William Ruto", correct: false, question_id: q2.id)

q3 = Question.create(quiz: "When did Kenya gain their independence?", game_id: game1.id)
# Question 3 answers
Answer.create(value: "2000", correct: false, question_id: q3.id)
Answer.create(value: "1964", correct: false, question_id: q3.id)
Answer.create(value: "1963", correct: true, question_id: q3.id)

q4 = Question.create(quiz: "How many colours does a rainbow has?", game_id: game2.id)
# Question 4 answers
Answer.create(value: "42", correct: false, question_id: q4.id)
Answer.create(value: "23", correct: false, question_id: q4.id)
Answer.create(value: "7", correct: true, question_id: q4.id)

q5 = Question.create(quiz: "What is the capital of France?", game_id: game2.id)
# Question 5 answers
Answer.create(value: "New York", correct: false, question_id: q5.id)
Answer.create(value: "London", correct: false, question_id: q5.id)
Answer.create(value: "Paris", correct: true, question_id: q5.id)

q6 = Question.create(quiz: "How many Harry Potter books are there?", game_id: game2.id)
# Question 6 answers
Answer.create(value: "1", correct: false, question_id: q6.id)
Answer.create(value: "7", correct: true, question_id: q6.id)
Answer.create(value: "4", correct: false, question_id: q6.id)

q7 = Question.create(quiz: "Who is CEO of Tesla?", game_id: game3.id)
# Question 7 answers
Answer.create(value: "Bill Gates", correct: false, question_id: q7.id)
Answer.create(value: "Elon musk", correct: true, question_id: q7.id)
Answer.create(value: "Tony Stark", correct: false, question_id: q7.id)

q8 = Question.create(quiz: "The iPhone was created by which company?", game_id: game3.id)
# Question 8 answers
Answer.create(value: "Microsoft", correct: false, question_id: q8.id)
Answer.create(value: "Intel", correct: false, question_id: q8.id)
Answer.create(value: "Apple", correct: true, question_id: q8.id)

q9 = Question.create(quiz: "What is the capital city of Turkey?", game_id: game3.id)
# Question 9 answers
Answer.create(value: "Berlin", correct: true, question_id: q9.id)
Answer.create(value: "france", correct: false, question_id: q9.id)
Answer.create(value: "paris", correct: false, question_id: q9.id)

q10 = Question.create(quiz: "Which of the following keywords is used to define a variable in Javascript?", game_id: game4.id)
# Question 10 answers
Answer.create(value: "var", correct: false, question_id: q10.id)
Answer.create(value: "var and let", correct: true, question_id: q10.id)
Answer.create(value: "let", correct: false, question_id: q10.id)

q11 = Question.create(quiz: "How can a datatype be declared to be a constant type?", game_id: game4.id)
# Question 11 answers
Answer.create(value: "let", correct: false, question_id: q11.id)
Answer.create(value: "con", correct: false, question_id: q11.id)
Answer.create(value: "const", correct: true, question_id: q11.id)

q12 = Question.create(quiz: "Which function is used to serialize an object into a JSON string in Javascript?", game_id: game4.id)
# Question 12 answers
Answer.create(value: "stringify()", correct: true, question_id: q12.id)
Answer.create(value: "convert()", correct: false, question_id: q12.id)
Answer.create(value: "parse()", correct: false, question_id: q12.id)

puts "✅ Done seeding!"
