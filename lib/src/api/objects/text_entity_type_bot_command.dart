import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A bot command, beginning with "/"
@immutable
class TextEntityTypeBotCommand extends TextEntityType {
  const TextEntityTypeBotCommand();

  static const String constructor = 'textEntityTypeBotCommand';

  static TextEntityTypeBotCommand? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeBotCommand();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
