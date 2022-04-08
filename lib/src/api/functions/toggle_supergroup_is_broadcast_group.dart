import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Upgrades supergroup to a broadcast group; requires owner privileges in the
/// supergroup
/// Returns [Ok]
@immutable
class ToggleSupergroupIsBroadcastGroup extends TdFunction {
  const ToggleSupergroupIsBroadcastGroup({
    required this.supergroupId,
  });

  /// [supergroupId] Identifier of the supergroup
  final int supergroupId;

  static const String constructor = 'toggleSupergroupIsBroadcastGroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
