import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a detailed statistics about a chat
@immutable
abstract class ChatStatistics extends TdObject {
  const ChatStatistics();

  static const String constructor = 'chatStatistics';

  /// Inherited by:
  /// [ChatStatisticsChannel]
  /// [ChatStatisticsSupergroup]
  static ChatStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatStatisticsChannel.constructor:
        return ChatStatisticsChannel.fromJson(json);
      case ChatStatisticsSupergroup.constructor:
        return ChatStatisticsSupergroup.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
