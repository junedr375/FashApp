import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//My files
import 'package:app5/components/horizontal_listview.dart';
import 'package:app5/components/products.dart';
import 'package:app5/pages/cart.dart';



class HomePage extends StatefulWidget {
  @override 
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/c1.jpg'),
        AssetImage('images/m1.jpeg'),
        AssetImage('images/m2.jpg'),
        AssetImage('images/w1.jpeg'),
        AssetImage('images/w3.jpeg'),
        AssetImage('images/w4.jpeg'),
      ],
      autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      dotColor: Colors.grey,
      indicatorBgPadding: 2.0,
    ),//Carousel
  );//Container


    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        elevation: 10.0,
        backgroundColor: Colors.red,
        title: new Text('FashApp'),
        actions: <Widget> [
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white),//Icons
            onPressed: (){}),//IconButton
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white),//Icon
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
            }),//IconButton
        ],//Widget
      ),//AppBar
      drawer: new Drawer(
        child: new ListView( 
          children: <Widget>[
//          Header
          new UserAccountsDrawerHeader(
            accountName: Text('Juned Raza'),
            accountEmail: Text('junedr375@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color:Colors.white),
              ),//CircleAvatar
            ),//GestureDetector
            decoration: new BoxDecoration(
              color: Colors.red,
            ),//BoxDecoration
          ),//UserAccountsDrawerHeader
//          body

          InkWell(
            onTap:(){ Navigator.push(context, MaterialPageRoute(builder:(context)=>new HomePage()));
            },
            child: ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home,color: Colors.lightGreen,),

            ),//ListTile
          ),//InkWell
          InkWell(
            onTap:(){},
            child: ListTile(
              title: Text('My Account'),
              leading: Icon(Icons.person,color: Colors.brown,),
            ),//ListTile
          ),//InkWell
          InkWell(
            onTap:(){},
            child: ListTile(
              title: Text('My Orders'),
              leading: Icon(Icons.shopping_basket,color: Colors.indigo,),

            ),//ListTile
          ),//InkWell
          InkWell(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
              },
            child: ListTile(
              title: Text('Shopping Cart'),
              leading: Icon(Icons.shopping_cart,
                color: Colors.pink,
              ),//Icons

            ),//ListTile
          ),//InkWell
          InkWell(
            onTap:(){},
            child: ListTile(
              title: Text('Favourites'),
              leading: Icon(Icons.favorite, color: Colors.red,),

            ),//ListTile
          ),//InkWell
          Divider(),
          InkWell(
            onTap:(){},
            child: ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings, color: Colors.blue,),

            ),//ListTile   
          ),//InkWell
          InkWell(
            onTap:(){},
            child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.help, color: Colors.green,),

            ),//ListTile
          ),//InkWell
          ],//Widget
        ),//ListView
      ),//Drawer
      body: new ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,
          //padding widget
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Category'),
          ),//Padding

          //Horizontal list view begins here
          HorizontalList(),
           //padding widget
          new Padding(
            padding: const EdgeInsets.all(20.0),
            child: new Text('Recent Products'),
          ),//Padding

          //gridView
          Container(
            height: 320.0,
            child: Products(),
          ),//Container

        ],//Widget
      ),//ListView
    );//Scaffold
  }
}
 