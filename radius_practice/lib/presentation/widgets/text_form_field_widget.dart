import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/login_bloc/login_bloc.dart';

reusableTextField(IconData icon, bool isPasswordType,
    TextEditingController controller, String type,bool isRequired,Function onTap) {

    return BlocBuilder<LoginBloc, LoginState>(
  builder: (context, state) {
    bool isVisible =  state is PasswordVisibleState && state.isPasswordVisible;
    return TextFormField(
    controller: controller,
    obscureText: !isVisible,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.black,
    style:  TextStyle(color: Colors.black,fontWeight:isVisible ? FontWeight.normal:FontWeight.bold ),
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.all(18),
      prefixIcon: Icon(
        icon,
        color: Colors.grey,
      ),

      suffixIcon: isRequired ? GestureDetector(onTap: () {
        onTap();
      }, child: Icon(
        isVisible
            ? Icons.visibility
            : Icons.visibility_off,
        color: Colors.grey,
      ),
      ) : null,
      labelStyle: const TextStyle(color:Colors.black38,fontSize: 160),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.transparent,

      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xff2c68ec),width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide:const  BorderSide(color: Colors.grey,width: 0.5),
        borderRadius: BorderRadius.circular(5),
      ),

    ),

    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
  },
);


}

GestureDetector reusableButton(BuildContext context, String type, Function onTap) {
  return GestureDetector(
    onTap: onTap(),
    child: Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xff2c68ec),),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            type,
            style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
          ),
           Padding(
            padding:  const EdgeInsets.only(left: 12.0),
            child:  Transform.rotate(
              angle: 3.141592,
                child:const Icon(Icons.arrow_right_alt,color: Colors.white)
            ),
          ),
        ],
      ),
    ),
  );
}
 