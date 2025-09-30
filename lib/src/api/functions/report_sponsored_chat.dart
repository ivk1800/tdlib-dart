import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Reports a sponsored chat to Telegram moderators
/// Returns [ReportSponsoredResult]
@immutable
class ReportSponsoredChat extends TdFunction {
  const ReportSponsoredChat({
    required this.sponsoredChatUniqueId,
    required this.optionId,
  });

  /// [sponsoredChatUniqueId] Unique identifier of the sponsored chat
  final int sponsoredChatUniqueId;

  /// [optionId] Option identifier chosen by the user; leave empty for the
  /// initial request
  final String optionId;

  static const String constructor = 'reportSponsoredChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sponsored_chat_unique_id': sponsoredChatUniqueId,
    'option_id': optionId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
