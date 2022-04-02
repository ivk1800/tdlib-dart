import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Clears the list of recently found chats
/// Returns [Ok]
class ClearRecentlyFoundChats extends TdFunction {
  ClearRecentlyFoundChats();

  static const String CONSTRUCTOR = 'clearRecentlyFoundChats';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
