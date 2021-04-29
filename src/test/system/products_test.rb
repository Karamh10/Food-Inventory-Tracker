require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Date", with: @product.Date
    fill_in "Invoice date", with: @product.Invoice_Date
    fill_in "Invoice number", with: @product.Invoice_Number
    fill_in "Organization", with: @product.Organization
    fill_in "Po number", with: @product.PO_Number
    fill_in "Product", with: @product.Product
    fill_in "Quantity", with: @product.Quantity
    fill_in "Quantity units", with: @product.Quantity_Units
    fill_in "Value", with: @product.Value
    fill_in "Weight", with: @product.Weight
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Date", with: @product.Date
    fill_in "Invoice date", with: @product.Invoice_Date
    fill_in "Invoice number", with: @product.Invoice_Number
    fill_in "Organization", with: @product.Organization
    fill_in "Po number", with: @product.PO_Number
    fill_in "Product", with: @product.Product
    fill_in "Quantity", with: @product.Quantity
    fill_in "Quantity units", with: @product.Quantity_Units
    fill_in "Value", with: @product.Value
    fill_in "Weight", with: @product.Weight
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
