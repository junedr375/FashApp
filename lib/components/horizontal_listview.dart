import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
        Category(
          image_location: 'images/cats/tshirt.png',
          image_caption: 'shirt',
        ),//Category
        Category(
          image_location: 'images/cats/dress.png',
          image_caption: 'dress',
        ),//Category
        Category(
          image_location: 'images/cats/formal.png',
          image_caption: 'formal',
        ),//Category
        Category(
          image_location: 'images/cats/informal.png',
          image_caption: 'informal',
        ),//Category
        Category(
          image_location: 'images/cats/jeans.png',       
          image_caption: 'pant',
        ),//Category
        Category(
          image_location: 'images/cats/shoe.png',
          image_caption: 'shoe',
        ),//Category
        Category(
          image_location: 'images/cats/accessories.png',
          image_caption: 'accessories',
        ),//Category

    
        ],//Widget

      ),//ListView
    );//Container
  }
}
class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 80.0,
          child: ListTile(  
            title: Image.asset(
              image_location,   
              width: 40.0,
              height: 40.0,
            ),//Image.asset
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption, style: new TextStyle(fontSize:12.0),),

            ),//Container 
          ), //ListTile
        ),//Container
      ),//InkWell
    );
  }
}
