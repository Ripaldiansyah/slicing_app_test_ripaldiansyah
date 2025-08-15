import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Hello, Welcome 👋'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 8.0,
              right: 8.0,
              bottom: 8.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello, Welcome 👋",
                            style: TextStyle(fontSize: 14.0),
                          ),

                          Text(
                            "Albert Stevano",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://res.cloudinary.com/dotz74j1p/raw/upload/v1716044979/nr7gt66alfhmu9vaxu2u.png",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6.0,
                          horizontal: 12.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey[400]!,
                          ),
                        ),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.search, color: Colors.grey),
                            ),
                            Expanded(
                              child: TextFormField(
                                initialValue: null,
                                decoration: const InputDecoration.collapsed(
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  hintText: "Search Clothes .. ",
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                                onFieldSubmitted: (value) {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.tune,
                          size: 24.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: ScrollController(),
                  child: Row(
                    children: List.generate(5, (index) {
                      var item = [
                        {"name": "All items", "icon": Icons.dashboard},
                        {"name": "Dress", "icon": Icons.ac_unit_outlined},
                        {"name": "Menu 3", "icon": Icons.ac_unit_outlined},
                        {"name": "Menu 4", "icon": Icons.ac_unit_outlined},
                        {"name": "Menu 5", "icon": Icons.ac_unit_outlined},
                      ];
                      bool selected = index == 0;
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 8.0,
                        ),
                        margin: const EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey[400]!,
                          ),
                          color: selected ? Colors.black : Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                item[index]["icon"] as IconData?,
                                color: index == 0 ? Colors.white : Colors.black,
                                size: 14.0,
                              ),
                              Text(
                                "${item[index]["name"]}",
                                style: TextStyle(
                                  color: index == 0
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 11.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                const SizedBox(height: 20.0),
                GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.0 / 1.4,
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    List<Map<String, dynamic>> products = [
                      {
                        "id": 1,
                        "photo":
                            "https://res.cloudinary.com/dotz74j1p/raw/upload/v1716045560/mq2o8cqtmvaobrnil7xi.png",
                        "product_name": "Frenzy Pizza",
                        "price": 25,
                        "category": "Food",
                        "description":
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        "discount_price": 20,
                        "is_favorite": false,
                      },
                      {
                        "id": 2,
                        "photo":
                            "https://res.cloudinary.com/dotz74j1p/raw/upload/v1716045565/cvx59ia4kvqj2ratfkjs.png",
                        "product_name": "Beef Burger",
                        "price": 22,
                        "category": "Food",
                        "description":
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        "discount_price": 18,
                        "is_favorite": true,
                      },
                      {
                        "id": 3,
                        "photo":
                            "https://images.unsplash.com/photo-1625869016774-3a92be2ae2cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                        "product_name": "Seperait",
                        "price": 33,
                        "category": "Drink",
                        "description":
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        "discount_price": 28,
                        "is_favorite": false,
                      },
                      {
                        "id": 4,
                        "photo":
                            "https://images.unsplash.com/photo-1578160112054-954a67602b88?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
                        "product_name": "Fried Rice",
                        "price": 31,
                        "category": "Food",
                        "description":
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        "discount_price": 25,
                        "is_favorite": true,
                      },
                      {
                        "id": 5,
                        "photo":
                            "https://res.cloudinary.com/dotz74j1p/raw/upload/v1716045569/cpiafx7w5euet8dctcho.png",
                        "product_name": "Terrano Milk",
                        "price": 32,
                        "category": "Drink",
                        "description":
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        "discount_price": 28,
                        "is_favorite": true,
                      },
                      {
                        "id": 6,
                        "photo":
                            "https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                        "product_name": "Fried Chicken",
                        "price": 49,
                        "category": "Food",
                        "description":
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        "discount_price": 45,
                        "is_favorite": false,
                      },
                      {
                        "id": 7,
                        "photo":
                            "https://images.unsplash.com/photo-1525385133512-2f3bdd039054?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
                        "product_name": "Mango Juice",
                        "price": 62,
                        "category": "Drink",
                        "description":
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        "discount_price": 56,
                        "is_favorite": false,
                      },
                      {
                        "id": 8,
                        "photo":
                            "https://images.unsplash.com/photo-1600271886742-f049cd451bba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                        "product_name": "Orange Juice",
                        "price": 56,
                        "category": "Drink",
                        "description":
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        "discount_price": 50,
                        "is_favorite": true,
                      },
                      {
                        "id": 9,
                        "photo":
                            "https://images.unsplash.com/photo-1604085792782-8d92f276d7d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
                        "product_name": "Avocado Juice",
                        "price": 56,
                        "category": "Drink",
                        "description":
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        "discount_price": 50,
                        "is_favorite": true,
                      },
                      {
                        "id": 10,
                        "photo":
                            "https://images.unsplash.com/photo-1622240506921-042a4e71c172?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                        "product_name": "Puncak Coffe",
                        "price": 56,
                        "category": "Drink",
                        "description":
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        "discount_price": 50,
                        "is_favorite": true,
                      },
                    ];
                    var item = products[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(item["photo"]),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(6.0),
                              ),
                            ),
                            child: const Stack(
                              children: [
                                Positioned(
                                  right: 6.0,
                                  top: 8.0,
                                  child: CircleAvatar(
                                    radius: 14.0,
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          item["product_name"],
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          item["category"],
                          style: const TextStyle(fontSize: 12.0),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          "${item["price"]}",
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
