class CreateCuests < ActiveRecord::Migration[7.0]
  def change
    create_table :cuests do |t|
      t.string :correctAnswer
      t.json :incorrectAnswers, default: []
      t.json :question
      t.string :difficulty
      t.string :image

      t.timestamps
    end
  end
end
