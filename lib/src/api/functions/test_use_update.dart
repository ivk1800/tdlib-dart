import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Does nothing and ensures that the Update object is used; for testing only.
/// This is an offline method. Can be called before authorization
/// Returns [Update]
class TestUseUpdate extends TdFunction {
  TestUseUpdate();

  static const String CONSTRUCTOR = 'testUseUpdate';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
