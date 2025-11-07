
import 'package:injectable/injectable.dart';

import '../repo/smart_coach_repo_impl.dart';


@injectable

class GetConversationSummariesUseCase {

  GetConversationSummariesUseCase(this._repository);
  final SmartCoachRepository _repository;

  Future<List<Map<String, dynamic>>> call() {
    return _repository.fetchConversationSummaries();
  }
}