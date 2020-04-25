import 'package:flutter/material.dart';
import 'package:app5/pages/product_details.dart';


class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var products_list = [
    {
      "name": "Blazzer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },

    {
      "name": "Blazzer girl",
      "picture": "images/products/dress2.jpeg",
      "old_price": 300,
      "price": 260,
    },
    {
      "name": "Top",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 100,
      "price": 65,
    },
    {
      "name": "Hill",
      "picture": "images/products/hills1.jpeg",
      "old_price": 80,
      "price": 65,
    },
    {
      "name": "Hill Black",
      "picture": "images/products/hills2.jpeg",
      "old_price": 89,
      "price": 75,
    },
    {
      "name": "Pant",
      "picture": "images/products/pants1.jpg",
      "old_price": 110,
      "price": 89,
    },
    {
      "name": "Pant new",
      "picture": "images/products/pants2.jpeg",
      "old_price": 800,
      "price": 760,
    },
    {
      "name": "Shoe",
      "picture": "images/products/shoe1.jpg",
      "old_price": 459,
      "price": 400,
    },
    {
      "name": "Skirt",
      "picture": "images/products/skt1.jpeg",
      "old_price": 200,
      "price": 187,
    },
    {
      "name": "Skirt New",
      "picture": "images/products/skt2.jpeg",
      "old_price": 150,
      "price": 123,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Single_prod(
            prod_name: products_list[index]['name'],
            prod_picture: products_list[index]['picture'],
            prod_old_price: products_list[index]['old_price'],
            prod_price: products_list[index]['price'],
            ), //Single_prod
          );//Padding
        },
      );//GridView
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({

    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag:prod_name,
        child:Material(
          child: InkWell(
            onTap: ()=> Navigator.of(context).push(
              new MaterialPageRoute(
                builder: (context) => new ProductDetails(
                  //here we are passing the value to ProductDetails
                  prod_detail_name:prod_name ,
                  prod_detail_picture: prod_picture,
                  prod_detail_new_price: prod_price,
                  prod_detail_old_price: prod_old_price,
                  )//ProductDetails
                )//MaterialPageRoute
              ),//Navigator
            

            child: GridTile(
              footer: Container(
                color: Colors.white70,  
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    ),//Text
                  title: Text("\$$prod_price",
                    style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.w800,
                      ),//TextStyle
                    ),//Text
                  subtitle: Text("\$$prod_old_price",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.lineThrough,
                      ),//TextStyle
                    ),//Text
                  ),//ListTile
                ),//Container
              child:Image.asset(prod_picture,
              fit: BoxFit.cover),//Image.asset
              ),//GriddTile
            ),//InkWell
          ),//Material
        ),//Hero

    );//Card
  }
}

