class CreateDeliveries < ActiveRecord::Migration[6.0]
  def change
    create_table :deliveries do |t|
      t.integer :orders,       null: false
      t.string  :postal_code,  null: false
      t.integer :prefectures,  null: false
      t.integer :city,         null: false
      t.string  :house_number, null: false
      t.string  :build_number, null: false
      t.string  :phone_number, null: false

      t.timestamps
    end
  end
end