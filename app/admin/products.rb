ActiveAdmin.register Product do
  permit_params :brand_id, :model, :description, :product_status, :regular_price, :discount_price,
  :wholesale_price, :featured, :product_type_id, :active
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
