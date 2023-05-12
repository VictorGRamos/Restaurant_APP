import 'package:flutter/material.dart';
import 'package:panucci_ristorante/components/order_item.dart';
import 'package:panucci_ristorante/components/payment_method.dart';
import 'package:panucci_ristorante/components/payment_total.dart';
import 'package:panucci_ristorante/components/sections/checkout_title.dart';

import '../../cardapio.dart';

class CheckoutList extends StatelessWidget {
  const CheckoutList({super.key});
  final List items = pedido;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CheckoutTitle(title: 'Pedido')
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: OrderItem(
                  itemTitle: items[index]["name"],
                  itemPrice: items[index]["price"],
                  imageURI: items[index]["image"],
                ),
              );
            }, childCount: items.length),
          ),
          const SliverToBoxAdapter(
            child: CheckoutTitle(title: 'Pagamento')
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return const Padding(
                  padding: EdgeInsets.only(bottom: 10.0, left: 6.0),
                  child: PaymentMethod());
            }, childCount: 1),
          ),
          const SliverToBoxAdapter(
            child: CheckoutTitle(title: 'Confirmar')
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return const Padding(
                padding: EdgeInsets.only(bottom: 8.0, left: 6.0, right: 6),
                child: PaymentTotal()
              );
            }, childCount: 1),
          ),
        ],
      ),
    );
  }
}
