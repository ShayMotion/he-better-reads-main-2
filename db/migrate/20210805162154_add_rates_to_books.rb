class AddRatesToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :rates, :rate_id, :integer
  end
end
