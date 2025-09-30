import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether messages are automatically translated in the channel chat;
/// requires can_change_info administrator right in the channel. The chat must
/// have at least chatBoostFeatures.min_automatic_translation_boost_level
/// boost level to enable automatic translation
/// Returns [Ok]
@immutable
class ToggleSupergroupHasAutomaticTranslation extends TdFunction {
  const ToggleSupergroupHasAutomaticTranslation({
    required this.supergroupId,
    required this.hasAutomaticTranslation,
  });

  /// [supergroupId] The identifier of the channel
  final int supergroupId;

  /// [hasAutomaticTranslation] The new value of has_automatic_translation
  final bool hasAutomaticTranslation;

  static const String constructor = 'toggleSupergroupHasAutomaticTranslation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'supergroup_id': supergroupId,
    'has_automatic_translation': hasAutomaticTranslation,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
