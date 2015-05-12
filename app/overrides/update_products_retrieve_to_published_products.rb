Deface::Override.new( virtual_path: "spree/shared/_products",
                      insert_after: "erb[silent]:contains('@searcher.retrieve_products')",
                      text: "<% paginated_products = paginated_products.published %>",
                      name: 'product_published_condition'
                      )
