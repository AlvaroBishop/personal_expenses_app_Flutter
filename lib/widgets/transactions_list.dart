import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_expenses_app/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;

  const TransactionList({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transaction.map((e) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purple,
                    width: 2,
                  ),
                ),
                child: Text(
                  '\$${e.amount}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    e.title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    DateFormat.yMMMd().format(e.date),
                    style: const TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
