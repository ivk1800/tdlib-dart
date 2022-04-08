import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Instructs application to force a reply to this message
@immutable
class ReplyMarkupForceReply extends ReplyMarkup {
  const ReplyMarkupForceReply({
    required this.isPersonal,
    required this.inputFieldPlaceholder,
  });

  /// [isPersonal] True, if a forced reply must automatically be shown to the
  /// current user. For outgoing messages, specify true to show the forced reply
  /// only for the mentioned users and for the target user of a reply
  final bool isPersonal;

  /// [inputFieldPlaceholder] If non-empty, the placeholder to be shown in the
  /// input field when the reply is active; 0-64 characters
  final String inputFieldPlaceholder;

  static const String constructor = 'replyMarkupForceReply';

  static ReplyMarkupForceReply? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReplyMarkupForceReply(
      isPersonal: json['is_personal'],
      inputFieldPlaceholder: json['input_field_placeholder'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_personal': isPersonal,
        'input_field_placeholder': inputFieldPlaceholder,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
