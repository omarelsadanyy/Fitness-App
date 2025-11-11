import 'package:fitness/core/result/result.dart';
import 'package:fitness/features/home/domain/entity/chage_pass/change_pass_request.dart';
import 'package:fitness/features/home/domain/repo/change_pass_repo/change_pass_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChangePassUsecase {
  final ChangePassRepo _changePassRepo;
  ChangePassUsecase(this._changePassRepo);

  Future<Result<void>> changePass({required 
    ChangePassRequest req,
  })async {
    return await _changePassRepo.changePassword(changePassRequest: req);
  }
}
