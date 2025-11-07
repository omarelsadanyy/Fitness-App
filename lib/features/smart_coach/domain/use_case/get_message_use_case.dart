

import 'package:injectable/injectable.dart';

import '../entity/message_entity.dart';
import '../repo/smart_coach_repo_impl.dart';


@injectable

class GetMessagesUseCase {

  GetMessagesUseCase(this._repository);
  final SmartCoachRepository _repository;

  Future<List<MessageEntity>> call(String conversationId) {
    return _repository.fetchMessages(conversationId);
  }
}