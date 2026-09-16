class BackfillSubjectSectionCounts < ActiveRecord::Migration[8.0]
  def up
    Subject.find_each { |subject| Subject.reset_counters(subject.id, :sections)}
    Section.find_each { |section | Section.reset_counters(section.id, :classlists)}
  end

  def down
  end
end
