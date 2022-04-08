import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Clears the list of recently found chats
/// Returns [Ok]
@immutable
class ClearRecentlyFoundChats extends TdFunction {
  const ClearRecentlyFoundChats();

  static const String constructor = 'clearRecentlyFoundChats';

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
