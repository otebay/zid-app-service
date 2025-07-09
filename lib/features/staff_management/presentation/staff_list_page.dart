import 'package:flutter/material.dart';
import '../../../core/strings.dart';

class StaffListPage extends StatelessWidget {
  const StaffListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.of(context, 'staffManagement'))),
      body: Center(child: Text(AppStrings.of(context, 'staffManagement'))),
    );
  }
}
