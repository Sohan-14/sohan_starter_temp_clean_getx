import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/extensions/context_extensions.dart';

class AccountInfoScreen extends StatelessWidget {
  const AccountInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.hideKeyboard,
      child: const Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            ],
          ),
        ),
      ),
    );
  }
}


