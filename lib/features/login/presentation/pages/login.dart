import 'package:e_commerce/config/routes/app_router.dart';
import 'package:e_commerce/core/enums/enums.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/features/login/data/data_sources/remote/login_remote_ds_impl.dart';
import 'package:e_commerce/features/login/data/repository/login_repo_impl.dart';
import 'package:e_commerce/features/login/domain/usecases/login_use_case.dart';
import 'package:e_commerce/features/login/presentation/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LoginBloc(
              LoginUseCase(
                LoginRepoImpl(
                  LoginRemoteDSImpl(),
                ),
              ),
            ),
        child: BlocConsumer<LoginBloc, LoginState>(listener: (context, state) {
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
        }, builder: (context, state) {
          return Scaffold(
              backgroundColor: AppColors.BackGround,
              body: Padding(
                  padding: EdgeInsets.all(8.r),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                                  BlocProvider.of<LoginBloc>(context).add(
                                      LoginButtonEvent(
                                          "ahmedmutti@gmail.com", "Ahmed@123"));
                                },
                                child: const Text("Login"))),
                        Padding(
                          padding: EdgeInsets.only(top: 32.h),
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                 Navigator.pushNamed(context, AppRoutesName.signUp);
                              },
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Don't have an account ?",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Colors.white)),
                                    TextSpan(
                                        text: " " + 'Create Account',
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            color: Colors.white)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ])));
        }));
  }
}
