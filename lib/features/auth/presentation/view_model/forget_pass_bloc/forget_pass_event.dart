import 'package:fitness/features/auth/domain/entity/auth/forgetPassEntity/forget_pass_request.dart';

sealed class ForgetPassEvent {}

final class SendForgetPassEmailEvent extends ForgetPassEvent {
  final ForgetPassRequest forgetPassRequest;
  SendForgetPassEmailEvent({required this.forgetPassRequest});
}
