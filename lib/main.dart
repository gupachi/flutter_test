import 'package:flutter/material.dart';
import 'package:untitled1/product/common/component/custom_text_form_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormField(hintText:'이메일을 입력하세요' ,
            onChanged: (String value) {},
            obscureText: true,),
            CustomTextFormField(hintText:'이메일을 입력하세요' ,
                onChanged: (String value) {}, obscureText:true),
          ],
        ),
      ),
    );
  }
}
