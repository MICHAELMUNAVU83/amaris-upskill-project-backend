require "rails_helper"

RSpec.describe "Reviews", type: :request do

before do
    Product.create(name: "TAUPE HAZE",
        image:"https://myretrobucket.s3.eu-north-1.amazonaws.com/1.png",
        description: "AIR JORDAN 4 TAUPE HAZE",
        price: 105)

  
end

scenario "Sends a post request to create a review" do

    post "http://localhost:3000/reviews", params: {review: {
        content: "Good",
        score: 5,
        product_id: 1

    }}
        review = JSON.parse(response.body)
      
        expect(review["content"]).to eq("Good")
   

end
end
