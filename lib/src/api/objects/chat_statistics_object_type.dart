import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of object, for which statistics are provided
@immutable
abstract class ChatStatisticsObjectType extends TdObject {
  const ChatStatisticsObjectType();

  static const String constructor = 'chatStatisticsObjectType';

  /// Inherited by:
  /// [ChatStatisticsObjectTypeMessage]
  /// [ChatStatisticsObjectTypeStory]
  static ChatStatisticsObjectType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatStatisticsObjectTypeMessage.constructor:
        return ChatStatisticsObjectTypeMessage.fromJson(json);
      case ChatStatisticsObjectTypeStory.constructor:
        return ChatStatisticsObjectTypeStory.fromJson(json);
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
