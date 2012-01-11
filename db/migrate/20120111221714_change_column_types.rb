class ChangeColumnTypes < ActiveRecord::Migration
  def up
		change_column :events, :content, :text
		change_column :publications, :content, :text
  end

  def down
		change_column :events, :content, :string
		change_column :publications, :content, :string
  end
end
