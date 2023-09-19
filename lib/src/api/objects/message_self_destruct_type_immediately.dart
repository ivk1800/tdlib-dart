import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message can be opened only once and will be self-destructed once
/// closed
@immutable
class MessageSelfDestructTypeImmediately extends MessageSelfDestructType {
  const MessageSelfDestructTypeImmediately();

  static const String constructor = 'messageSelfDestructTypeImmediately';

  static MessageSelfDestructTypeImmediately? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSelfDestructTypeImmediately();
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
