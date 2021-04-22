import '../tdapi.dart';

/// Resets list of installed backgrounds to its default value
/// Returns [Ok]
class ResetBackgrounds extends TdFunction {
  ResetBackgrounds();

  static const String CONSTRUCTOR = 'resetBackgrounds';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
