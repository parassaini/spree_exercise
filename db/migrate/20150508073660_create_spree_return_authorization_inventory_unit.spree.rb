# This migration comes from spree (originally 20140702140656)
class CreateSpreeReturnAuthorizationInventoryUnit < ActiveRecord::Migration
  def change
    create_table :spree_return_authorization_inventory_units do |t|
      t.integer :return_authorization_id
      t.integer :inventory_unit_id
      t.integer :exchange_variant_id
      t.datetime :received_at

      t.timestamps
    end
  end
end
