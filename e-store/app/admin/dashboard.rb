ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    #div :class => "blank_slate_container", :id => "dashboard_default_message" do
    #  span :class => "blank_slate" do
    #    span I18n.t("active_admin.dashboard_welcome.welcome")
    #    small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #  end
    #end

    ##create a table on the dashboard
    section "Products on SALE!" do
      ##select items on sales, and order by item
      table_for Product.where('sale_price > 0').order('item DESC') do
        ##add columns
        column :item
        column :name do |prod|
          ##link to each product displayed
          link_to prod.name, [:admin, prod]
        end
        column :sale_price do |prod|
          ##wrap the currency into a class tag for styling
          div :class => "sales_price" do
            ##formats the sales price
            number_to_currency prod.sale_price
          end   
        end
        column :price do |prod|
          div :class => "price" do
            number_to_currency prod.price
          end
        end
      end
      ##insert a link to app products after the table
      strong { link_to "View All Products", admin_products_path }
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
