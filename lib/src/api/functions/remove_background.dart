import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes background from the list of installed backgrounds
/// Returns [Ok]
@immutable
class RemoveBackground extends TdFunction {
  const RemoveBackground({
    required this.backgroundId,
  });

  /// [backgroundId] The background identifier
  final int backgroundId;

  static const String constructor = 'removeBackground';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'background_id': backgroundId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
