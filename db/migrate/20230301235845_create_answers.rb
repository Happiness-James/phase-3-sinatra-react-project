class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :value
      t.boolean :correct
      t.belongs_to :question

    end  
  end
end
