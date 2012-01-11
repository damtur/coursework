class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.string :content
      t.string :image_path
      t.string :price

      t.timestamps
    end
  end
end
