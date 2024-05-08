import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes settings for a business account start page to set
@immutable
class InputBusinessStartPage extends TdObject {
  const InputBusinessStartPage({
    required this.title,
    required this.message,
    this.sticker,
  });

  /// [title] Title text of the start page;
  /// 0-getOption("business_start_page_title_length_max") characters
  final String title;

  /// [message] Message text of the start page;
  /// 0-getOption("business_start_page_message_length_max") characters
  final String message;

  /// [sticker] Greeting sticker of the start page; pass null if none. The
  /// sticker must belong to a sticker set and must not be a custom emoji
  final InputFile? sticker;

  static const String constructor = 'inputBusinessStartPage';

  static InputBusinessStartPage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputBusinessStartPage(
      title: json['title'] as String,
      message: json['message'] as String,
      sticker: InputFile.fromJson(json['sticker'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'message': message,
        'sticker': sticker?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
