import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a custom keyboard layout to quickly reply to bots
@immutable
class ReplyMarkupShowKeyboard extends ReplyMarkup {
  const ReplyMarkupShowKeyboard({
    required this.rows,
    required this.isPersistent,
    required this.resizeKeyboard,
    required this.oneTime,
    required this.isPersonal,
    required this.inputFieldPlaceholder,
  });

  /// [rows] A list of rows of bot keyboard buttons
  final List<List<KeyboardButton>> rows;

  /// [isPersistent] True, if the keyboard is supposed to always be shown when
  /// the ordinary keyboard is hidden
  final bool isPersistent;

  /// [resizeKeyboard] True, if the application needs to resize the keyboard
  /// vertically
  final bool resizeKeyboard;

  /// [oneTime] True, if the application needs to hide the keyboard after use
  final bool oneTime;

  /// [isPersonal] True, if the keyboard must automatically be shown to the
  /// current user. For outgoing messages, specify true to show the keyboard
  /// only for the mentioned users and for the target user of a reply
  final bool isPersonal;

  /// [inputFieldPlaceholder] If non-empty, the placeholder to be shown in the
  /// input field when the keyboard is active; 0-64 characters
  final String inputFieldPlaceholder;

  static const String constructor = 'replyMarkupShowKeyboard';

  static ReplyMarkupShowKeyboard? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReplyMarkupShowKeyboard(
      rows: List<List<KeyboardButton>>.from((json['rows'] ?? [])
          .map((item) => List<KeyboardButton>.from(
              (json['List<KeyboardButton>'] ?? [])
                  .map((item) => KeyboardButton.fromJson(item))
                  .toList()))
          .toList()),
      isPersistent: json['is_persistent'],
      resizeKeyboard: json['resize_keyboard'],
      oneTime: json['one_time'],
      isPersonal: json['is_personal'],
      inputFieldPlaceholder: json['input_field_placeholder'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'rows': rows
            .map((item) => item.map((item) => item.toJson()).toList())
            .toList(),
        'is_persistent': isPersistent,
        'resize_keyboard': resizeKeyboard,
        'one_time': oneTime,
        'is_personal': isPersonal,
        'input_field_placeholder': inputFieldPlaceholder,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
