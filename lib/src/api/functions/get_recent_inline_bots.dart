import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns up to 20 recently used inline bots in the order of their last
/// usage
/// Returns [Users]
class GetRecentInlineBots extends TdFunction {
  GetRecentInlineBots();

  static const String CONSTRUCTOR = 'getRecentInlineBots';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
