require 'test_helper'

class AddProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_product = add_products(:one)
  end

  test "should get index" do
    get add_products_url
    assert_response :success
  end

  test "should get new" do
    get new_add_product_url
    assert_response :success
  end

  test "should create add_product" do
    assert_difference('AddProduct.count') do
      post add_products_url, params: { add_product: { Date: @add_product.Date, Invoice_Date: @add_product.Invoice_Date, Invoice_Number: @add_product.Invoice_Number, Organization: @add_product.Organization, PO_Number: @add_product.PO_Number, Product: @add_product.Product, Quantity: @add_product.Quantity, Quantity_Units: @add_product.Quantity_Units, Value: @add_product.Value, Weight: @add_product.Weight } }
    end

    assert_redirected_to add_product_url(AddProduct.last)
  end

  test "should show add_product" do
    get add_product_url(@add_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_product_url(@add_product)
    assert_response :success
  end

  test "should update add_product" do
    patch add_product_url(@add_product), params: { add_product: { Date: @add_product.Date, Invoice_Date: @add_product.Invoice_Date, Invoice_Number: @add_product.Invoice_Number, Organization: @add_product.Organization, PO_Number: @add_product.PO_Number, Product: @add_product.Product, Quantity: @add_product.Quantity, Quantity_Units: @add_product.Quantity_Units, Value: @add_product.Value, Weight: @add_product.Weight } }
    assert_redirected_to add_product_url(@add_product)
  end

  test "should destroy add_product" do
    assert_difference('AddProduct.count', -1) do
      delete add_product_url(@add_product)
    end

    assert_redirected_to add_products_url
  end
end
