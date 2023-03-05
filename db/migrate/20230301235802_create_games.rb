class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
     t.string :image_url
     t.string :title
     t.string :description 
    end  
  end
end
