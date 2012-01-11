class CreateInformations < ActiveRecord::Migration
  def change
    create_table :informations do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end

  def self.down
    drop_table :informations
  end
end
