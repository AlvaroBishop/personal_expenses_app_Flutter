import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  NewTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              controller: titleController,
              // onChanged: (value) => titleInput = value,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Amount'),
              controller: amountController,
              // onChanged: (value) => amountInput = value,
            ),
            TextButton(
              onPressed: () {
                print(titleController);
                print(amountController);
              },
              style: TextButton.styleFrom(foregroundColor: Colors.purple),
              child: const Text('Add Transaction'),
            )
          ],
        ),
      ),
    );
  }
}
