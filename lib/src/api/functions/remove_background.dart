import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Removes background from the list of installed backgrounds
/// Returns [Ok]
class RemoveBackground extends TdFunction {
  RemoveBackground({required this.backgroundId});

  /// [backgroundId] The background identifier
  final int backgroundId;

  static const String CONSTRUCTOR = 'removeBackground';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'background_id': this.backgroundId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
