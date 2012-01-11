class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
