Spree::HomeController.class_eval do

  def index
    @searcher = build_searcher(params.merge(include_images: true, search: [:published]))
    @products = @searcher.retrieve_products
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end

end
