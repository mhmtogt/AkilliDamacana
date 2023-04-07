import 'package:akilli_damacana_demo/presentation/common_widgets/custom_button.dart';
import 'package:akilli_damacana_demo/presentation/common_widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.bottomCenter,
              image: AssetImage('assets/images/im_girissonrasibg.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Image.asset(
                'assets/images/im_logo.png',
                width: 262.w,
              ),
              SizedBox(
                height: 246.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 77.w),
                child: Column(
                  children: [
                    const CustomFormField(
                      labelText: 'Kullanıcı Adı',
                      iconPath: 'assets/icons/ic_personal.svg',
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const CustomFormField(
                      labelText: 'Şifre',
                      iconPath: 'assets/icons/ic_password.svg',
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: CustomButton(
                        title: 'Giriş Yap',
                        contentVerticalPadding: 10.h,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                            title: 'Kayıt Ol',
                            onPressed: () {},
                            contentVerticalPadding: 6.h,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: CustomButton(
                            title: 'Şifremi Unuttum',
                            onPressed: () {},
                            contentVerticalPadding: 6.h,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60.h,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
