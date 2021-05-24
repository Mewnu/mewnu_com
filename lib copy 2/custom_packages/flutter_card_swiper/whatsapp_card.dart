// import 'package:flutter/material.dart';
// import 'package:mewnu/models/carts/cart_manager.dart';
// import 'package:provider/provider.dart';
// import 'package:url_launcher/url_launcher.dart';
// // import 'dart:js' as js;
// import 'package:flutter/foundation.dart' show kIsWeb;
// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // import 'package:mewnu/common/empty_card.dart';
// // import 'package:mewnu/common/login_card.dart';
// // import 'package:mewnu/common/price_card.dart';
// // import 'package:mewnu/models/cart_manager.dart';
// import 'package:mewnu/models/user/user_manager.dart';
// // import 'package:mewnu/screens/carts_address/address_screen.dart';
// // import 'package:mewnu/screens/carts_cart/components/cart_tile.dart';
// // import 'package:social_share/social_share.dart';

// import 'package:mewnu/models/companies/company.dart';

// class WhatsappCard extends StatelessWidget {
//   const WhatsappCard({this.buttonText, this.onPressed});

//   final String buttonText;
//   final bool onPressed;

//   @override
//   Widget build(BuildContext context) {
//     final userManager = context.watch<UserManager>();
//     final cartManager = context.watch<CartManager>();
//     // final categoryManager = context.watch<CategoryManager>();
//     final productsPrice = cartManager.productsPrice;
//     final deliveryPrice = cartManager.deliveryPrice;
//     final totalPrice = cartManager.totalPrice;
//     final Company company = Provider.of(context, listen: false);
//     void launchWhatsapp() async {
//       String produto = '';
//       // for (int i = 0; i < cartManager.items.length; i++) {
//       //   produto += '- ${cartManager.items[i].product.name}\n' +
//       //       '  - Medida: ${cartManager.items[i].size}\n' +
//       //       '  - Valor: ${cartManager.items[i].unitPrice.toStringAsFixed(2)}\n' +
//       //       '  - Quantidade: ${cartManager.items[i].quantity}\n';
//       // }

//       // String number = '+5562994904574';
//       String msg = 'Nome do cliente: kevin';

//       String url = 'whatsapp://send?phone=${company.whats}&text=$msg';
//       if (kIsWeb) {
//         // js.context.callMethod("open", [url]);
//       } else {
//         await canLaunch(url) ? launch(url) : print('cant open whatsapp');
//       }
//     }

//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
//       child: Padding(
//         padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             const Text(
//               'Resumo do Pedido',
//               textAlign: TextAlign.start,
//               style: TextStyle(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 16,
//               ),
//             ),
//             const SizedBox(
//               height: 12,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 const Text('Subtotal'),
//                 Text('R\$ ${productsPrice.toStringAsFixed(2)}')
//               ],
//             ),
//             const SizedBox(
//               height: 4.0,
//             ),
//             const Divider(),
//             // if (deliveryPrice != null) ...[
//             //   Row(
//             //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //     children: <Widget>[
//             //       const Text('Entrega'),
//             //       Text('R\$ ${deliveryPrice.toStringAsFixed(2)}')
//             //     ],
//             //   ),
//             //   const Divider(),
//             // ],
//             // const SizedBox(
//             //   height: 12,
//             // ),
//             // Row(
//             //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //   children: <Widget>[
//             //     const Text(
//             //       'Total',
//             //       style: TextStyle(fontWeight: FontWeight.w500),
//             //     ),
//             //     Text(
//             //       'R\$ ${totalPrice.toStringAsFixed(2)}',
//             //       style: TextStyle(
//             //         color: Theme.of(context).accentColor,
//             //         fontWeight: FontWeight.bold,
//             //         fontSize: 16,
//             //       ),
//             //     )
//             //   ],
//             // ),

//             ElevatedButton(
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.resolveWith<Color>(
//                   (Set<MaterialState> states) {
//                     return Theme.of(context).accentColor;
//                   },
//                 ),
//                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                   RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(26.0),
//                   ),
//                 ),
//               ),
//               onPressed: onPressed
//                   ? () async {
//                       await launchWhatsapp();
//                     }
//                   : null,
//               child: Text(buttonText),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
