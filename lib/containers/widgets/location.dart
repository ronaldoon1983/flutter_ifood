import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
            Text(
            'ENTREGAR EM',
            style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w700,
            fontSize: 16,
            ),
            
            ),
            Row(
              children: <Widget>[
                TextFormField(
  decoration: const InputDecoration(
    icon: Icon(Icons.person),
    hintText: 'What do people call you?',
    labelText: 'Name *',
  ),
  onSaved: (String value) {
    // This optional block of code can be used to run
    // code when the user saves the form.
  },
  validator: (String value) {
    return value.contains('@') ? 'Do not use the @ char.' : null;
  },
),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
