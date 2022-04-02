import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes the username of a supergroup or channel, requires owner privileges
/// in the supergroup or channel
/// Returns [Ok]
class SetSupergroupUsername extends TdFunction {
  SetSupergroupUsername({required this.supergroupId, required this.username});

  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  /// [username] New value of the username. Use an empty string to remove the
  /// username
  final String username;

  static const String CONSTRUCTOR = 'setSupergroupUsername';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'supergroup_id': this.supergroupId,
        'username': this.username,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
