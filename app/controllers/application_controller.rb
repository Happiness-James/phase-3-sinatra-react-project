class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
#all games
  get "/game" do
    games = Game.all 
    games.to_json
  end  
#get a game and the question in it
  get '/game/:id' do
    game = Game.find(params[:id])
    questions = game.questions.map do |q| 
      {
        question: q,
        answers: q.answers
      }
    end

    {
      questions: questions
    }.to_json

  end

  #post a game
  post "/game" do
    game = Game.create(
      title: params[:title],
      image_url: params[:image_url],
      description: params[:description]
    )

    question = Question.create(params)
    Answer.create(question, answerParams)
    Answer.create(question, answerParams)



    game.save()
    {
      "Message": "game created successfully",
      "Status": "HTTP_200_OK"
  }.to_json()
  end 
  
  #post questions
#delete a game
  delete "/game/:id" do 
    game = Game.find_by(id: params[:id])
    game.destroy
    {
      "message":"Successfully Delete Game #{params[:id]}",
      "Status":"HTTP_Status_OK"
    }.to_json()
  end
end
