# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([{name: "Computers"}, {name: "Smart Phones"}, {name: "Televisions"}, {name: "Game Consoles"},{name: "Video Games"}, {name: "Appliances"}, {name: "Other"}])

Product.create(name: "MacBook Pro", price: 1234.99, quantity: 30, description: "The new MacBook Pro is razor-thin, featherlight, and now even faster and more powerful than before. It has the brightest, most colorful Mac notebook display. And it features up to 10 hours of battery life.* It’s a notebook built for the work you do every day. Ready to go anywhere a great idea takes you.", brand: "Apple", rating: nil, category_id: 1)

Product.create(name: "Inspiron", price: 349.99, quantity: 50, description: "The 15.6-inch HD touch screen helps you work more efficiently, and the 1TB hard drive has space for thousands of documents and other files. This Dell Inspiron notebook computer has 8GB of DDR4 RAM and an Intel i3 processor for lag-free multitasking.", brand: "Dell", rating: nil, category_id: 1)

Product.create(name: "PlayStation 4", price: 299.99, quantity: 50, description: "Conquer virtual enemies with this Sony PlayStation 4. It's compatible with the latest game titles to provide hours of entertainment, and it lets you access PlayStation Vue so you can enjoy your favorite shows. This Sony PlayStation 4 has a 1TB hard drive, so you can store plenty of gaming files.", brand: "Sony", rating: nil, category_id: 4)

Product.create(name: "Xbox One", price: 499.99, quantity: 50, description: "Games play better on Xbox One X. With 40% more power than any other console, experience immersive true 4K gaming. Blockbuster titles look great, run smoothly, and load quickly even on a 1080p screen. Xbox One X also works with all your Xbox One games and accessories as well as Xbox Live, an extemely advanced multiplayer network, giving you more ways to play.", brand: "Microsoft", rating: nil, category_id: 4)

Product.create(name: "Rock of Ages II: Bigger & Boulder", price: 40.00, quantity: 50, description: "Rock of Ages II: Bigger & Boulder is a strategy game developed by ACE Team and published by Atlus for PC, Xbox One, and PlayStation 4.", brand: "Atlus Co., Ltd", rating: nil, category_id: 5)

Product.create(name: "Vampire: The Masquerade - Bloodlines", price: 10.00, quantity: 50, description: "Bloodlines is based on White Wolf's pen-and-paper role playing game Vampire: The Masquerade set in a universe known as the World of Darkness. Similar in depth and atmosphere to Deus Ex and with a dialogue system similar to later Bioware RPGs, Bloodlines has been described by many as \"Deus Ex with vampires.\" Although Bloodlines divided critics at the time of release, it retains a popular cult following.", brand: "Activision", rating: nil, category_id: 5)

Product.create(name: "Beats Studio Wireless Over-Ear Headphones", price: 199.99, quantity: 50, description: "The Beats Studio Wireless features the iconic Beats sound with dual-mode Adaptive Noise Canceling, plus, listen wirelessly for up to 12 hours with its Bluetooth® connection and rechargeable battery.", brand: "Apple", rating: nil, category_id: 7)

Product.create(name: "HERO5 Black 4K Action Camera", price: 399.99, quantity: 75, description: "Hit the road with this GoPro HERO5 Black camera in your pocket, and share every moment with your subscribers and friends. One-button control lets you snap a photo or capture a video with a simple touch of the shutter. This GoPro HERO5 Black camera is compatible with all GoPro accessories for easy incorporation.", brand: "GoPro", rating: nil, category_id: 7)

Product.create(name: "55\” 4K Frame TV", price: 1999.99, quantity: 25, description: "Create a gallery-like experience with this Samsung 4K UHD TV. It has all the functions you'd expect from a 4K TV, including HDR, upscaling, smart features and Dolby Digital Plus, but what you also get is a statement piece that stands out from home's decor. This Samsung 4K UHD TV is more than just a TV - it's simply art.", brand: "Samsung", rating: nil, category_id: 3)

Product.create(name: "43\" LED Smart TV", price: 299.99, quantity: 100, description: "Watch sports or play your favorite games on the expansive 43-inch screen of this LG LED TV. The 1080p display offers dazzling visuals, whether you're watching a touchdown or taking down the enemy. This LG LED TV features smart technology so you can connect easily with streaming video services and the world wide web.", brand: "LG", rating: nil, category_id: 3)

Product.create(name: "Iphone 6", price: 499.99, quantity: 25, description: "A 4.7-inch Retina HD display. An A8 chip with 64-bit desktop-class architecture. 8MP iSight camera with Focus Pixels. Touch ID. Fast LTE and Wi-Fi.1 Long battery life.2And iOS 9 and iCloud. Phones are tested for functionality and gently cleansed. Device may have visible usage wear and tear", brand: "Apple", rating: nil, category_id: 2)

Product.create(name: "Alcatel GO FLIP", price: 49.99, quantity: 35, description: "The Alcatel GO FLIP™ is more than just a basic phone. Powered by KaiOS, it allows you to stay connected to family and friends with all the essential features to be productive including access to email, calendar and web at 4G speeds. With the convenient, durable flip design and large button navigation, making calls and texting has never been easier.", brand: "Alcatel", rating: nil, category_id: 2)

Product.create(name: "Samsung 24\" Hybrid Dishwasher", price: 999.99, quantity: 105, description: "ENERGY STAR® certified products meet strict energy efficiency specifications set by the government", brand: "Samsung", rating: nil, category_id: 6)

Product.create(name: "Samsung", price: 183.49, quantity: 2, description:" Capacity: 1.4 Cu Ft * Weight (lb.): 37.5 Lb * Wattage (watts): 1000w * Finish: Stainless Steel * Country of Origin: Imported", brand: "Samsung", rating: nil, category_id: 6)