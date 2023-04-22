require "rails_helper"

RSpec.describe "Products", type: :request do

before do
    Product.create(name: "TAUPE HAZE",
        image:"https://myretrobucket.s3.eu-north-1.amazonaws.com/1.png",
        description: "AIR JORDAN 4 TAUPE HAZE",
        price: 105)
  
end

scenario "Get all posts and checks the array length" do

    get "http://localhost:3000/products"
    expect(response).to have_http_status(:success)
    posts = JSON.parse(response.body)
    expect(posts.length).to eq(1)


end
end
