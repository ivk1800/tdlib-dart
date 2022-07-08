import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of a chat
@immutable
abstract class ChatType extends TdObject {
  const ChatType();

  static const String constructor = 'chatType';

  /// Inherited by:
  /// [ChatTypeBasicGroup]
  /// [ChatTypePrivate]
  /// [ChatTypeSecret]
  /// [ChatTypeSupergroup]
  static ChatType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatTypeBasicGroup.constructor:
        return ChatTypeBasicGroup.fromJson(json);
      case ChatTypePrivate.constructor:
        return ChatTypePrivate.fromJson(json);
      case ChatTypeSecret.constructor:
        return ChatTypeSecret.fromJson(json);
      case ChatTypeSupergroup.constructor:
        return ChatTypeSupergroup.fromJson(json);
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
