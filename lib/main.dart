import 'package:flutter/material.dart';
import 'package:tuan2/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

// class MoHon {
//   const MoHon({required this.name});
//
//   final String name;
// }
//
// typedef CartChangedCallback = Function(MoHon product, bool inCart);
//
// class MoHonListItem extends StatelessWidget {
//   MoHonListItem({
//     required this.product,
//     required this.inCart,
//     required this.onCartChanged,
//   }) : super(key: ObjectKey(product));
//
//   final MoHon product;
//   final bool inCart;
//   final CartChangedCallback onCartChanged;
//
//   Color _getColor(BuildContext context) {
//
//     return inCart //
//         ? Colors.black54
//         : Theme.of(context).primaryColor;
//   }
//
//   TextStyle? _getTextStyle(BuildContext context) {
//     if (!inCart) return null;
//
//     return const TextStyle(
//       color: Colors.black54,
//       decoration: TextDecoration.lineThrough,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       onTap: () {
//         onCartChanged(product, inCart);
//       },
//       leading: CircleAvatar(
//         backgroundColor: _getColor(context),
//         child: Text(product.name[0]),
//       ),
//       title: Text(
//         product.name,
//         style: _getTextStyle(context),
//       ),
//     );
//   }
// }
//
// class MoHonList extends StatefulWidget {
//   const MoHonList({required this.products, super.key});
//
//   final List<MoHon> products;
//
//   @override
//   State<MoHonList> createState() => _MoHonListState();
// }
//
// class _MoHonListState extends State<MoHonList> {
//   final _shoppingCart = <MoHon>{};
//
//   void _handleCartChanged(MoHon product, bool inCart) {
//     setState(() {
//       // When a user changes what's in the cart, you need
//       // to change _shoppingCart inside a setState call to
//       // trigger a rebuild.
//       // The framework then calls build, below,
//       // which updates the visual appearance of the app.
//
//       if (!inCart) {
//         _shoppingCart.add(product);
//       } else {
//         _shoppingCart.remove(product);
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Mỏ hỗn'),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.symmetric(vertical: 8.0),
//         children: widget.products.map((product) {
//           return MoHonListItem(
//             product: product,
//             inCart: _shoppingCart.contains(product),
//             onCartChanged: _handleCartChanged,
//           );
//         }).toList(),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(const MaterialApp(
//     title: 'Mo Hon App',
//     home: MoHonList(
//       products: [
//         MoHon(name: 'Lan Anh'),
//         MoHon(name: 'Pé Nhím'),
//         MoHon(name: 'Vẫn là Pé Nhím nhưng dòng 3'),
//       ],
//     ),
//   ));
// }
