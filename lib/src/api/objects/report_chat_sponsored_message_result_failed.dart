import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The sponsored message is too old or not found
@immutable
class ReportChatSponsoredMessageResultFailed
    extends ReportChatSponsoredMessageResult {
  const ReportChatSponsoredMessageResultFailed();

  static const String constructor = 'reportChatSponsoredMessageResultFailed';

  static ReportChatSponsoredMessageResultFailed? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportChatSponsoredMessageResultFailed();
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
