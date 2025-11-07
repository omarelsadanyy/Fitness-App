import 'package:equatable/equatable.dart';
import 'package:fitness/core/enum/request_state.dart';

class ChangePassState extends Equatable {
  final StateStatus<void> changePassStatus;

  const ChangePassState({
    this.changePassStatus = const StateStatus.initial(),
  });

  ChangePassState copyWith({StateStatus<void>? status}) {
    return ChangePassState(
      changePassStatus: status ?? changePassStatus,
    );
  }

  @override
  List<Object?> get props => [changePassStatus];
}
