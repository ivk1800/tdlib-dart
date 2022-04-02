import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Removes an animation from the list of saved animations
/// Returns [Ok]
class RemoveSavedAnimation extends TdFunction {
  RemoveSavedAnimation({required this.animation});

  /// [animation] Animation file to be removed
  final InputFile animation;

  static const String CONSTRUCTOR = 'removeSavedAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'animation': this.animation.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
