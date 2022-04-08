import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Does nothing; for testing only. This is an offline method. Can be called
/// before authorization
/// Returns [Ok]
@immutable
class TestCallEmpty extends TdFunction {
  const TestCallEmpty();

  static const String constructor = 'testCallEmpty';

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
