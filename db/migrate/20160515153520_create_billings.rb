class CreateBillings < ActiveRecord::Migration
  def change
    create_table :billings do |t|

      t.timestamps null: false
    end
  end
end
