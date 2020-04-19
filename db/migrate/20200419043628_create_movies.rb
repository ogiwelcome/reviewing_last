class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :Title
      t.date :Date
      t.string :Theater
      t.float :Evaluation
      t.text :Comment

      t.timestamps
    end
  end
end
