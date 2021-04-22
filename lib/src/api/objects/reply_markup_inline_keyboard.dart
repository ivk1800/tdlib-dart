import '../tdapi.dart';

/// Contains an inline keyboard layout
class ReplyMarkupInlineKeyboard extends ReplyMarkup {
  ReplyMarkupInlineKeyboard({required this.rows});

  /// [rows] A list of rows of inline keyboard buttons
  final List<List<InlineKeyboardButton>> rows;

  static const String CONSTRUCTOR = 'replyMarkupInlineKeyboard';

  static ReplyMarkupInlineKeyboard? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReplyMarkupInlineKeyboard(
        rows: List<List<InlineKeyboardButton>>.from((json['rows'] ?? [])
            .map((item) => List<InlineKeyboardButton>.from(
                (json['List<InlineKeyboardButton>'] ?? [])
                    .map((item) => InlineKeyboardButton.fromJson(item))
                    .toList()))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'rows': rows
            .map((item) => item.map((item) => item.toJson()).toList())
            .toList(),
        '@type': CONSTRUCTOR
      };
}
