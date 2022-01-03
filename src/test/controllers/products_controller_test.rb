require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { Date: @product.Date, Invoice_Date: @product.Invoice_Date, Invoice_Number: @product.Invoice_Number, Organization: @product.Organization, PO_Number: @product.PO_Number, Product: @product.Product, Quantity: @product.Quantity, Quantity_Units: @product.Quantity_Units, Value: @product.Value, Weight: @product.Weight } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { Date: @product.Date, Invoice_Date: @product.Invoice_Date, Invoice_Number: @product.Invoice_Number, Organization: @product.Organization, PO_Number: @product.PO_Number, Product: @product.Product, Quantity: @product.Quantity, Quantity_Units: @product.Quantity_Units, Value: @product.Value, Weight: @product.Weight } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
