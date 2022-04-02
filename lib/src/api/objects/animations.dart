import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a list of animations
class Animations extends TdObject {
  Animations({required this.animations});

  /// [animations] List of animations
  final List<Animation> animations;

  static const String CONSTRUCTOR = 'animations';

  static Animations? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Animations(
        animations: List<Animation>.from((json['animations'] ?? [])
            .map((item) => Animation.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'animations': animations.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
