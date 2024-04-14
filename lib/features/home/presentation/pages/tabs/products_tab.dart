import 'package:e_commerce/features/home/presentation/bloc/home_bloc.dart';
import 'package:e_commerce/features/home/presentation/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsTab extends StatelessWidget {
  const ProductsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return GridView.builder(
          itemCount: state.productsModel?.data?.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: (192 / 250),
              crossAxisCount: 2,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 16.w),
          itemBuilder: (context, index) {
            return ProductItem(productModel: state.productsModel, index: index);
          },
        );
      },
    );
  }
}
