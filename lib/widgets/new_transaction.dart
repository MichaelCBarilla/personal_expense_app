import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function newTransactionHandler;

  NewTransaction(this.newTransactionHandler);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              controller: titleController,
              // onChanged: (textFieldValue) => titleInput = textFieldValue,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'amount',
              ),
              controller: amountController,
              // onChanged: (textFieldValue) => amountInput = textFieldValue,
            ),
            FlatButton(
              onPressed: () => newTransactionHandler(
                titleController.text,
                double.parse(amountController.text),
              ),
              child: Text('Add Transaction'),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
