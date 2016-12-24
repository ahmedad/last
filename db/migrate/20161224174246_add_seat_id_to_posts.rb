class AddSeatIdToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :seat_id, :integer
  end
end
