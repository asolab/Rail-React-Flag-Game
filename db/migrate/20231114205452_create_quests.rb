class CreateQuests < ActiveRecord::Migration[7.0]
  def change
    create_table :quests do |t|
      t.string :correctAnswer
      t.text :incorrectAnswers, array: true, default: []
      t.text :question
      t.string :difficulty
      t.string :image

      t.timestamps
    end
  end
end
