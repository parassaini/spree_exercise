Spree::Product.class_eval do
  scope :published, -> { where published: true }
end