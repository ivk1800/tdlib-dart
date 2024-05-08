import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sponsored messages were hidden for the user in all chats
@immutable
class ReportChatSponsoredMessageResultAdsHidden
    extends ReportChatSponsoredMessageResult {
  const ReportChatSponsoredMessageResultAdsHidden();

  static const String constructor = 'reportChatSponsoredMessageResultAdsHidden';

  static ReportChatSponsoredMessageResultAdsHidden? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportChatSponsoredMessageResultAdsHidden();
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
