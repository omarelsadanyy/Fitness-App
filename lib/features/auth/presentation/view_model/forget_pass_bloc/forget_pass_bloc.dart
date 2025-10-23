import 'package:fitness/core/enum/request_state.dart';
import 'package:fitness/core/result/result.dart';
import 'package:fitness/features/auth/domain/entity/auth/forgetPassEntity/forget_pass_request.dart';
import 'package:fitness/features/auth/domain/entity/auth/forgetPassEntity/forget_pass_response.dart';
import 'package:fitness/features/auth/domain/use_case/forgetPassUseCases/forget_pass_use_case.dart';
import 'package:fitness/features/auth/presentation/view_model/forget_pass_bloc/forget_pass_event.dart';
import 'package:fitness/features/auth/presentation/view_model/forget_pass_bloc/forget_pass_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ForgetPassBloc extends Cubit<ForgetPasswordState> {
  final ForgetPassUseCase _forgetPassUseCase;

  ForgetPassBloc(this._forgetPassUseCase) : super(const ForgetPasswordState());

  Future<void> doIntent(ForgetPassEvent intent) async {
    switch (intent) {
      case SendForgetPassEmailEvent():
        return _forgetPassword(intent.forgetPassRequest);
    }
  }

  Future<void> _forgetPassword(ForgetPassRequest request) async {
     emit(
          state.copyWith(
            status: const StateStatus<ForgetPassResponse>.loading(),
          ),
        );
    final res = await _forgetPassUseCase.forgetPass(forgetPassReq: request);
    switch (res) {
      case SuccessResult<ForgetPassResponse>():
        emit(
          state.copyWith(
            status: StateStatus<ForgetPassResponse>.success(res.successResult),
          ),
        );
      case FailedResult<ForgetPassResponse>():
        emit(state.copyWith(status: StateStatus.failure(res.errorMessage)));
    }
  }
}
