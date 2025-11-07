import 'package:flutter_gemini/flutter_gemini.dart';

import '../../../../core/result/result.dart';


import '../entity/message_entity.dart';

abstract interface class SmartCoachRepository {
  Stream<String> getSmartCoachReplyStream(List<MessageEntity> chatHistory);
  Future<void> saveMessage(String conversationId, MessageEntity message);
  Future<List<Map<String, dynamic>>> fetchConversationSummaries();
  Future<List<MessageEntity>> fetchMessages(String conversationId);
  Future<void> deleteConversation(String conversationId);
  Future<Result<String>> startNewConversation();
  Future<Result<void>> setConversationTitle(String conversationId, String title);
}