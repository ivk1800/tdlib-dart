import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user must choose messages to report and repeat the reportChat request
/// with the chosen messages
@immutable
class ReportChatResultMessagesRequired extends ReportChatResult {
  const ReportChatResultMessagesRequired();

  static const String constructor = 'reportChatResultMessagesRequired';

  static ReportChatResultMessagesRequired? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportChatResultMessagesRequired();
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
