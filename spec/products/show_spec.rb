require "rails_helper"

RSpec.describe "Products", type: :request do

before do
    Product.create(name: "TAUPE HAZE",
        image:"https://myretrobucket.s3.eu-north-1.amazonaws.com/1.png",
        description: "AIR JORDAN 4 TAUPE HAZE",
        price: 105)
        Product.create(name: "Jordan Shoes",
            image:"https://myretrobucket.s3.eu-north-1.amazonaws.com/1.png",
            description: " JORDAN 4 ",
            price: 120)
    
end

    scenario "gets the first product" do 

        get "http://localhost:3000/products/1"

        expect(response).to have_http_status(:success)
        product = JSON.parse(response.body)
        expect(product["name"]).to eq("TAUPE HAZE")
        

    end

    scenario "gets the second product" do 

        get "http://localhost:3000/products/2"

        expect(response).to have_http_status(:success)
        product = JSON.parse(response.body)
        expect(product["name"]).to eq("Jordan Shoes")
      

    end
end