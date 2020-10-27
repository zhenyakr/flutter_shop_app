import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './pages/product_detail_page.dart';
import './pages/products_overview_page.dart';
import './providers/products_provider.dart';
import './providers/cart.dart';
import './pages/cart_page.dart';
import './pages/edit_product_page.dart';
import './pages/orders_page.dart';
import './pages/user_products_page.dart';
import './providers/orders.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Orders(),
        ),
      ],
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewPage(),
        routes: {
          ProductDetailPage.routeName: (ctx) => ProductDetailPage(),
          CartPage.routeName: (ctx) => CartPage(),
          OrdersPage.routeName: (ctx) => OrdersPage(),
          UserProductsPage.routeName: (ctx) => UserProductsPage(),
          EditProductPage.routeName: (ctx) => EditProductPage(),
        },
      ),
    );
  }
}
