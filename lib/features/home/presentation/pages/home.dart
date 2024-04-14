import 'package:e_commerce/core/api/api_manager.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/features/home/data/data_sources/home_ds_impl.dart';
import 'package:e_commerce/features/home/data/repositories/home_repo_impl.dart';
import 'package:e_commerce/features/home/domain/use_cases/get_brands_use_case.dart';
import 'package:e_commerce/features/home/domain/use_cases/get_categories_use_case.dart';
import 'package:e_commerce/features/home/presentation/bloc/home_bloc.dart';
import 'package:e_commerce/features/home/presentation/pages/tabs/fav_tab.dart';
import 'package:e_commerce/features/home/presentation/pages/tabs/home_tab.dart';
import 'package:e_commerce/features/home/presentation/pages/tabs/products_tab.dart';
import 'package:e_commerce/features/home/presentation/pages/tabs/profile_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
        getBrandsUseCase: GetBrandsUseCase(
          HomeRepoImpl(
            HomeDSImpl(
              ApiManager(),
            ),
          ),
        ),
        getCategoriesUseCase: GetCategoriesUseCase(
          HomeRepoImpl(
            HomeDSImpl(
              ApiManager(),
            ),
          ),
        ),
      )
        ..add(const GetBrandsEvent())
        ..add(const GetCategoriesEvent()),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leadingWidth: 83.w,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SvgPicture.asset('assets/images/route.svg'),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          onTap: (value) {},
          backgroundColor: AppColors.BackGround,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.production_quantity_limits_rounded),
                label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 5.h),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: Color(0xFF004182)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: Color(0xFF004182)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color(0xFF06004E),
                          ),
                          hintText: 'what do you search for?',
                          hintStyle: TextStyle(
                            color: const Color(0x9906004E),
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.shopping_cart,
                      size: 30.0.sp,
                      color: const Color(0xff004182),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Expanded(child: tabs[0]),
          ],
        ),
      ),
    );
  }

  List<Widget> tabs = [
    const HomeTab(),
    const ProductsTab(),
    const FavTab(),
    const ProfileTab()
  ];
}
