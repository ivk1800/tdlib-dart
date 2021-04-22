import '../tdapi.dart';

/// Upgrades supergroup to a broadcast group; requires owner privileges in the
/// supergroup
/// Returns [Ok]
class ToggleSupergroupIsBroadcastGroup extends TdFunction {
  ToggleSupergroupIsBroadcastGroup({required this.supergroupId});

  /// [supergroupId] Identifier of the supergroup
  final int supergroupId;

  static const String CONSTRUCTOR = 'toggleSupergroupIsBroadcastGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'supergroup_id': this.supergroupId, '@type': CONSTRUCTOR};
}
