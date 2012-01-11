class ChangeColumnTypeOnInformation < ActiveRecord::Migration
  def up
		change_column :information, :content, :text
  end

  def down
		change_column :information, :content, :string
  end
end
