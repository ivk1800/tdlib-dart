import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns all emojis, which has a corresponding animated emoji
/// Returns [Emojis]
@immutable
class GetAllAnimatedEmojis extends TdFunction {
  const GetAllAnimatedEmojis();

  static const String constructor = 'getAllAnimatedEmojis';

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
