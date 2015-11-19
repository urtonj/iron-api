class ChangeWorkoutSetsWeightToFloat < ActiveRecord::Migration
  def change
    change_column :workout_sets, :weight, :float
  end
end
