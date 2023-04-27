# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seed started"
user = User.create(username:"trance" , password:"123456" , email:"trance@gmail.com")

admin = User.create(username:"admin" , password:"123456" , email:"admin@gmail.com" , role:"admin")

products = Product.create([
    {
        name: "TAUPE HAZE",
        image:"https://myretrobucket.s3.eu-north-1.amazonaws.com/1.png",
        description: "AIR JORDAN 4 TAUPE HAZE",
        price: 105
    },
    {
        name: "NRG LEVI DENIM",
        image: "https://myretrobucket.s3.eu-north-1.amazonaws.com/2.png",
        description: "AIR JORDAN 4 NRG LEVI DENIM",
        price: 105
    },
    {
        name:"LEVIS BLACK",
        image:"https://myretrobucket.s3.eu-north-1.amazonaws.com/3.png",
        description:"AIR JORDAN 4 X LEVIS BLACK",
        price: 129
    },
    {
        image:"https://myretrobucket.s3.eu-north-1.amazonaws.com/4.png",
        name:" KAWS GRAY COOL",
        description:"AIR JORDAN 4 X KAWS GRAY COOL",
        price: 129
    },
    {
        image:"https://myretrobucket.s3.eu-north-1.amazonaws.com/5.png",
        name:"BLACK CAT ",
        description:"AIR JORDAN 4 BLACK CAT",
        price: 105
    },
    {
        name:"OG WHITE CEMENT",
        image:"https://myretrobucket.s3.eu-north-1.amazonaws.com/6.png",
        description:"AIR JORDAN 4 OG WHITE CEMENT",
        price: 110
    }

])


reviews = Review.create([
    {
        content: "Good",
        score: 5,
        product_id: 1
    },
    {
        content: "Average",
        score: 3,
        product_id: 1
    },
    {
        content: "Good",
        score: 5,
        product_id: 2
    },
    {
        content: "Average",
        score: 3,
        product_id: 2
    },
    {
        content: "Good",

        score: 5,
        product_id: 3
    },
    {
        content: "Average",
        score: 3,
        product_id: 3
    },
    {
        content: "Good",
        score: 5,
        product_id: 4
    },
    {
        content: "Average",
        score: 3,
        product_id: 4
    },
    {
        content: "Good",

        score: 5,


        product_id: 5,
    },
    {
        content: "Average",
        score: 3,
        product_id: 5
    },
    {
        content: "Good",
        score: 5,
        product_id: 6
    },
    {
        content: "Average",
        score: 3,
        product_id: 6
    },
])

likes = Like.create([
    {
        count: 1,
        product_id: 1
    },
    {
        count: 1,
        product_id: 2
    },
    {
        count: 1,
        product_id: 3
    },
    {
        count: 1,
        product_id: 4
    },
    {
        count: 1,
        product_id: 5
    },
    {
        count: 1,
        product_id: 6
    }
])


bookings = Booking.create([
    {
        user_id: 1,
        product_id: 1,
        location: "Stockholm",
        phone_number: "0701234567"

    },
    {
        user_id: 1,
        product_id: 2,
        location: "Stockholm",
        phone_number: "0701234567"

    
    }
])


    
