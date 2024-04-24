class Data {
  /// Liked Items
  static Set<Map<String, dynamic>> likedItems = {};
  static List<Map<String, dynamic>> likedItemsList = [];
  static setToListConverter() {
    likedItemsList = likedItems.toList();
  }

  /// cart items
  static Set<Map<String, dynamic>> cartItemSet = {};
  static List<Map<String, dynamic>> cartItemList = [];
  static setToListConverterCart() {
    cartItemList = cartItemSet.toList();
  }

  static double totalPrice() {
    double subtotal = 0.0;
    for (var item in Data.cartItemList) {
      subtotal += item['price'] * item['itemCount'];
    }
    return subtotal;
  }

  static List<Map<String, dynamic>> itemData = [
    {
      "categoryName": "Salads",
      "items": [
        {
          "id": 1,
          'itemCount': 1,
          "isLiked": false,
          "name": "Greek Salad",
          "description":
              "Fresh lettuce, tomatoes, cucumbers, red onions, olives, and feta cheese tossed in Greek dressing.",
          "price": 9.99,
          "image": "assets/salad/1.png",
          "category": "Salads",
          "rating": 4.7,
          "expectedTime": 13.00,
          "ingredients": [
            "lettuce",
            "tomatoes",
            "cucumbers",
            "red onions",
            "olives",
            "feta cheese",
            "Greek dressing"
          ]
        },
        {
          "id": 2,
          'itemCount': 1,
          "isLiked": false,
          "name": "Caesar Salad",
          "description":
              "Crisp romaine lettuce, croutons, and shredded Parmesan cheese tossed in Caesar dressing.",
          "price": 8.49,
          "image": "assets/salad/2.png",
          "category": "Salads",
          "rating": 4.6,
          "expectedTime": 16.00,
          "ingredients": [
            "romaine lettuce",
            "croutons",
            "Parmesan cheese",
            "Caesar dressing"
          ]
        },
        {
          "id": 3,
          'itemCount': 1,
          "isLiked": false,
          "name": "Caprese Salad",
          "description":
              "Fresh mozzarella cheese, tomatoes, and basil leaves drizzled with balsamic glaze.",
          "price": 10.99,
          "image": "assets/salad/3.png",
          "category": "Salads",
          "rating": 4.9,
          "expectedTime": 30.00,
          "ingredients": [
            "mozzarella cheese",
            "tomatoes",
            "basil leaves",
            "balsamic glaze"
          ]
        },
        {
          "id": 4,
          'itemCount': 1,
          "isLiked": false,
          "name": "Spinach Salad",
          "description":
              "Tender baby spinach, bacon bits, hard-boiled eggs, and mushrooms tossed in a tangy vinaigrette.",
          "price": 7.99,
          "image": "assets/salad/4.png",
          "category": "Salads",
          "rating": 4.4,
          "expectedTime": 20.00,
          "ingredients": [
            "baby spinach",
            "bacon bits",
            "hard-boiled eggs",
            "mushrooms",
            "vinaigrette"
          ]
        },
        {
          "id": 5,
          'itemCount': 1,
          "isLiked": false,
          "name": "Nicoise Salad",
          "description":
              "Seared tuna, boiled potatoes, green beans, tomatoes, olives, and hard-boiled eggs served over mixed greens.",
          "price": 12.49,
          "image": "assets/salad/5.png",
          "category": "Salads",
          "rating": 4.8,
          "expectedTime": 22.00,
          "ingredients": [
            "seared tuna",
            "boiled potatoes",
            "green beans",
            "tomatoes",
            "olives",
            "hard-boiled eggs",
            "mixed greens"
          ]
        },
        {
          "id": 6,
          'itemCount': 1,
          "isLiked": false,
          "name": "Waldorf Salad",
          "description":
              "Crisp apples, celery, walnuts, and grapes mixed with mayonnaise and served over lettuce.",
          "price": 9.49,
          "image": "assets/salad/6.png",
          "category": "Salads",
          "rating": 4.5,
          "expectedTime": 34.00,
          "ingredients": [
            "apples",
            "celery",
            "walnuts",
            "grapes",
            "mayonnaise",
            "lettuce"
          ]
        },
        {
          "id": 7,
          'itemCount': 1,
          "isLiked": false,
          "name": "Cobb Salad",
          "description":
              "Grilled chicken, avocado, bacon, hard-boiled eggs, tomatoes, and blue cheese served over mixed greens.",
          "price": 11.99,
          "image": "assets/salad/7.png",
          "category": "Salads",
          "rating": 4.7,
          "expectedTime": 26.00,
          "ingredients": [
            "grilled chicken",
            "avocado",
            "bacon",
            "hard-boiled eggs",
            "tomatoes",
            "blue cheese",
            "mixed greens"
          ]
        },
      ]
    },
    {
      "categoryName": "Sandwiches",
      "items": [
        {
          "id": 1,
          'itemCount': 1,
          "isLiked": false,
          "name": "Grilled Chicken",
          "description":
              "Grilled chicken breast, roasted red peppers, spinach, and provolone cheese on ciabatta bread, pressed to perfection.",
          "price": 9.99,
          "image": "assets/sandwich/1.png",
          "category": "Sandwiches",
          "rating": 4.7,
          "expectedTime": 15.00,
          "ingredients": [
            "grilled chicken breast",
            "roasted red peppers",
            "spinach",
            "provolone cheese",
            "ciabatta bread"
          ]
        },
        {
          "id": 2,
          'itemCount': 1,
          "isLiked": false,
          "name": "Classic BLT",
          "description":
              "Crispy bacon, fresh lettuce, and ripe tomatoes with mayo on toasted whole wheat bread.",
          "price": 8.49,
          "image": "assets/sandwich/2.png",
          "category": "Sandwiches",
          "rating": 4.6,
          "expectedTime": 12.00,
          "ingredients": [
            "bacon",
            "lettuce",
            "tomatoes",
            "mayo",
            "whole wheat bread"
          ]
        },
        {
          "id": 3,
          'itemCount': 1,
          "isLiked": false,
          "name": "Turkey Avocado",
          "description":
              "Sliced turkey breast, avocado, crispy bacon, lettuce, and tomato wrapped in a flour tortilla.",
          "price": 10.49,
          "image": "assets/sandwich/3.png",
          "category": "Sandwiches",
          "rating": 4.8,
          "expectedTime": 10.00,
          "ingredients": [
            "sliced turkey breast",
            "avocado",
            "bacon",
            "lettuce",
            "tomato",
            "flour tortilla"
          ]
        },
        {
          "id": 4,
          'itemCount': 1,
          "isLiked": false,
          "name": "Vegetarian Caprese",
          "description":
              "Fresh mozzarella cheese, ripe tomatoes, basil leaves, and balsamic glaze on ciabatta bread.",
          "price": 7.99,
          "image": "assets/sandwich/4.png",
          "category": "Sandwiches",
          "rating": 4.4,
          "expectedTime": 10.00,
          "ingredients": [
            "mozzarella cheese",
            "tomatoes",
            "basil leaves",
            "balsamic glaze",
            "ciabatta bread"
          ]
        },
        {
          "id": 5,
          'itemCount': 1,
          "isLiked": false,
          "name": "Philly Cheesesteak",
          "description":
              "Thinly sliced steak, sautéed onions, bell peppers, and melted provolone cheese on a toasted hoagie roll.",
          "price": 11.99,
          "image": "assets/sandwich/5.png",
          "category": "Sandwiches",
          "rating": 4.7,
          "expectedTime": 18.00,
          "ingredients": [
            "thinly sliced steak",
            "onions",
            "bell peppers",
            "provolone cheese",
            "hoagie roll"
          ]
        },
        {
          "id": 6,
          'itemCount': 1,
          "isLiked": false,
          "name": "Cuban",
          "description":
              "Roasted pork, ham, Swiss cheese, pickles, and mustard on pressed Cuban bread.",
          "price": 10.49,
          "image": "assets/sandwich/6.png",
          "category": "Sandwiches",
          "rating": 4.6,
          "expectedTime": 15.00,
          "ingredients": [
            "roasted pork",
            "ham",
            "Swiss cheese",
            "pickles",
            "mustard",
            "Cuban bread"
          ]
        },
        {
          "id": 7,
          'itemCount': 1,
          "isLiked": false,
          "name": "Tuna Salad",
          "description":
              "House-made tuna salad with celery, onions, and mayo, served on whole wheat bread.",
          "price": 9.49,
          "image": "assets/sandwich/7.png",
          "category": "Sandwiches",
          "rating": 4.5,
          "expectedTime": 12.00,
          "ingredients": [
            "tuna salad",
            "celery",
            "onions",
            "mayo",
            "whole wheat bread"
          ]
        },
        {
          "id": 8,
          'itemCount': 1,
          "isLiked": false,
          "name": "Club",
          "description":
              "Triple-decker sandwich with turkey, ham, bacon, lettuce, tomato, and mayo on toasted white bread.",
          "price": 12.99,
          "image": "assets/sandwich/8.png",
          "category": "Sandwiches",
          "rating": 4.8,
          "expectedTime": 20.00,
          "ingredients": [
            "turkey",
            "ham",
            "bacon",
            "lettuce",
            "tomato",
            "mayo",
            "white bread"
          ]
        },
        {
          "id": 9,
          'itemCount': 1,
          "isLiked": false,
          "name": "Veggie Delight",
          "description":
              "Sliced avocado, cucumber, bell peppers, lettuce, tomato, and sprouts with hummus on whole grain bread.",
          "price": 8.99,
          "image": "assets/sandwich/9.png",
          "category": "Sandwiches",
          "rating": 4.4,
          "expectedTime": 10.00,
          "ingredients": [
            "avocado",
            "cucumber",
            "bell peppers",
            "lettuce",
            "tomato",
            "sprouts",
            "hummus",
            "whole grain bread"
          ]
        },
        {
          "id": 10,
          'itemCount': 1,
          "isLiked": false,
          "name": "Italian Submarine",
          "description":
              "Italian meats (salami, pepperoni, ham), provolone cheese, lettuce, tomato, onions, banana peppers, and Italian dressing on a sub roll.",
          "price": 11.49,
          "image": "assets/sandwich/10.png",
          "category": "Sandwiches",
          "rating": 4.7,
          "expectedTime": 18.00,
          "ingredients": [
            "salami",
            "pepperoni",
            "ham",
            "provolone cheese",
            "lettuce",
            "tomato",
            "onions",
            "banana peppers",
            "Italian dressing",
            "sub roll"
          ]
        }
      ]
    },
    {
      "categoryName": "Burgers",
      "items": [
        {
          "id": 1,
          'itemCount': 1,
          "isLiked": false,
          "name": "Classic Cheese",
          "description":
              "Juicy beef patty topped with melted American cheese, lettuce, tomato, onions, pickles, and mayo on a toasted sesame seed bun.",
          "price": 9.99,
          "image": "assets/burger/1.png",
          "category": "Burgers",
          "rating": 4.7,
          "expectedTime": 15.00,
          "ingredients": [
            "beef patty",
            "American cheese",
            "lettuce",
            "tomato",
            "onions",
            "pickles",
            "mayo",
            "sesame seed bun"
          ]
        },
        {
          "id": 2,
          'itemCount': 1,
          "isLiked": false,
          "name": "BBQ Bacon",
          "description":
              "Grilled beef patty topped with crispy bacon, cheddar cheese, BBQ sauce, lettuce, and crispy onion straws on a brioche bun.",
          "price": 10.49,
          "image": "assets/burger/2.png",
          "category": "Burgers",
          "rating": 4.6,
          "expectedTime": 18.00,
          "ingredients": [
            "beef patty",
            "bacon",
            "cheddar cheese",
            "BBQ sauce",
            "lettuce",
            "onion straws",
            "brioche bun"
          ]
        },
        {
          "id": 3,
          'itemCount': 1,
          "isLiked": false,
          "name": "Mushroom Swiss",
          "description":
              "Beef patty topped with sautéed mushrooms, Swiss cheese, lettuce, tomato, and mayo on a toasted Kaiser roll.",
          "price": 10.99,
          "image": "assets/burger/3.png",
          "category": "Burgers",
          "rating": 4.8,
          "expectedTime": 20.00,
          "ingredients": [
            "beef patty",
            "sautéed mushrooms",
            "Swiss cheese",
            "lettuce",
            "tomato",
            "mayo",
            "Kaiser roll"
          ]
        },
        {
          "id": 4,
          'itemCount': 1,
          "isLiked": false,
          "name": "Spicy Jalapeno",
          "description":
              "Flame-grilled beef patty topped with pepper jack cheese, jalapenos, lettuce, tomato, chipotle mayo, and crispy onion rings on a pretzel bun.",
          "price": 11.49,
          "image": "assets/burger/4.png",
          "category": "Burgers",
          "rating": 4.5,
          "expectedTime": 18.00,
          "ingredients": [
            "beef patty",
            "pepper jack cheese",
            "jalapenos",
            "lettuce",
            "tomato",
            "chipotle mayo",
            "onion rings",
            "pretzel bun"
          ]
        },
        {
          "id": 5,
          'itemCount': 1,
          "isLiked": false,
          "name": "Avocado Turkey",
          "description":
              "Grilled turkey patty topped with sliced avocado, pepper jack cheese, lettuce, tomato, and chipotle aioli on a whole wheat bun.",
          "price": 10.99,
          "image": "assets/burger/5.png",
          "category": "Burgers",
          "rating": 4.6,
          "expectedTime": 18.00,
          "ingredients": [
            "turkey patty",
            "avocado",
            "pepper jack cheese",
            "lettuce",
            "tomato",
            "chipotle aioli",
            "whole wheat bun"
          ]
        },
        {
          "id": 6,
          'itemCount': 1,
          "isLiked": false,
          "name": "Veggie Black Bean",
          "description":
              "Spicy black bean patty topped with roasted red peppers, guacamole, lettuce, and tomato on a multigrain bun.",
          "price": 9.49,
          "image": "assets/burger/6.png",
          "category": "Burgers",
          "rating": 4.7,
          "expectedTime": 16.00,
          "ingredients": [
            "black bean patty",
            "roasted red peppers",
            "guacamole",
            "lettuce",
            "tomato",
            "multigrain bun"
          ]
        },
        {
          "id": 7,
          'itemCount': 1,
          "isLiked": false,
          "name": "Double Bacon",
          "description":
              "Two juicy beef patties topped with crispy bacon, American cheese, lettuce, tomato, pickles, and special sauce on a sesame seed bun.",
          "price": 12.99,
          "image": "assets/burger/7.png",
          "category": "Burgers",
          "rating": 4.8,
          "expectedTime": 20.00,
          "ingredients": [
            "beef patties",
            "bacon",
            "American cheese",
            "lettuce",
            "tomato",
            "pickles",
            "special sauce",
            "sesame seed bun"
          ]
        },
        {
          "id": 8,
          'itemCount': 1,
          "isLiked": false,
          "name": "Teriyaki Chicken",
          "description":
              "Grilled chicken breast marinated in teriyaki sauce, topped with grilled pineapple, Swiss cheese, lettuce, and mayo on a Hawaiian bun.",
          "price": 11.49,
          "image": "assets/burger/8.png",
          "category": "Burgers",
          "rating": 4.5,
          "expectedTime": 18.00,
          "ingredients": [
            "chicken breast",
            "teriyaki sauce",
            "grilled pineapple",
            "Swiss cheese",
            "lettuce",
            "mayo",
            "Hawaiian bun"
          ]
        },
        {
          "id": 9,
          'itemCount': 1,
          "isLiked": false,
          "name": "Portobello Spe..",
          "description":
              "Grilled portobello mushroom cap topped with roasted red peppers, arugula, goat cheese, and balsamic glaze on a brioche bun.",
          "price": 10.99,
          "image": "assets/burger/9.png",
          "category": "Burgers",
          "rating": 4.6,
          "expectedTime": 16.00,
          "ingredients": [
            "portobello mushroom cap",
            "roasted red peppers",
            "arugula",
            "goat cheese",
            "balsamic glaze",
            "brioche bun"
          ]
        },
        {
          "id": 10,
          'itemCount': 1,
          "isLiked": false,
          "name": "Pesto Turkey",
          "description":
              "Grilled turkey patty topped with pesto aioli, roasted tomatoes, fresh mozzarella cheese, and basil on a ciabatta bun.",
          "price": 11.99,
          "image": "assets/burger/10.png",
          "category": "Burgers",
          "rating": 4.7,
          "expectedTime": 20.00,
          "ingredients": [
            "turkey patty",
            "pesto aioli",
            "roasted tomatoes",
            "mozzarella cheese",
            "basil",
            "ciabatta bun"
          ]
        }
      ]
    },
    {
      "categoryName": "Cakes",
      "items": [
        {
          "id": 1,
          "itemCount": 1,
          "isLiked": false,
          "name": "Chocolate Fudge",
          "description":
              "Rich and moist chocolate cake layered with creamy fudge frosting.",
          "price": 24.99,
          "image": "assets/cakes/1.png",
          "category": "Cakes",
          "rating": 4.8,
          "expectedTime": 45.00,
          "ingredients": ["chocolate cake", "fudge frosting"]
        },
        {
          "id": 2,
          "itemCount": 1,
          "isLiked": false,
          "name": "Red Velvet",
          "description":
              "Decadent red velvet cake with layers of cream cheese frosting.",
          "price": 28.49,
          "image": "assets/cakes/2.png",
          "category": "Cakes",
          "rating": 4.7,
          "expectedTime": 50.00,
          "ingredients": ["red velvet cake", "cream cheese frosting"]
        },
        {
          "id": 3,
          "itemCount": 1,
          "isLiked": false,
          "name": "Carrot",
          "description":
              "Moist carrot cake filled with walnuts, raisins, and topped with cream cheese icing.",
          "price": 26.99,
          "image": "assets/cakes/3.png",
          "category": "Cakes",
          "rating": 4.6,
          "expectedTime": 55.00,
          "ingredients": [
            "carrot cake",
            "walnuts",
            "raisins",
            "cream cheese icing"
          ]
        },
        {
          "id": 4,
          "itemCount": 1,
          "isLiked": false,
          "name": "Lemon Blueberry",
          "description":
              "Zesty lemon cake with layers of blueberry filling and lemon cream cheese frosting.",
          "price": 29.99,
          "image": "assets/cakes/4.png",
          "category": "Cakes",
          "rating": 4.9,
          "expectedTime": 60.00,
          "ingredients": [
            "lemon cake",
            "blueberry filling",
            "lemon cream cheese frosting"
          ]
        },
        {
          "id": 5,
          "itemCount": 1,
          "isLiked": false,
          "name": "Strawberry Short",
          "description":
              "Light and fluffy vanilla cake layered with fresh strawberries and whipped cream.",
          "price": 25.49,
          "image": "assets/cakes/5.png",
          "category": "Cakes",
          "rating": 4.7,
          "expectedTime": 45.00,
          "ingredients": ["vanilla cake", "strawberries", "whipped cream"]
        },
        {
          "id": 6,
          "itemCount": 1,
          "isLiked": false,
          "name": "Tiramisu",
          "description":
              "Classic Italian dessert made with layers of coffee-soaked ladyfingers and mascarpone cheese.",
          "price": 27.99,
          "image": "assets/cakes/6.png",
          "category": "Cakes",
          "rating": 4.8,
          "expectedTime": 50.00,
          "ingredients": [
            "ladyfingers",
            "mascarpone cheese",
            "coffee",
            "cocoa powder"
          ]
        },
        {
          "id": 7,
          "itemCount": 1,
          "isLiked": false,
          "name": "Coconut Cream",
          "description":
              "Delicate coconut cake with layers of coconut cream and toasted coconut flakes.",
          "price": 26.49,
          "image": "assets/cakes/7.png",
          "category": "Cakes",
          "rating": 4.6,
          "expectedTime": 55.00,
          "ingredients": [
            "coconut cake",
            "coconut cream",
            "toasted coconut flakes"
          ]
        },
        {
          "id": 8,
          "itemCount": 1,
          "isLiked": false,
          "name": "Upside-Down",
          "description":
              "Buttery cake topped with caramelized pineapple rings and maraschino cherries.",
          "price": 23.99,
          "image": "assets/cakes/8.png",
          "category": "Cakes",
          "rating": 4.5,
          "expectedTime": 40.00,
          "ingredients": ["butter cake", "pineapple", "maraschino cherries"]
        },
        {
          "id": 9,
          "itemCount": 1,
          "isLiked": false,
          "name": "Banana Nut",
          "description":
              "Moist banana cake filled with chopped nuts and topped with cream cheese frosting.",
          "price": 24.99,
          "image": "assets/cakes/9.png",
          "category": "Cakes",
          "rating": 4.7,
          "expectedTime": 45.00,
          "ingredients": [
            "banana cake",
            "chopped nuts",
            "cream cheese frosting"
          ]
        },
        {
          "id": 10,
          "itemCount": 1,
          "isLiked": false,
          "name": "German Chocolate",
          "description":
              "Decadent chocolate cake layered with coconut pecan frosting.",
          "price": 27.49,
          "image": "assets/cakes/10.png",
          "category": "Cakes",
          "rating": 4.8,
          "expectedTime": 50.00,
          "ingredients": ["chocolate cake", "coconut pecan frosting"]
        }
      ]
    },
    {
      "categoryName": "Pasta",
      "items": [
        {
          "id": 1,
          "itemCount": 1,
          "isLiked": false,
          "name": "Spaghetti",
          "description":
              "Spaghetti pasta tossed in a creamy sauce made with eggs, pancetta, and Parmesan cheese.",
          "price": 12.99,
          "image": "assets/pasta/1.png",
          "category": "Pasta",
          "rating": 4.8,
          "expectedTime": 25.00,
          "ingredients": [
            "spaghetti pasta",
            "eggs",
            "pancetta",
            "Parmesan cheese"
          ]
        },
        {
          "id": 2,
          "itemCount": 1,
          "isLiked": false,
          "name": "Fettuccine",
          "description":
              "Fettuccine pasta tossed in a creamy Alfredo sauce made with butter, cream, and Parmesan cheese.",
          "price": 13.49,
          "image": "assets/pasta/2.png",
          "category": "Pasta",
          "rating": 4.7,
          "expectedTime": 30.00,
          "ingredients": [
            "fettuccine pasta",
            "butter",
            "cream",
            "Parmesan cheese"
          ]
        },
        {
          "id": 3,
          "itemCount": 1,
          "isLiked": false,
          "name": "Arrabbiata",
          "description":
              "Penne pasta tossed in a spicy tomato sauce made with garlic, chili flakes, and fresh basil.",
          "price": 11.99,
          "image": "assets/pasta/3.png",
          "category": "Pasta",
          "rating": 4.6,
          "expectedTime": 28.00,
          "ingredients": [
            "penne pasta",
            "garlic",
            "chili flakes",
            "tomato sauce",
            "fresh basil"
          ]
        },
        {
          "id": 4,
          "itemCount": 1,
          "isLiked": false,
          "name": "Lasagna",
          "description":
              "Layers of lasagna noodles, ground beef, marinara sauce, and ricotta cheese topped with melted mozzarella.",
          "price": 14.99,
          "image": "assets/pasta/4.png",
          "category": "Pasta",
          "rating": 4.9,
          "expectedTime": 35.00,
          "ingredients": [
            "lasagna noodles",
            "ground beef",
            "marinara sauce",
            "ricotta cheese",
            "mozzarella cheese"
          ]
        },
        {
          "id": 5,
          "itemCount": 1,
          "isLiked": false,
          "name": "Ravioli",
          "description":
              "Delicate ravioli stuffed with ricotta cheese and spinach, served with marinara sauce.",
          "price": 12.49,
          "image": "assets/pasta/5.png",
          "category": "Pasta",
          "rating": 4.8,
          "expectedTime": 27.00,
          "ingredients": [
            "ravioli",
            "ricotta cheese",
            "spinach",
            "marinara sauce"
          ]
        },
        {
          "id": 6,
          "itemCount": 1,
          "isLiked": false,
          "name": "Primavera",
          "description":
              "Assorted vegetables sautéed in garlic and olive oil, tossed with your choice of pasta.",
          "price": 11.49,
          "image": "assets/pasta/6.png",
          "category": "Pasta",
          "rating": 4.7,
          "expectedTime": 26.00,
          "ingredients": ["assorted vegetables", "garlic", "olive oil", "pasta"]
        },
        {
          "id": 7,
          "itemCount": 1,
          "isLiked": false,
          "name": "Shrimp Scampi",
          "description":
              "Shrimp sautéed in garlic butter and white wine, served over linguine pasta.",
          "price": 15.99,
          "image": "assets/pasta/7.png",
          "category": "Pasta",
          "rating": 4.8,
          "expectedTime": 32.00,
          "ingredients": [
            "shrimp",
            "garlic butter",
            "white wine",
            "linguine pasta"
          ]
        },
        {
          "id": 8,
          "itemCount": 1,
          "isLiked": false,
          "name": "Pesto Pasta",
          "description":
              "Penne pasta tossed in a vibrant pesto sauce made with fresh basil, pine nuts, garlic, Parmesan cheese, and olive oil.",
          "price": 10.99,
          "image": "assets/pasta/8.png",
          "category": "Pasta",
          "rating": 4.6,
          "expectedTime": 25.00,
          "ingredients": [
            "penne pasta",
            "basil",
            "pine nuts",
            "garlic",
            "Parmesan cheese",
            "olive oil"
          ]
        },
        {
          "id": 9,
          "itemCount": 1,
          "isLiked": false,
          "name": "Linguine",
          "description":
              "Linguine pasta served with a savory clam sauce made with garlic, white wine, butter, and parsley.",
          "price": 13.49,
          "image": "assets/pasta/9.png",
          "category": "Pasta",
          "rating": 4.7,
          "expectedTime": 28.00,
          "ingredients": [
            "linguine pasta",
            "clams",
            "garlic",
            "white wine",
            "butter",
            "parsley"
          ]
        },
        {
          "id": 10,
          "itemCount": 1,
          "isLiked": false,
          "name": "Pappardelle",
          "description":
              "Wide pappardelle pasta served with a rich and earthy wild mushroom sauce, flavored with garlic, thyme, and a touch of cream.",
          "price": 14.99,
          "image": "assets/pasta/10.png",
          "category": "Pasta",
          "rating": 4.8,
          "expectedTime": 30.00,
          "ingredients": [
            "pappardelle pasta",
            "wild mushrooms",
            "garlic",
            "thyme",
            "cream"
          ]
        },
      ]
    }
  ];

  // {
  //   "id": 8,
  // 'itemCount': 1,
  //   "name": "Kale Salad",
  //   "description":
  //       "Fresh kale, cranberries, almonds, and goat cheese tossed in a lemon vinaigrette.",
  //   "price": 8.99,
  //   "image": "assets/images/kale_salad.jpg",
  //   "category": "Salads",
  //   "rating": 4.6,
  // "expectedTime" : 1.003,
  //   "ingredients": [
  //     "kale",
  //     "cranberries",
  //     "almonds",
  //     "goat cheese",
  //     "lemon vinaigrette"
  //   ]
  // },
  // {
  //   "id": 9,
  // 'itemCount': 1,
  //   "name": "Taco Salad",
  //   "description":
  //       "Crispy tortilla bowl filled with seasoned ground beef, lettuce, tomatoes, cheese, and salsa.",
  //   "price": 9.99,
  //   "image": "assets/images/taco_salad.jpg",
  //   "category": "Salads",
  //   "rating": 4.4,
  // "expectedTime" : 1.009,
  //   "ingredients": [
  //     "tortilla bowl",
  //     "seasoned ground beef",
  //     "lettuce",
  //     "tomatoes",
  //     "cheese",
  //     "salsa"
  //   ]
  // },
  // Add more salads as needed
}
