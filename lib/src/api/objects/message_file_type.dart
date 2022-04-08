import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a file with messages exported from another app
@immutable
abstract class MessageFileType extends TdObject {
  const MessageFileType();

  static const String constructor = 'messageFileType';

  /// Inherited by:
  /// [MessageFileTypePrivate]
  /// [MessageFileTypeGroup]
  /// [MessageFileTypeUnknown]
  static MessageFileType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageFileTypePrivate.constructor:
        return MessageFileTypePrivate.fromJson(json);
      case MessageFileTypeGroup.constructor:
        return MessageFileTypeGroup.fromJson(json);
      case MessageFileTypeUnknown.constructor:
        return MessageFileTypeUnknown.fromJson(json);
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
