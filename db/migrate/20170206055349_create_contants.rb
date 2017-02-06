class CreateContants < ActiveRecord::Migration[5.0]
  def change
    create_table :contants do |t|
      t.string :name
      t.string :emai
      t.text :service

      t.timestamps
    end
  end
end
