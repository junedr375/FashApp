import 'package:flutter/material.dart';
//My files
import 'package:app5/components/cart_products.dart';


class Cart extends StatefulWidget {
	@override
	_CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
	@override
	Widget build(BuildContext context) {
		return  Scaffold(
			resizeToAvoidBottomPadding: false,
			
      appBar: new AppBar(
        elevation: 10.0,
        backgroundColor: Colors.red,
        title: Text('Cart'),
        actions: <Widget> [
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white),//Icons
            onPressed: (){}),//IconButton
        ],//Widget
      ),//AppBar
      body: new Cart_products(),
      bottomNavigationBar: new Container(
      	color: Colors.white,
      	child: Row(
      		children: <Widget>[
      			Expanded(
      				child:ListTile(
      					title: new Text("Total:"),
      					subtitle: new Text("\$234"),
      				),//ListTile
      			),//Expanded
      			Expanded(
      				child: new MaterialButton(
      					onPressed: (){},
      					child: new Text("Check out", style: TextStyle(color: Colors.white,)),
      					color: Colors.red,  
      				),//MaterialButton
      			),//Expanded
      		],//Widget[]
      	),//Row
      )//Container
    );//Scaffold
	}
}
