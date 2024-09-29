import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/globals.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/styles.dart';
import 'package:spirit_app/utils/widgets/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(Assets.backgroundFrame),
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 200),
                    SvgPicture.asset(Assets.spiritLogo, height: 60),
                    const SizedBox(height: 44),
                    CustomTextField(controller: _emailController, label: "Email"),
                    CustomTextField(
                      controller: _passwordController,
                      label: "Password",
                    ),
                    const SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        navigatorKey.currentState!.pushReplacementNamed("/home");
                      },
                      child: Container(
                        width: size.width,
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        decoration: const BoxDecoration(
                          color: AppColors.primaryColor,
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: AppStyles.m4.copyWith(
                              fontStyle: FontStyle.italic,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 44),
                    GestureDetector(
                      onTap: () {
                        navigatorKey.currentState!.pushReplacementNamed("/home");
                      },
                      child: Container(
                        width: size.width,
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        decoration: const BoxDecoration(
                          color: AppColors.white,
                        ),
                        child: Center(
                          child: Text(
                            "Login with Google",
                            style: AppStyles.m4.copyWith(
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        navigatorKey.currentState!.pushReplacementNamed("/home");
                      },
                      child: Container(
                        width: size.width,
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        decoration: const BoxDecoration(
                          color: AppColors.secondaryColor,
                        ),
                        child: Center(
                          child: Text(
                            "Continue as Guest",
                            style: AppStyles.m4.copyWith(
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
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
