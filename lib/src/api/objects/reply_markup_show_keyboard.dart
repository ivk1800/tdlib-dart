import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains a custom keyboard layout to quickly reply to bots
class ReplyMarkupShowKeyboard extends ReplyMarkup {
  ReplyMarkupShowKeyboard(
      {required this.rows,
      required this.resizeKeyboard,
      required this.oneTime,
      required this.isPersonal,
      required this.inputFieldPlaceholder});

  /// [rows] A list of rows of bot keyboard buttons
  final List<List<KeyboardButton>> rows;

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

  static const String CONSTRUCTOR = 'replyMarkupShowKeyboard';

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
        resizeKeyboard: json['resize_keyboard'],
        oneTime: json['one_time'],
        isPersonal: json['is_personal'],
        inputFieldPlaceholder: json['input_field_placeholder']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'rows': rows
            .map((item) => item.map((item) => item.toJson()).toList())
            .toList(),
        'resize_keyboard': this.resizeKeyboard,
        'one_time': this.oneTime,
        'is_personal': this.isPersonal,
        'input_field_placeholder': this.inputFieldPlaceholder,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
