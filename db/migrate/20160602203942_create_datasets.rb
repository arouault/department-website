class CreateDatasets < ActiveRecord::Migration
  def change
    create_table :datasets do |t|
      t.string :name
      t.text :bio
      t.timestamps null: false
    end
  end
end
