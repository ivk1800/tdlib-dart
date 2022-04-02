import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns saved animations
/// Returns [Animations]
class GetSavedAnimations extends TdFunction {
  GetSavedAnimations();

  static const String CONSTRUCTOR = 'getSavedAnimations';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
