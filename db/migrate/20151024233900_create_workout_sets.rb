class CreateWorkoutSets < ActiveRecord::Migration
  def change
    create_table :workout_sets do |t|
      t.references :exercise
      t.integer :rep_count
      t.integer :weight
      t.references :workout

      t.timestamps
    end
  end
end
