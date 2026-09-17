class AddTeacherColumns < ActiveRecord::Migration[8.0]
  def change
    add_column :teachers, :monthly_salary, :double, default: 0.0
    add_column :teachers, :per_unit_rate, :double, default: 1000.0
  end
end
