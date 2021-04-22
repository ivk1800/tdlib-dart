import '../tdapi.dart';

/// Instructs application to force a reply to this message
class ReplyMarkupForceReply extends ReplyMarkup {
  ReplyMarkupForceReply({required this.isPersonal});

  /// [isPersonal] True, if a forced reply must automatically be shown to the
  /// current user. For outgoing messages, specify true to show the forced reply
  /// only for the mentioned users and for the target user of a reply
  final bool isPersonal;

  static const String CONSTRUCTOR = 'replyMarkupForceReply';

  static ReplyMarkupForceReply? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReplyMarkupForceReply(isPersonal: json['is_personal']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'is_personal': this.isPersonal, '@type': CONSTRUCTOR};
}
