Deface::Override.new( virtual_path: "spree/admin/products/_form",
                      insert_before: "[data-hook='admin_product_form_description']",
                      text: %{ <div data-hook="admin_product_form_published">
                              <%= f.field_container :published do %>
                                <span>
                                <%= f.label :published %>
                                <%= f.check_box :published %>
                                <%= f.error_message_on :published %>
                                </span>
                              <% end %>
                            </div>
                          </div> },
                      name: 'product_published'
                      )
