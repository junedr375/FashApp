import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
	@override
	_Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
	var Products_on_the_cart = [
	 {
      "name": "Blazzer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Shoe",
      "picture": "images/products/shoe1.jpg",
      "price": 400,
      "size": "7",
      "color": "Red",
      "quantity": 1,
    },
	];

	@override
	Widget build(BuildContext context) {
		return new ListView.builder(
			itemCount: Products_on_the_cart.length,
			itemBuilder: (context, index){
				return Single_cart_product(
					cart_prod_name: Products_on_the_cart[index]["name"],
					cart_prod_color: Products_on_the_cart[index]["color"],
					cart_prod_qty: Products_on_the_cart[index]["quantity"],
					cart_prod_size: Products_on_the_cart[index]["size"],
					cart_prod_price: Products_on_the_cart[index]["price"],
					cart_prod_picture: Products_on_the_cart[index]["picture"],
				);//Single_cart_product
			});//ListView
	}
}

class Single_cart_product extends StatelessWidget {
	final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
  	this.cart_prod_name,
  	this.cart_prod_picture,
  	this.cart_prod_price,
  	this.cart_prod_size,
  	this.cart_prod_color,
  	this.cart_prod_qty,
  });

	@override
	Widget build(BuildContext context) {
		return Card(
			child: ListTile(
		//============LEADING SECTION===========
				leading: new Image.asset(cart_prod_picture,width: 80.0,height: 80.0),
		//===============TITLE SECTION==================
				title: new Text(cart_prod_name),
		//================SUBTITLE SECTION =============	
				subtitle: new Column(
					children: <Widget>[
						//ROW INSIDE Column
						new Row(
							children: <Widget>[
		//==============================This is for size================================
								Padding(
									padding: const EdgeInsets.all(0.0),
									child: new Text("Size:"),
								),//Padding
								Padding(
									padding: const EdgeInsets.all(2.0),
									child: new Text(cart_prod_size, style: TextStyle(color: Colors.red),),
								),//Padding
		//=======================This is for Color========================================	
								Padding(
									padding: const EdgeInsets.fromLTRB(5.0,8.0,8.0,8.0),
									child: new Text("Color:"),
								),//Padding
								Padding(
									padding: const EdgeInsets.fromLTRB(5.0,8.0,8.0,8.0),
									child: new Text(cart_prod_color, style: TextStyle(color: Colors.red),),
								),//Padding
	
	//=========================This is for add or delete product=========================
								new Column(
									children: <Widget>[
										Padding(
											padding: const EdgeInsets.all(0.0),
											child: new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
										),//Padding
										Padding(
											padding:  const EdgeInsets.all(0.0),
											child: new Text("${cart_prod_qty}"),
										),//Padding
										Padding(
											padding: const EdgeInsets.all(0.0),
											child: new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
										),//Padding
									],//Widget
								),//Column							
							],//<Widget>
						),//Row
//==========THIS SECTION IS FOR PRICE==============
							new Container(
							alignment: Alignment.topLeft,
							child: new Text("\$${cart_prod_price}",
								style: TextStyle(
									fontSize: 17.0,
									fontWeight: FontWeight.bold,
									color: Colors.red,
								),//TextStyle
							),//Text,
						),//Container
					],//<Widget> (main)	
				),//Column
			),//ListTile	
		);//Card 
	}
}
