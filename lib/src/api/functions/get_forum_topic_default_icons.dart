import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of custom emojis, which can be used as forum topic icon
/// by all users
/// Returns [Stickers]
@immutable
class GetForumTopicDefaultIcons extends TdFunction {
  const GetForumTopicDefaultIcons();

  static const String constructor = 'getForumTopicDefaultIcons';

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
