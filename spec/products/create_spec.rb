require "rails_helper"

RSpec.describe "Products", type: :request do

    scenario "Sends a post request to create a product" do

        post "http://localhost:3000/products", params: {product: {
            name:"LEVIS BLACK",
            image:"https://myretrobucket.s3.eu-north-1.amazonaws.com/3.png",
            description:"AIR JORDAN 4 X LEVIS BLACK",
            price: 129
        }}
            product = JSON.parse(response.body)
          
            expect(product["name"]).to eq("LEVIS BLACK")
       

    end
end