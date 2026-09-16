class AddPerUnitRateAndNoUNitToSubjects < ActiveRecord::Migration[8.0]
  def change
    add_column :subjects, :number_of_units, :integer, default: 3
    add_column :subjects, :per_unit_rate, :double, default: 1000.0
  end
end
