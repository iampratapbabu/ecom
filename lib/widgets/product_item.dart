import 'package:flutter/material.dart';
import '../screens/product_detail_screen.dart';


class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id,this.title,this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GridTile(

        footer: GridTileBar(
            backgroundColor:Colors.black87,
            leading: IconButton(
              icon:const Icon(Icons.favorite),
              onPressed: () {  },
              color: Theme.of(context).hintColor,
            ),
            title: Text(title,textAlign: TextAlign.center,),
            trailing: IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: (){},
              color: Theme.of(context).hintColor,
            ),
        ),
        child: GestureDetector(
          onTap: (){
            //creating route on the fly
            // Navigator.of(context).push(
            //   MaterialPageRoute(builder: (ctx)=> ProductDetailScreen(title)
            // ),);
            
            Navigator.of(context).pushNamed(
                ProductDetailScreen.routeName,
                arguments: {
                  "id":id,
                  "title":title
                }
            );
          },
          child:Image.network(imageUrl,fit: BoxFit.cover,),
      ),)
    );
  }
}
