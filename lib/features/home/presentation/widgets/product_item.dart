import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/features/home/data/models/ProductsModel.dart';
import 'package:e_commerce/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItem extends StatelessWidget {
  final int index;
  final ProductsModel? productModel;

  const ProductItem(
      {required this.index, required this.productModel, super.key});

  @override
  Widget build(BuildContext context) {
    var product = productModel?.products?[index];
    return InkWell(
      onTap: () {
        // Navigator.of(context).pushNamed(
        //   AppRoute.productDetails,
        //   arguments: product,
        // );
      },
      child: Padding(
        padding: EdgeInsets.only(
            left: index.isEven ? 16.w : 0, right: index.isOdd ? 16.w : 0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              border: Border.all(width: 2.w, color: Colors.blueGrey)),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  // alignment: Alignment.centerRight,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: CachedNetworkImage(
                        imageUrl: product?.images?.first ?? "",
                        fit: BoxFit.fitHeight,
                        width: double.infinity,
                        height: 191.h,
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error_outline, size: 40),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.h, horizontal: 7.w),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(2.h.w),
                            margin: EdgeInsets.only(left: 6.w),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.r),
                              // border:
                              //     Border.all(width: 1.w, color: Colors.blueGrey)
                            ),
                            child: const Icon(
                              Icons.favorite_outline,
                              color: AppColors.BlueColor,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: Text(
                      product?.brand ?? " ",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: Text(
                      productModel?.products?[index].title ?? "",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      SizedBox(width: 8.w),
                      Text("USD ${product?.price.toString() ?? ""}"),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  const Spacer(),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 8.w, bottom: 13.h, right: 8.w),
                    child: Row(
                      children: [
                        const Text("Review"),
                        SizedBox(width: 10.w),
                        Text("(${product?.rating.toString() ?? ""})"),
                        SizedBox(width: 3.w),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 19,
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            BlocProvider.of<HomeBloc>(context)
                                .add(AddToCart(product?.title ?? ""));
                          },
                          child: Container(
                            padding: EdgeInsets.all(5.w.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.r),
                              color: AppColors.BlueColor,
                            ),
                            child: const Icon(Icons.add, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
