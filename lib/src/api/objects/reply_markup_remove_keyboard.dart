import '../tdapi.dart';

/// Instructs application to remove the keyboard once this message has been
/// received. This kind of keyboard can't be received in an incoming message;
/// instead, UpdateChatReplyMarkup with message_id == 0 will be sent
class ReplyMarkupRemoveKeyboard extends ReplyMarkup {
  ReplyMarkupRemoveKeyboard({required this.isPersonal});

  /// [isPersonal] True, if the keyboard is removed only for the mentioned users
  /// or the target user of a reply
  final bool isPersonal;

  static const String CONSTRUCTOR = 'replyMarkupRemoveKeyboard';

  static ReplyMarkupRemoveKeyboard? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReplyMarkupRemoveKeyboard(isPersonal: json['is_personal']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'is_personal': this.isPersonal, '@type': CONSTRUCTOR};
}
