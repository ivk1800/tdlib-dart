import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Does nothing; for testing only. This is an offline method. Can be called
/// before authorization
/// Returns [Ok]
class TestCallEmpty extends TdFunction {
  TestCallEmpty();

  static const String CONSTRUCTOR = 'testCallEmpty';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
