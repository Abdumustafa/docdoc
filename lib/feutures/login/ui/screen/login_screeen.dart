import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/core/widget/app_text_buttom.dart';
import 'package:docdoc/feutures/login/data/models/login_request_body.dart';
import 'package:docdoc/feutures/login/ui/widget/email_and_password.dart';
import 'package:docdoc/feutures/login/ui/widget/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/login_cubit.dart';
import '../widget/already_have_account_text.dart';
import '../widget/login_bloc_listener.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  bool isObscuretext = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    EmailAndPassword(),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text("Forgot Password ?",
                          style: TextStyles.font13BlueRegular),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: "login",
                      textStyle: TextStyles.font16WhaiteSamiBold,
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                    ),
                   
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(60),
                    const AlreadyHaveAccountText(),
                       const LoginBlocListener(),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

 void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState(
            LoginRequestBody(
              email: context.read<LoginCubit>().emailController.text,
              password: context.read<LoginCubit>().passwordController.text,
            ),
          );
    }
  }
}
