import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat contains copyrighted content
@immutable
class ChatReportReasonCopyright extends ChatReportReason {
  const ChatReportReasonCopyright();

  static const String constructor = 'chatReportReasonCopyright';

  static ChatReportReasonCopyright? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatReportReasonCopyright();
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
