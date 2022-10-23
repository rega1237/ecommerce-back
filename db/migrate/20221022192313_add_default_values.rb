class AddDefaultValues < ActiveRecord::Migration[7.0]
  def up
    change_column_default :products, :bought_times, 0
  end

  def down
    change_column_default :products, :bought_times, nil
  end
end
