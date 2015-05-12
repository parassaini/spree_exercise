module Publishable
  extend ActiveSupport::Concern

  def index_with_published_products
    index_without_published_products
    @products = @products.published if @products.present?
  end

  def show_with_published_products
    show_without_published_products
    @products = @products.published if @products.present?
  end

  included do
    alias_method_chain :index, :published_products if self.instance_methods.include?(:index)
    alias_method_chain :show, :published_products if self.instance_methods.include?(:show)
  end

end