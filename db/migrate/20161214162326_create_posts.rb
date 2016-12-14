class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :position
      t.text :breifHistory
      t.text :education
      t.text :achievments
      t.text :goals

      t.timestamps
    end
  end
end
