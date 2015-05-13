Spree::TaxonsController.class_eval do

  def show
    @taxon = Taxon.find_by_permalink!(params[:id])
    return unless @taxon
    @searcher = build_searcher(params.merge(taxon: @taxon.id, include_images: true, search: [:published]))
    @products = @searcher.retrieve_products
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end

end
