import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Resets list of installed backgrounds to its default value
/// Returns [Ok]
class ResetBackgrounds extends TdFunction {
  ResetBackgrounds();

  static const String CONSTRUCTOR = 'resetBackgrounds';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
