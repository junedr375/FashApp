import 'package:flutter/material.dart';

import 'package:app5/pages/home.dart';


class ProductDetails extends StatefulWidget {
  final prod_detail_name;
  final prod_detail_picture;
  final prod_detail_new_price;
  final prod_detail_old_price;

  ProductDetails({
    this.prod_detail_name,
    this.prod_detail_picture,
    this.prod_detail_new_price,
    this.prod_detail_old_price,
  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 1.0,
        backgroundColor: Colors.red,
        title: InkWell(
          onTap:(){ Navigator.push(context, MaterialPageRoute(builder:(context)=>new HomePage()));
          },
          child:Text('FashApp'),
          ),//InkWell
        actions: <Widget> [
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white),//Icons
            onPressed: (){}),//IconButton
        ],//Widget
      ),//AppBar
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child:Container(
                color: Colors.white,
                child: Image.asset(widget.prod_detail_picture),
                ),//Container 
                footer: new Container(   
                  color: Colors.white70,          
                  child: ListTile(   
                    leading: new Text(widget.prod_detail_name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        ),//TextStyle
                      ),//Text
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("\$${widget.prod_detail_old_price}",
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough, 
                              ),//TextStyle
                            ),//Text
                        ),//Expanded
                        Expanded(
                          child: new Text("\$${widget.prod_detail_new_price}",
                            style: TextStyle(fontWeight: FontWeight.bold,
                              color: Colors.red,
                              ),//TextStyle
                            ),//Text
                        ),//Expanded
                      ],//Widget
                  ),//Row
                )//ListTile
              ),//Container
            ),//GridTile
          ),//Container
//================The first Buttons===============

          Row(
            children: <Widget>[
//      ===========The size Button =======
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                      builder:(context){
                        return new AlertDialog(
                          title: new Text("Size"),
                          content: new Text("Choose the Size"),
                          actions: <Widget>[
                            new MaterialButton(onPressed:(){
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("Close"),
                            ),//MaterialButton
                          ],//Widget
                        );//AlertDialog
                      });//showDialog
                    },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Size")
                      ),//Expanded
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),//Expanded
                    ],//Widget
                  ),//Row
                ),//MaterialButton
              ),//Expanded

//      ===========The Color Button=======
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                      builder:(context){
                        return new AlertDialog(
                          title: new Text("Colors"),
                          content: new Text("Choose a Color"),
                          actions: <Widget>[
                            new MaterialButton(onPressed:(){
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("Close"),
                            ),//MaterialButton
                          ],//Widget
                        );//AlertDialog
                      });//showDialog
                    },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Color")
                      ),//Expanded
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),//Expanded
                    ],//Widget
                  ),//Row
                ),//MaterialButton
              ),//Expanded 

//      ===========The Quantity Button=======
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                      builder:(context){
                        return new AlertDialog(
                          title: new Text("Quantity"),
                          content: new Text("Choose number of Quantity"),
                          actions: <Widget>[
                            new MaterialButton(onPressed:(){
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("Close"),
                            ),//MaterialButton
                          ],//Widget
                        );//AlertDialog
                      });//showDialog
                    },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Qty")
                      ),//Expanded
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),//Expanded
                    ],//Widget
                  ),//Row
                ),//MaterialButton
              ),//Expanded



            ],//Widget
          ),//Row
//================The Second Buttons===============

          Row(
            children: <Widget>[
//      ===========The size Button =======
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy Now"),
                  ),//MaterialButton
                ),//Expanded
                new IconButton(
                  icon: Icon(Icons.add_shopping_cart,
                    color: Colors.red,
                    ),//Icon
                  onPressed:(){},
                ),//IconButton
                new IconButton(
                  icon: Icon(Icons.favorite_border,
                    color: Colors.red,
                    ),//Icon
                  onPressed:(){},
                ),//IconButton
              ],//Widget
            ),//Row
          Divider(),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae facilis dolorem fuga esse expedita saepe impedit distinctio obcaecati nam illum quasi iusto sed sequi laudantium dicta delectus, fugiat atque quibusdam.</div><div>Vel accusantium alias quo sit, rerum corrupti maxime facere officiis quam cumque ad iure, itaque quidem velit reiciendis commodi reprehenderit, laboriosam deserunt rem ea suscipit quis magnam. Et aliquid, quo.</div>")
          ),//ListTile
          Divider(),
  //=======Product name===========
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                child: new Text("Product name",
                  style: TextStyle(color: Colors.grey),
                ),//Text
              ),//Padding
              Padding(padding: EdgeInsets.all(5.0),
                child:new Text(widget.prod_detail_name),
                ),//Padding
            ],//Widget
           ),//Row
  //=======Product Brand===========
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                child: new Text("Product Brand",
                  style: TextStyle(color: Colors.grey),
                ),//Text
              ),//Padding
              Padding(padding: EdgeInsets.all(5.0),
                child:new Text("Brand J"),
                ),//Padding
            ],//Widget
           ),//Row
  //=======Product condition===========
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                child: new Text("Product condition",
                  style: TextStyle(color: Colors.grey),
                ),//Text
              ),//Padding
              Padding(padding: EdgeInsets.all(5.0),
                child:new Text("New"),
                ),//Padding
            ],//Widget
           ),//Row
          Divider(),
//Similar Product section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Similar Products'),
          ),//Padding

          Container(
            height: 360.0,
            child: Similar_products(),
          ),//Container
        ],//Widget
      ),//ListView
    );//Scaffold
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return Similar_single_prod(
          prod_name: products_list[index]['name'],
          prod_picture: products_list[index]['picture'],
          prod_old_price: products_list[index]['old_price'],
          prod_price: products_list[index]['price'],
          ); //Single_prod
        },
      );//GridView
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({

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


