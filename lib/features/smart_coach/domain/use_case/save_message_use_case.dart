

import 'package:injectable/injectable.dart';

import '../entity/message_entity.dart';
import '../repo/smart_coach_repo_impl.dart';


@injectable

class SaveMessagesUseCase {

  SaveMessagesUseCase(this._repository);
  final SmartCoachRepository _repository;

  Future<void> call(String conversationId, MessageEntity message) {
    return _repository.saveMessage(conversationId, message);
  }
}