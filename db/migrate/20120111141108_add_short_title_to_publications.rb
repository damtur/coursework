class AddShortTitleToPublications < ActiveRecord::Migration
  def change
    add_column :publications, :short_title, :string
  end

  def self.down
    remove_column :publications, :short_title, :string
  end
end
