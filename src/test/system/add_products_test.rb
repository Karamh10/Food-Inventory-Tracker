require "application_system_test_case"

class AddProductsTest < ApplicationSystemTestCase
  setup do
    @add_product = add_products(:one)
  end

  test "visiting the index" do
    visit add_products_url
    assert_selector "h1", text: "Add Products"
  end

  test "creating a Add product" do
    visit add_products_url
    click_on "New Add Product"

    fill_in "Date", with: @add_product.Date
    fill_in "Invoice date", with: @add_product.Invoice_Date
    fill_in "Invoice number", with: @add_product.Invoice_Number
    fill_in "Organization", with: @add_product.Organization
    fill_in "Po number", with: @add_product.PO_Number
    fill_in "Product", with: @add_product.Product
    fill_in "Quantity", with: @add_product.Quantity
    fill_in "Quantity units", with: @add_product.Quantity_Units
    fill_in "Value", with: @add_product.Value
    fill_in "Weight", with: @add_product.Weight
    click_on "Create Add product"

    assert_text "Add product was successfully created"
    click_on "Back"
  end

  test "updating a Add product" do
    visit add_products_url
    click_on "Edit", match: :first

    fill_in "Date", with: @add_product.Date
    fill_in "Invoice date", with: @add_product.Invoice_Date
    fill_in "Invoice number", with: @add_product.Invoice_Number
    fill_in "Organization", with: @add_product.Organization
    fill_in "Po number", with: @add_product.PO_Number
    fill_in "Product", with: @add_product.Product
    fill_in "Quantity", with: @add_product.Quantity
    fill_in "Quantity units", with: @add_product.Quantity_Units
    fill_in "Value", with: @add_product.Value
    fill_in "Weight", with: @add_product.Weight
    click_on "Update Add product"

    assert_text "Add product was successfully updated"
    click_on "Back"
  end

  test "destroying a Add product" do
    visit add_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add product was successfully destroyed"
  end
end
