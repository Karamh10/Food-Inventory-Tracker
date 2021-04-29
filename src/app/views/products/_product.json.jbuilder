json.extract! product, :id, :Organization, :Date, :PO_Number, :Invoice_Number, :Invoice_Date, :Product, :Quantity_Units, :Quantity, :Value, :Weight, :created_at, :updated_at
json.url product_url(product, format: :json)
