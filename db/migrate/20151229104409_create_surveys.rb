class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.references :question, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :options

      t.timestamps null: false
    end
  end
end
