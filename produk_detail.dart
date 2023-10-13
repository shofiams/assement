import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String fullName;
  final String email;
  final String phone;
  final String id;
  final String address;
  final String date;

  Detail(
      {required this.fullName,
      required this.email,
      required this.phone,
      required this.id,
      required this.address,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LIST PERSONAL DATA')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: DataTable(
          columns: [
            DataColumn(label: Text('Field')),
            DataColumn(label: Text('Value')),
          ],
          rows: [
            _buildDataRow('Full Name', fullName),
            _buildDataRow('Email', email),
            _buildDataRow('Phone', phone),
            _buildDataRow('Id', id),
            _buildDataRow('Address', address),
            _buildDataRow('Date', date),
          ],
        ),
      ),
    );
  }

  DataRow _buildDataRow(String label, String value) {
    return DataRow(
      cells: [
        DataCell(Text(label)),
        DataCell(Text(value)),
      ],
    );
  }
}
