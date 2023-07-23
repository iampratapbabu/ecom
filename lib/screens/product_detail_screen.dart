import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';
  var myRouteData = {};

  @override
  Widget build(BuildContext context) {

    //print(ModalRoute.of(context)?.settings.arguments as Map);

    myRouteData = ModalRoute.of(context)?.settings.arguments as Map;
    print(myRouteData);

    return Scaffold(
      appBar: AppBar(
        title: Text( myRouteData['title']),
      ),
    );
  }
}
