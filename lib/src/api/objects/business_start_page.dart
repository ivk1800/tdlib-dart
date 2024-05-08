import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes settings for a business account start page
@immutable
class BusinessStartPage extends TdObject {
  const BusinessStartPage({
    required this.title,
    required this.message,
    this.sticker,
  });

  /// [title] Title text of the start page
  final String title;

  /// [message] Message text of the start page
  final String message;

  /// [sticker] Greeting sticker of the start page; may be null if none
  final Sticker? sticker;

  static const String constructor = 'businessStartPage';

  static BusinessStartPage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessStartPage(
      title: json['title'] as String,
      message: json['message'] as String,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
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
