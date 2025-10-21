// import 'package:bloc/bloc.dart';
// import 'package:fitness/features/auth/domain/use_case/register_use_case.dart';
// import 'package:fitness/features/auth/presentation/view_model/register_view_model/register_states.dart';
// import 'package:flutter/cupertino.dart';
//
// class RegisterCubit extends Cubit<RegisterState>{
//   final RegisterUseCase _registerUseCase;
//    RegisterCubit(this._registerUseCase)
//        :super(const RegisterState());
//    late TextEditingController firstNameController;
//   late TextEditingController lastNameController;
//   late TextEditingController emailController;
//   late TextEditingController passwordController;
//   late GlobalKey<FormState> formKey;
//
//   @override
//   Future<void> close() async {
//     firstNameController.dispose();
//     lastNameController.dispose();
//     emailController.dispose();
//     passwordController.dispose();
//
//   }
// }