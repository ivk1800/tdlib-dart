import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains an inline keyboard layout
@immutable
class ReplyMarkupInlineKeyboard extends ReplyMarkup {
  const ReplyMarkupInlineKeyboard({
    required this.rows,
  });

  /// [rows] A list of rows of inline keyboard buttons
  final List<List<InlineKeyboardButton>> rows;

  static const String constructor = 'replyMarkupInlineKeyboard';

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
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'rows': rows
            .map((item) => item.map((item) => item.toJson()).toList())
            .toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
