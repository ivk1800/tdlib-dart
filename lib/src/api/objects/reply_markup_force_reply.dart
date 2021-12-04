import '../tdapi.dart';

/// Instructs application to force a reply to this message
class ReplyMarkupForceReply extends ReplyMarkup {
  ReplyMarkupForceReply(
      {required this.isPersonal, required this.inputFieldPlaceholder});

  /// [isPersonal] True, if a forced reply must automatically be shown to the
  /// current user. For outgoing messages, specify true to show the forced reply
  /// only for the mentioned users and for the target user of a reply
  final bool isPersonal;

  /// [inputFieldPlaceholder] If non-empty, the placeholder to be shown in the
  /// input field when the reply is active; 0-64 characters
  final String inputFieldPlaceholder;

  static const String CONSTRUCTOR = 'replyMarkupForceReply';

  static ReplyMarkupForceReply? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReplyMarkupForceReply(
        isPersonal: json['is_personal'],
        inputFieldPlaceholder: json['input_field_placeholder']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_personal': this.isPersonal,
        'input_field_placeholder': this.inputFieldPlaceholder,
        '@type': CONSTRUCTOR
      };
}
