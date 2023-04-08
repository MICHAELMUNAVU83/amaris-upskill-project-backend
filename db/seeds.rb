# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(username:"trance" , password:"123" , email:"trance@gmail.com")

products = Product.create([
    {
        name: "Earphones",
        image:"https://res.cloudinary.com/dakiak4mc/image/upload/v1678951961/opn-50d_680_-12_oieprj.jpg",
        description: "Earphones",
        price: 100
    },
    {
        name: "Electric Jug",
        image: "https://res.cloudinary.com/dakiak4mc/image/upload/v1678951961/oh-k20-680-1_up57pw.jpg",
        description: "Electric Jug",
        price: 200
    },
    {
        name:"Headphones",
        image:"https://res.cloudinary.com/dakiak4mc/image/upload/v1678947997/opn-40d_1_ppw1sw.jpg",
        description:"raimo OpenCirclet IPX5 Ergonomic Secure Fit Long Playtime Open-ear Bluetooth Headphones",
        price: 300
    },
    {
        image:"https://res.cloudinary.com/dakiak4mc/image/upload/v1678947997/20230106-175743_au0zvr.jpg",
        name:"SmartShaver ",
        description:"2 Dual Ultra-thin Rotary Electric Shaver",
        price: 400
    },
    {
        image:"https://res.cloudinary.com/dakiak4mc/image/upload/v1678947997/osv-102_-680-11_qwvdo8.jpg",
        name:"Oraimo UltraCleaner ",
        description:"oraimo UltraCleaner S Cordless Self-Standing Powerful Suction Advanced Filtration Stick Vacuum Cleaner",
        price: 500
    },
    {
        name:"Triple Head Charger",
        image:"https://res.cloudinary.com/dakiak4mc/image/upload/v1678947996/_6_1_xjyc4h.jpg",
        description:"Triple Head Charger",
        price: 600
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
