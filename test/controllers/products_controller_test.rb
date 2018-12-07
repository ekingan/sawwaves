require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url, as: :json
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { active: @product.active, brand_id: @product.brand_id, description: @product.description, discount_price: @product.discount_price, featured: @product.featured, model: @product.model, product_status: @product.product_status, product_type_id: @product.product_type_id, regular_price: @product.regular_price, wholesale_price: @product.wholesale_price } }, as: :json
    end

    assert_response 201
  end

  test "should show product" do
    get product_url(@product), as: :json
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { active: @product.active, brand_id: @product.brand_id, description: @product.description, discount_price: @product.discount_price, featured: @product.featured, model: @product.model, product_status: @product.product_status, product_type_id: @product.product_type_id, regular_price: @product.regular_price, wholesale_price: @product.wholesale_price } }, as: :json
    assert_response 200
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product), as: :json
    end

    assert_response 204
  end
end
