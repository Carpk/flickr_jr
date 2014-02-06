class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.text :about

      t.timestamps
    end

    create_table :photos do |t|
      t.string :title
      t.string :description
      t.string :img_file_name
      t.timestamps
    end

    create_table :albums do |t|
      t.string :title
      t.integer :user_id
      t.integer :photo_id
    end
  end
end
