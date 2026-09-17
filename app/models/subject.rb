class Subject < ApplicationRecord
  belongs_to :teacher
  has_many :sections, dependent: :destroy

  after_create :recalculate_salary
  after_destroy :recalculate_salary
  after_update :recalculate_salary

  private
    def recalculate_salary
      if teacher.present?
        teacher.subjects.reload
          monthly_salary = 0.0

          teacher.subjects.each do |subject|
            monthly_salary += subject.per_unit_rate * subject.number_of_units
          end

          teacher.update!(
            monthly_salary: monthly_salary
          )
        end
    end
end
