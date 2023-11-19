class CreateFuests < ActiveRecord::Migration[7.0]
  def change
    create_table :fuests do |t|
      t.string :category
      t.string :correctAnswer
      t.json :incorrectAnswers
      t.json :question
      t.json :tags
      t.string :type
      t.string :region
      t.string :image
      t.string :difficulty

      t.timestamps
    end
  end
end
