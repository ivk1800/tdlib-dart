import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends a simple network request to the Telegram servers; for testing only.
/// Can be called before authorization
/// Returns [Ok]
@immutable
class TestNetwork extends TdFunction {
  const TestNetwork();

  static const String constructor = 'testNetwork';

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
