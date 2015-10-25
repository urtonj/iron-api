class CreateWorkoutSets < ActiveRecord::Migration
  def change
    create_table :workout_sets do |t|
      t.references :exercise, null: false
      t.integer :rep_count, null: false
      t.integer :weight, null: false
      t.references :workout, null: false

      t.timestamps
    end
  end
end
