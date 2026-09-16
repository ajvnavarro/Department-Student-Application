class AddSectionColumns < ActiveRecord::Migration[8.0]
  def change
    add_column :sections, :students_count, :integer, default: 0
  end
end
