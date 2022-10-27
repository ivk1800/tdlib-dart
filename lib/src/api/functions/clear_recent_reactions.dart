import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Clears the list of recently used reactions
/// Returns [Ok]
@immutable
class ClearRecentReactions extends TdFunction {
  const ClearRecentReactions();

  static const String constructor = 'clearRecentReactions';

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
