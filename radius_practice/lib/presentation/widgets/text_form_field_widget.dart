import 'package:flutter/material.dart';

TextFormField reusableTextField(IconData icon, bool isPasswordType,
    TextEditingController controller, String type,IconData ? suffIcon) {
  bool _autoValidate = false;
  bool mail = false;
  return TextFormField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.black,
    style: const TextStyle(color: Colors.black54),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.grey,
      ),
      suffixIcon: Icon(
        suffIcon,
        color: Colors.grey,
      ),
      labelStyle: const TextStyle(color:Colors.black38),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.transparent,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
        borderRadius: BorderRadius.circular(5),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red), // Change color as needed
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    autovalidateMode: AutovalidateMode.onUserInteraction,
    onChanged: (value) {
      _autoValidate = true;
    },
    validator: (value) {
      bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(value!);

      if (value!.isEmpty) {
        return 'Enter $type';
      } else if (type == "email" && !emailValid) {
        return "Enter Valid Email";
      } else if (type == "password" && controller.text.length < 8) {
        return "Password must be atLeast 8 characters";
      } else if (type == "name" && controller.text.length < 3) {
        return "Username must be atLeast 3 characters";
      }
      mail = true;
      return null;
    },
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
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
          color: Colors.blue[700],),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            type,
            style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: const Icon(Icons.arrow_back,color: Colors.white,),
          ),
        ],
      ),
    ),
  );
}
 