import '../tdapi.dart';

/// Returns saved animations
/// Returns [Animations]
class GetSavedAnimations extends TdFunction {
  GetSavedAnimations();

  static const String CONSTRUCTOR = 'getSavedAnimations';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
