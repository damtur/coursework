class AddPicturePath < ActiveRecord::Migration
  def up
		add_column :information, :picture, :string
  end

  def down
  end
end
