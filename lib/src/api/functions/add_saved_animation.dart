import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Manually adds a new animation to the list of saved animations. The new
/// animation is added to the beginning of the list. If the animation was
/// already in the list, it is removed first. Only non-secret video animations
/// with MIME type "video/mp4" can be added to the list
/// Returns [Ok]
@immutable
class AddSavedAnimation extends TdFunction {
  const AddSavedAnimation({
    required this.animation,
  });

  /// [animation] The animation file to be added. Only animations known to the
  /// server (i.e., successfully sent via a message) can be added to the list
  final InputFile animation;

  static const String constructor = 'addSavedAnimation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'animation': animation.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
