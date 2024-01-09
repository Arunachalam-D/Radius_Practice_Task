import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radius_practice/presentation/widgets/text_form_field_widget.dart';

import '../../bloc/login_bloc/login_bloc.dart';
import '../../core/colors.dart';
import '../../core/dimensions.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: AppColors.loginImageBackground,
                height: height,
                child: Image.asset("assets/images/login_image.png"),
              ),
            ),
            Expanded(child: Container(
              color: Colors.white,
              height: height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/rd-logo.png",width: 220,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/10, ),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       loginSpace(),
                       const Text("Email"),
                       labelSpace(),
                       reusableTextField(Icons.mail_outline,false,emailController,"email",false,(){}),
                       loginSpace(),
                       const Text("Password"),
                       labelSpace(),
                       reusableTextField(Icons.lock_outline,true,passwordController,"password",true,(){
                         BlocProvider.of<LoginBloc>(context).add(LoginPasswordVisibleEvent(),);
                       }
                       ),
                       buttonSpace(),
                       reusableButton(context,"LOG IN",(){}),
                     ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
