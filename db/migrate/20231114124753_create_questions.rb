class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :correctAnswer
      t.string :incorrectAnswers, array: true, default: []
      t.text :question
      t.string :difficulty
      t.string :image

      t.timestamps
    end
  end
end
