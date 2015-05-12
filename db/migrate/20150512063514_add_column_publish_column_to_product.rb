class AddColumnPublishColumnToProduct < ActiveRecord::Migration
  def change
    add_column :spree_products, :published, :boolean, default: true
  end
end
