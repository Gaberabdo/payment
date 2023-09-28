
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:paypal/feature/layout/presentation/components/home_body.dart';

import 'package:paypal/feature/layout/presentation/controller/home_cubit.dart';


class HomePayPal extends StatelessWidget {
  const HomePayPal({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Scaffold(
            body: homeBody(context, cubit),
          );
        },
      ),
    );
  }

}
