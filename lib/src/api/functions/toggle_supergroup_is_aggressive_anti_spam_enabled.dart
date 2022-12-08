import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether aggressive anti-spam checks are enabled in the supergroup;
/// requires can_delete_messages administrator right. Can be called only if
/// the supergroup has at least
/// getOption("aggressive_anti_spam_supergroup_member_count_min") members
/// Returns [Ok]
@immutable
class ToggleSupergroupIsAggressiveAntiSpamEnabled extends TdFunction {
  const ToggleSupergroupIsAggressiveAntiSpamEnabled({
    required this.supergroupId,
    required this.isAggressiveAntiSpamEnabled,
  });

  /// [supergroupId] The identifier of the supergroup, which isn't a broadcast
  /// group
  final int supergroupId;

  /// [isAggressiveAntiSpamEnabled] The new value of
  /// is_aggressive_anti_spam_enabled
  final bool isAggressiveAntiSpamEnabled;

  static const String constructor =
      'toggleSupergroupIsAggressiveAntiSpamEnabled';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'is_aggressive_anti_spam_enabled': isAggressiveAntiSpamEnabled,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
