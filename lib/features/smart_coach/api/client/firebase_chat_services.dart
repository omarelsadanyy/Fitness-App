import 'package:fitness/core/constants/constants.dart';
import 'package:fitness/core/user/user_manager.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:fitness/core/enum/sender.dart';

import '../../domain/entity/message_entity.dart';
import 'package:injectable/injectable.dart';






@injectable
class FirebaseChatService {
  final _firestore = FirebaseFirestore.instance;

  String? get userId =>UserManager().currentUser!.personalInfo!.id;
  CollectionReference<Map<String, dynamic>> get _conversationRef =>
      _firestore.collection(Constants.usersCollection).doc(userId).
      collection(Constants.conversationsCollection);
  Future<String> startNewConversation() async {
    final conversationRef = await _conversationRef
        .add({Constants.fieldStartedAt: FieldValue.serverTimestamp()});
    return conversationRef.id;
  }

  Future<void> setConversationTitle(String conversationId, String title) async {
    await
    _conversationRef
        .doc(conversationId)
        .update({Constants.fieldTitle: title});
  }

  Future<void> saveMessage(String conversationId, MessageEntity message) async {
    await
       _conversationRef.
        doc(conversationId)
        .collection(Constants.messagesCollection)
        .add({
         Constants.fieldText: message.text,
         Constants.sender: message.role.name,
         Constants.fieldStartedAt: FieldValue.serverTimestamp(),
    });
  }

  Future<List<MessageEntity>> fetchMessages(String conversationId) async {
    final snapshot = await _conversationRef
        .doc(conversationId)
        .collection(Constants.messagesCollection)
        .orderBy(Constants.fieldStartedAt)
        .get();

    return snapshot.docs.map((doc) {
      final data = doc.data();
      return MessageEntity(
        text: data[Constants.fieldText],
        role: data[Constants.sender] == 'user' ? Sender.user : Sender.model,
      );
    }).toList();
  }
  //
  // Future<List<Map<String, dynamic>>> fetchConversationSummaries() async {
  //   final snapshot = await _conversationRef
  //       .orderBy(Constants.fieldStartedAt, descending: true)
  //       .get();
  //
  //   final List<Map<String, dynamic>> summaries = [];
  //
  //   for (final doc in snapshot.docs) {
  //     final convoId = doc.id;
  //
  //     final messageSnapshot =await _conversationRef
  //         .doc(convoId)
  //         .collection(Constants.messagesCollection)
  //         .orderBy(Constants.fieldStartedAt,descending: true)
  //         .limit(1)
  //         .get();
  //
  //   late  String title ;
  //     if (messageSnapshot.docs.isNotEmpty) {
  //       final data = messageSnapshot.docs.first.data();
  //       if (data[Constants.sender] == 'user' && data[Constants.fieldText] != null) {
  //         title = data[Constants.fieldText];
  //       }
  //     }
  //
  //     summaries.add({
  //       Constants.id: convoId,
  //       Constants.fieldStartedAt: doc[ Constants.fieldStartedAt],
  //       Constants.fieldText: title,
  //     });
  //   }
  //
  //   return summaries;
  // }
  //
  Future<List<Map<String, dynamic>>> fetchConversationSummaries() async {
    final snapshot = await _conversationRef
        .orderBy(Constants.fieldStartedAt, descending: true)
        .get();

    final List<Map<String, dynamic>> summaries = [];

    for (final doc in snapshot.docs) {
      final convoId = doc.id;

      final messageSnapshot = await _conversationRef
          .doc(convoId)
          .collection(Constants.messagesCollection)
          .orderBy(Constants.fieldStartedAt, descending: true)
          .limit(1)
          .get();

      String title = 'No messages yet';

      if (messageSnapshot.docs.isNotEmpty) {
        final data = messageSnapshot.docs.first.data();
        if (data[Constants.fieldText] != null && data[Constants.fieldText].toString().trim().isNotEmpty) {
          title = data[Constants.fieldText];
        }
      }

      summaries.add({
        Constants.id: convoId,

        Constants.fieldStartedAt: doc[Constants.fieldStartedAt],
        Constants.fieldText: title,
      });
      summaries.removeWhere((e)=>e.containsValue("No messages yet"));
    }

    return summaries;
  }

  Future<void> deleteConversation(String conversationId) async {

    final messagesRef = _conversationRef
        .doc(conversationId)
        .collection(Constants.messagesCollection);

    final messagesSnapshot = await messagesRef.get();
    for (final doc in messagesSnapshot.docs) {
      await doc.reference.delete();
    }

    await _conversationRef
        .doc(conversationId)
        .delete();
  }

}