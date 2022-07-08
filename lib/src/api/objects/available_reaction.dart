import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents an available reaction
@immutable
class AvailableReaction extends TdObject {
  const AvailableReaction({
    required this.reaction,
    required this.needsPremium,
  });

  /// [reaction] Text representation of the reaction
  final String reaction;

  /// [needsPremium] True, if Telegram Premium is needed to send the reaction
  final bool needsPremium;

  static const String constructor = 'availableReaction';

  static AvailableReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AvailableReaction(
      reaction: json['reaction'],
      needsPremium: json['needs_premium'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reaction': reaction,
        'needs_premium': needsPremium,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
