import 'package:flutter/material.dart';
import 'package:untitled1/product/common/const/colors.dart';
import '../component/custom_text_form_field.dart';
import 'package:untitled1/product/common/const/default_layout.dart';
class LoginScreen extends StatelessWidget{
  const LoginScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return DefaultLayout(
      child:SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child:SafeArea(
        top:true,
       bottom: false,
       child:Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),

       child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height:16.0),

        CustomTextFormField(hintText:'이메일을 입력하세요' ,
          onChanged: (String value) {},
          obscureText: true,),
        CustomTextFormField(hintText:'비밀번호을 입력하세요' ,
            onChanged: (String value) {}, obscureText:true),
        const SizedBox(height: 16.0),
        //dio 비동기
        ElevatedButton(onPressed: () async{
          //dio
          final resp = await dio.post('https:'
        }: child)
      ],
    ),
    ),
      ),
    );
    return Container();
  }
}

class _subTitle extends StatelessWidget {
  const _subTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '환영합니다.',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    );
  }
class _Title  extends StatelessWidget {
  const _Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Text(
  '환영합니다.',
  style: TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w400,
  color:INPUT_BG_COLOR,
  ),
  );
  }
