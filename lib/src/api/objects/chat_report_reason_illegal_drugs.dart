import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat has illegal drugs related content
@immutable
class ChatReportReasonIllegalDrugs extends ChatReportReason {
  const ChatReportReasonIllegalDrugs();

  static const String constructor = 'chatReportReasonIllegalDrugs';

  static ChatReportReasonIllegalDrugs? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatReportReasonIllegalDrugs();
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
