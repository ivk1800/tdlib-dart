import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Disables the currently enabled proxy. Can be called before authorization
/// Returns [Ok]
@immutable
class DisableProxy extends TdFunction {
  const DisableProxy();

  static const String constructor = 'disableProxy';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
