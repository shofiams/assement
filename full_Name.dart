import 'package:flutter/material.dart';
import 'package:helloworld/ui/produk_detail.dart'; // Pastikan impor ini benar dan sesuai dengan struktur proyek Anda.

class FullName extends StatefulWidget {
  const FullName({Key? key}) : super(key: key);

  @override
  State<FullName> createState() => _FullNameState();
}

class _FullNameState extends State<FullName> {
  bool isAgree = false; // Tambahkan variabel isAgree

  final OutlineInputBorder border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
      color: Colors.blue,
      width: 2.0,
    ),
  );

  final _fullNameTextboxController = TextEditingController();
  final _emailTextboxController = TextEditingController();
  final _phoneNumberTextboxController = TextEditingController();
  final _personalIDTextboxController = TextEditingController();
  final _addressTextboxController = TextEditingController();
  final _dateTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Personal Form')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _textboxFullName(),
            _textboxEnterFullName(),
            _textboxEmail(),
            _textboxEnterYourEmail(),
            _textboxNo(),
            _textboxEnterPhone(),
            _textboxID(),
            _textboxValue(),
            _textboxAddress(),
            _textboxEnterAddress(),
            _textboxDate(),
            _textboxSellectDate(),
            _textboxKet(),
            _tombolSimpan()
          ],
        ),
      ),
    );
  }

  Widget _textboxFullName() {
    return Text(
      "Full Name",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15.0,
      ),
    );
  }

  Widget _textboxEnterFullName() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Enter Full Name",
        border: border,
      ),
      controller: _fullNameTextboxController,
    );
  }

  Widget _textboxEmail() {
    return Text(
      "Email",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15.0,
      ),
    );
  }

  Widget _textboxEnterYourEmail() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Enter your email",
        border: border,
      ),
      controller: _emailTextboxController,
    );
  }

  Widget _textboxNo() {
    return Text(
      "Phone Number",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15.0,
      ),
    );
  }

  Widget _textboxEnterPhone() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Enter Phone Number",
        border: border,
      ),
      controller: _phoneNumberTextboxController,
    );
  }

  Widget _textboxID() {
    return Text(
      "Personal ID Number",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15.0,
      ),
    );
  }

  Widget _textboxValue() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Value",
        border: border,
      ),
      controller: _personalIDTextboxController,
    );
  }

  Widget _textboxAddress() {
    return Text(
      "Address",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15.0,
      ),
    );
  }

  Widget _textboxEnterAddress() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Enter your text here",
        border: border,
      ),
      controller: _addressTextboxController,
    );
  }

  Widget _textboxDate() {
    return Text(
      "Choose a Date",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15.0,
      ),
    );
  }

  Widget _textboxSellectDate() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Select date",
        border: border,
        suffixIcon: Icon(Icons.calendar_today), // Calendar icon
      ),
      controller: _dateTextboxController,
    );
  }

  Widget _textboxKet() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CheckboxListTile(
          title: Text(
            "In Publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content",
          ),
          value: isAgree,
          onChanged: (bool? value) {
            setState(() {
              isAgree = value!;
            });
          },
          controlAffinity: ListTileControlAffinity
              .leading, // Menempatkan kotak centang di kiri
        ),
      ],
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String fullName = _fullNameTextboxController.text;
        String email = _emailTextboxController.text;
        String phone = _phoneNumberTextboxController.text;
        String id = _personalIDTextboxController.text;
        String address = _addressTextboxController.text;
        String date = _dateTextboxController.text;

        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Detail(
            fullName: fullName,
            email: email,
            phone: phone,
            id: id,
            address: address,
            date: date,
          ),
        ));
      },
      style: ElevatedButton.styleFrom(
        fixedSize: Size(380, 48),
      ),
      child: Text('Submit'),
    );
  }
} // Menambahkan
