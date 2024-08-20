import 'package:e_commerce/config/routes/app_router.dart';
import 'package:e_commerce/core/enums/enums.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/features/signUp/data/data_sources/signup_ds_impl.dart';
import 'package:e_commerce/features/signUp/data/repositories/signup_repo_impl.dart';
import 'package:e_commerce/features/signUp/domain/entities/SignUpRequestModel.dart';
import 'package:e_commerce/features/signUp/domain/use_cases/signUpUseCase.dart';
import 'package:e_commerce/features/signUp/presentation/bloc/signup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var userNameController = TextEditingController();

  var phoneController = TextEditingController();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupBloc(
        SignUpUseCase(
          SignUpRepoImpl(
            SignUpDsImpl(),
          ),
        ),
      ),
      child: BlocConsumer<SignupBloc, SignupState>(
        listener: (context, state) {
          if (state.status == RequestStatus.loading) {
            showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                title: Center(child: CircularProgressIndicator()),
              ),
            );
          } else if (state.status == RequestStatus.success) {
            Navigator.pushNamedAndRemoveUntil(
                context, AppRoutesName.home, (route) => false);
          } else if (state.status == RequestStatus.failure) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Error"),
                content: Text(state.failures?.message ?? ""),
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
              backgroundColor: AppColors.BackGround,
              body: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.all(8.r),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.35,
                            child: Image.asset("assets/images/logo.png"),
                          ),
                          TextFormField(
                            controller: userNameController,
                            decoration: InputDecoration(
                                label: const Text("UserName"),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.r),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.r))),
                          ),
                          SizedBox(
                            height: 18.h,
                          ),
                          TextFormField(
                            controller: phoneController,
                            decoration: InputDecoration(
                                label: const Text("Phone"),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.r),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.r))),
                          ),
                          SizedBox(
                            height: 18.h,
                          ),
                          TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                                label: const Text("Email"),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.r),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.r))),
                          ),
                          SizedBox(
                            height: 18.h,
                          ),
                          TextFormField(
                            controller: passwordController,
                            decoration: InputDecoration(
                                label: const Text("Password"),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.r),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.r))),
                          ),
                          SizedBox(
                            height: 18.h,
                          ),
                          SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () {
                                    SignUpRequestModel request =
                                        SignUpRequestModel(
                                      name: "mohamed",
                                      phone: "01017469538",
                                      email: "ahmedmutti2211@gmail.com",
                                      password: "123@Moh",
                                      rePassword: "123@Moh",
                                    );
                                    BlocProvider.of<SignupBloc>(context)
                                        .add(SignUpButtonEvent(request));
                                  },
                                  child: const Text("SignUp"))),
                          Padding(
                            padding: EdgeInsets.only(top: 32.h),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      AppRoutesName.login, (route) => false);
                                },
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "I have an account ?",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Colors.white)),
                                      TextSpan(
                                          text: " " + 'Login',
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.white)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ])),
              ));
        },
      ),
    );
  }
}
