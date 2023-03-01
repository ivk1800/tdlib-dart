import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether aggressive anti-spam checks are enabled in the supergroup.
/// Can be called only if supergroupFullInfo.can_toggle_aggressive_anti_spam
/// == true
/// Returns [Ok]
@immutable
class ToggleSupergroupHasAggressiveAntiSpamEnabled extends TdFunction {
  const ToggleSupergroupHasAggressiveAntiSpamEnabled({
    required this.supergroupId,
    required this.hasAggressiveAntiSpamEnabled,
  });

  /// [supergroupId] The identifier of the supergroup, which isn't a broadcast
  /// group
  final int supergroupId;

  /// [hasAggressiveAntiSpamEnabled] The new value of
  /// has_aggressive_anti_spam_enabled
  final bool hasAggressiveAntiSpamEnabled;

  static const String constructor =
      'toggleSupergroupHasAggressiveAntiSpamEnabled';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'has_aggressive_anti_spam_enabled': hasAggressiveAntiSpamEnabled,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
