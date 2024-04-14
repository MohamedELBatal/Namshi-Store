import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/features/home/data/models/BrandModel.dart';
import 'package:e_commerce/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});


  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int _currentIndex = 0;

  List<String> images = [
    "assets/images/pic1.png",
    "assets/images/pic2.png",
    "assets/images/pic3.png",

  ];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {

      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 200.h,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.93,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.2,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                    items: images.map((imageUrl) {
                      return SizedBox(
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  Positioned(
                    bottom: 20.h,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: images.asMap().entries.map((entry) {
                        int index = entry.key;
                        return Container(
                          width: 10.w,
                          height: 10.h,
                          margin: EdgeInsets.symmetric(horizontal: 4.w),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentIndex == index
                                ? const Color(0xFF06004E)
                                : Colors.white,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        color: const Color(0xFF06004E),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'view all',
                        style: TextStyle(
                          color: const Color(0xFF06004E),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              (state.categoriesModel != null)
                  ? catItem(state.categoriesModel?.data ?? [])
                  : SizedBox(
                  height: 280.h,
                  child: const Center(child: CircularProgressIndicator())),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text(
                  'Brands',
                  style: TextStyle(
                    color: const Color(0xFF06004E),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              state.brandModel != null
                  ? brandsWidget(state.brandModel?.data ?? [])
                  : Container(
                  height: 280.h,
                  child: const Center(child: CircularProgressIndicator())),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        );
      },
    );
  }
  Widget catItem(List<Data> data) => Container(
    height: 288.h,
    margin: EdgeInsets.only(left: 16.w),
    child: GridView.builder(
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, i) {
          return Column(
            children: [
              Container(
                width: 100.w,
                height: 100.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(data[i].image ?? ""),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                data[i].name ?? "",
                style: TextStyle(
                  color: const Color(0xFF06004E),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          );
        }),
  );

  Widget brandsWidget(List<Data> data) => Container(
    margin: EdgeInsets.only(left: 16.w, top: 16.h),
    height: 122.h,
    child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 16.w,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Container(
            width: 158.w,
            height: 122.h,
            padding: EdgeInsets.only(
              top: 8.h,
              left: 134.w,
              right: 8.w,
              bottom: 98.h,
            ),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(data[index].image ?? ""),
                fit: BoxFit.fill,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
            ),
            child: Container(
              width: 16.w,
              height: 16.h,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
                shadows: [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Icon(
                Icons.favorite_border,
                size: 12.sp,
              ),
            ),
          );
        }),
  );
}
