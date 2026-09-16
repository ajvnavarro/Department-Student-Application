class AddSubjectColumns < ActiveRecord::Migration[8.0]
  def change
    add_column :subjects, :sections_count, :integer, default: 0
  end
end
