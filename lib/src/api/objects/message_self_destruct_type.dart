import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes when a message will be self-destructed
@immutable
abstract class MessageSelfDestructType extends TdObject {
  const MessageSelfDestructType();

  static const String constructor = 'messageSelfDestructType';

  /// Inherited by:
  /// [MessageSelfDestructTypeImmediately]
  /// [MessageSelfDestructTypeTimer]
  static MessageSelfDestructType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageSelfDestructTypeImmediately.constructor:
        return MessageSelfDestructTypeImmediately.fromJson(json);
      case MessageSelfDestructTypeTimer.constructor:
        return MessageSelfDestructTypeTimer.fromJson(json);
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
