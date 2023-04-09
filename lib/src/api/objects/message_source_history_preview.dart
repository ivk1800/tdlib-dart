import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message is from chat, message thread or forum topic history preview
@immutable
class MessageSourceHistoryPreview extends MessageSource {
  const MessageSourceHistoryPreview();

  static const String constructor = 'messageSourceHistoryPreview';

  static MessageSourceHistoryPreview? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSourceHistoryPreview();
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
