import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//providers for global state management
import './providers/products.dart';

//screens for routing
import 'screens/product_overview_screen.dart';
import 'screens/product_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx)=>Products(),
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          hintColor:Colors.deepOrange,
          fontFamily: 'Lato'
        ),
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName:(ctx)=>ProductDetailScreen()
        },
      ),
    );
  }
}

