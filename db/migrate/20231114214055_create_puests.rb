class CreatePuests < ActiveRecord::Migration[7.0]
  def change
    create_table :puests do |t|
      t.string :category
      t.string :correctAnswer
      t.json :incorrectAnswers, default: []
      t.json :question
      t.json :tags, default: []
      t.string :type
      t.string :region, default: []
      t.json :isNiche, :boolean, default: false
      t.string :difficulty

      t.timestamps
    end
  end
end
