// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/widgets/show_alert_dialog_error.dart';
import 'package:home_ease/core/widgets/show_progress_indicator.dart';
import 'package:home_ease/features/register/logic/register_cubit.dart';
import 'package:home_ease/features/register/logic/register_state.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listenWhen: (previous, current) =>
          current is Loading ||
          current is PhoneNumberSubmited ||
          current is PhoneOtpVerified ||
          current is CreateUser ||
          current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showProgressIndicator(context);
          },
          phoneNumberSubmited: () {
            context.pop();

            context.pushNamed(Routes.otpScreen,
                arguments: context.read<RegisterCubit>().phoneController.text);
          },
          error: (error) {
            ShowAlertDialogError(error:error ,);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  // void setupErrorState(BuildContext context, String error) {
  //   context.pop();
  //   showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       icon: const Icon(
  //         Icons.error,
  //         color: Colors.red,
  //         size: 32,
  //       ),
  //       content: Text(
  //         error,
  //         style: TextStyles.font16Black600,
  //       ),
  //       actions: [
  //         TextButton(
  //           onPressed: () {
  //             context.pop();
  //           },
  //           child: Text(
  //             'Got it',
  //             style: TextStyles.font12mainGreen700,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}


