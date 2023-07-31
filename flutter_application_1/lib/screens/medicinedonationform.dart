import 'package:flutter/material.dart';

class MedicineDonationForm extends StatefulWidget {
  @override
  _MedicineDonationFormState createState() => _MedicineDonationFormState();
}

class _MedicineDonationFormState extends State<MedicineDonationForm> {
  final _formKey = GlobalKey<FormState>();
  //String _name;
  // String _email;
  // String _phone;
  // String _medicineName;
  // int _quantity;
  // String _address;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine Donation Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  // _name = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Please enter your email address';
                  }
                  return null;
                },
                onSaved: (value) {
                  //    _email = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone',
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
                onSaved: (value) {
                  //  _phone = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Medicine Name',
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Please enter the name of the medicine';
                  }
                  return null;
                },
                onSaved: (value) {
                  // _medicineName = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Quantity',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null) {
                    return 'Please enter the quantity of the medicine';
                  }
                  return null;
                },
                onSaved: (value) {
                  // _quantity = int.parse(value);
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Address',
                ),
                maxLines: 3,
                validator: (value) {
                  if (value == null) {
                    return 'Please enter your address';
                  }
                  return null;
                },
                onSaved: (value) {
                  // _address = value;
                },
              ),
              SizedBox(height: 16.0),
              Center(
                  // child: RaisedButton(
                  // onPressed: _submitForm,
                  // child: Text('Submit'),
                  //),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
