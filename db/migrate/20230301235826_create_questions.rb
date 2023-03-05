class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :quiz
      t.belongs_to :game
    end  
  end
end
