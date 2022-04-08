import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat has child abuse related content
@immutable
class ChatReportReasonChildAbuse extends ChatReportReason {
  const ChatReportReasonChildAbuse();

  static const String constructor = 'chatReportReasonChildAbuse';

  static ChatReportReasonChildAbuse? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatReportReasonChildAbuse();
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
