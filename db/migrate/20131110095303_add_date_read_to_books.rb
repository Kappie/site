class AddDateReadToBooks < ActiveRecord::Migration
  def change
    add_column :books, :date_read, :date
  end
end
