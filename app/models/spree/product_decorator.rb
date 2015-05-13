Spree::Product.class_eval do

  add_search_scope :published do
    where(published: true)
  end

end
