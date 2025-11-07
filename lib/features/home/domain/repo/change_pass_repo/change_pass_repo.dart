import 'package:fitness/core/result/result.dart';
import 'package:fitness/features/home/domain/entity/chage_pass/change_pass_request.dart';

abstract interface class ChangePassRepo {
  Future<Result<void>> changePassword({
    required ChangePassRequest changePassRequest});
}
