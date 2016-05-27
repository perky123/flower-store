class AddColumnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :name, :string
    add_column :orders, :address, :string
    add_column :orders, :city, :string
    add_column :orders, :contact, :string
  end
end
