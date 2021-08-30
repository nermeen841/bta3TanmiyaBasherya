import 'package:flutter/material.dart';

import 'copmonnent/body.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PrivacyBody(),
    );
  }
}
