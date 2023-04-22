require "rails_helper"

RSpec.describe "Reviews", type: :request do

before do
    Product.create(name: "TAUPE HAZE",
        image:"https://myretrobucket.s3.eu-north-1.amazonaws.com/1.png",
        description: "AIR JORDAN 4 TAUPE HAZE",
        price: 105)

        Review.create(content: "Good",
        score: 5,
        product_id: 1)
        Review.create(content: "Average",
        score: 3,
        product_id: 1)
        
  
end

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
