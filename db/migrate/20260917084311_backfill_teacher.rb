class BackfillTeacher < ActiveRecord::Migration[8.0]
  def up
    Teacher.find_each do |teacher|
      monthly_salary = 0.0

      teacher.subjects.find_each do |subject|
        monthly_salary += subject.per_unit_rate * subject.number_of_units
      end

      teacher.update_columns(
        monthly_salary: monthly_salary
      )
    end
  end
  
  def down
  end
end
