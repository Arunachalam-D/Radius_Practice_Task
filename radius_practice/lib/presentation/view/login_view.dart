import 'package:flutter/material.dart';
import 'package:radius_practice/presentation/widgets/loading_widget.dart';

import '../widgets/login_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return const LoginWidget();
  }
}
