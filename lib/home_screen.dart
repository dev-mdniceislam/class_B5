import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

List<Map<String, String>> productList = [
  {
    "title": "Wireless Noise-Canceling Headphones",
    "image": "https://picsum.photos/300/300?random=1",
    "discountRate": "1200",
    "dailyRate": "1900",
  },
  {
    "title": "Ergonomic Office Chair",
    "image": "https://picsum.photos/300/300?random=2",
    "discountRate": "900",
    "dailyRate": "1300",
  },
  {
    "title": "4K Ultra HD Action Camera",
    "image": "https://picsum.photos/300/300?random=3",
    "discountRate": "400",
    "dailyRate": "600",
  },
  {
    "title": "Portable Camping Tent (4-Person)",
    "image": "https://picsum.photos/300/300?random=4",
    "discountRate": "450",
    "dailyRate": "900",
  },
];
List<Map<String, dynamic>> categoryData = [
  {
    "id": 1,
    "title": "Electronics",
    "url":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHWzSPCDLlmwcb0Q_hnOpZsyc4oU0P2YPYQ58zMTIW-w&s=10",
  },
  {
    "id": 2,
    "title": "Fashion",
    "url":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHWzSPCDLlmwcb0Q_hnOpZsyc4oU0P2YPYQ58zMTIW-w&s=10",
  },
  {
    "id": 3,
    "title": "Home & Kitchen",
    "url":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHWzSPCDLlmwcb0Q_hnOpZsyc4oU0P2YPYQ58zMTIW-w&s=10",
  },
  {
    "id": 4,
    "title": "Beauty & Care",
    "url":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHWzSPCDLlmwcb0Q_hnOpZsyc4oU0P2YPYQ58zMTIW-w&s=10",
  },
  {
    "id": 5,
    "title": "Sports & Fitness",
    "url":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHWzSPCDLlmwcb0Q_hnOpZsyc4oU0P2YPYQ58zMTIW-w&s=10",
  },
  {
    "id": 6,
    "title": "Books & Stationery",
    "url":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHWzSPCDLlmwcb0Q_hnOpZsyc4oU0P2YPYQ58zMTIW-w&s=10",
  },
  {
    "id": 7,
    "title": "Groceries",
    "url":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHWzSPCDLlmwcb0Q_hnOpZsyc4oU0P2YPYQ58zMTIW-w&s=10",
  },
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: Icon(Icons.menu),
        title: Row(
          spacing: 5,
          children: [
            Text(
              "Dokani",
              style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
            Text(
              "Bahe",
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
          ],
        ),
        actions: [
          Badge.count(
            count: 3,
            child: Icon(Icons.shopping_cart_outlined, size: 28),
          ),
          SizedBox(width: 5),
        ],
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 50),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search_outlined, size: 32),
                hintText: "Search for products..",
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                items:
                    [
                          "https://cdn.vectorstock.com/i/1000v/15/79/summer-sale-banner-with-product-display-vector-37941579.jpg",
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStGJAtdmjc4OQPIP7tpBeQ27U14e2d3f-Ak1rPj8QV-Nd-Q3c0SRskMdtZ&s=10",
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa8Hthi73oCbcrAD7CNJos3_-sQq0GT2qlsYH-ehllVs7STS_mdLdrc9Q&s=10",
                        ]
                        .map(
                          (v) => Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(v),
                                  ),
                                ),
                                width: MediaQuery.sizeOf(context).width,
                              ),
                              Positioned(
                                bottom: 18,
                                left: 18,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 30,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Shop Now",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                        .toList(),
                options: CarouselOptions(
                  height: 150,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(height: 10),

              SectionHeader(
                title: 'Categories',
                subtitle: 'View all',
                ontap: () {
                  log("================pressed");
                },
              ),
              SizedBox(height: 10),

              SizedBox(
                height: 85,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: categoryData.length,
                  itemBuilder: (context, index) {
                    final data = categoryData[index];
                    if (index == categoryData.length - 1) {
                      return _categoriesFormate(
                        title: "More",
                        url:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqJgD2iS_fYoNdPhVgAcdXoZdVPPF_epGFInWXZYGSWA&s=10",
                      );
                    }
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: _categoriesFormate(
                        title: data['title'],
                        url: data['url'],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),

              SectionHeader(
                title: "Featured Products",
                subtitle: "View all",
                ontap: () {},
              ),

              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    final data = productList[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ProductWidget(
                        title: data['title'] ?? "",
                        image:
                            data['image'] ??
                            "data:image/jpeg;base64,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",
                        discountRate: data['discountRate'] ?? "",
                        dailyRate: data['dailyRate'] ?? "",
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column _categoriesFormate({String? url, String? title}) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.grey.withAlpha(70),
          backgroundImage: NetworkImage(
            url ??
                "data:image/jpeg;base64,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",
          ),
        ),
        Text(
          title ?? "",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.title,
    required this.image,
    required this.discountRate,
    required this.dailyRate,
  });
  final String title;
  final String image;
  final String discountRate;
  final String dailyRate;

  @override
  Widget build(BuildContext context) {
    final percent = (int.parse(discountRate) / int.parse(dailyRate)) * 100;
    return Container(
      height: 150,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Colors.grey.withAlpha(90), width: 1),
      ),
      child: Column(
        children: [
          Image.network(
            height: 70,
            width: MediaQuery.sizeOf(context).width,
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbhrEGf5jl3g80jHSsCuqe_Txo9rKNuiS8pzHKKTbLHQ&s",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Column(
              children: [
                Text(
                  maxLines: 1,
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "\$",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      discountRate,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$$dailyRate",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.lineThrough,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "${percent.toString().substring(0, 4)}%",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    required this.subtitle,
    required this.ontap,
  });
  final String title;
  final String subtitle;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextButton(
          onPressed: ontap,
          child: Text(
            subtitle,
            style: TextStyle(
              color: Colors.orange,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
