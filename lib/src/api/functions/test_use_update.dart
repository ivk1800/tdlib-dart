import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Does nothing and ensures that the Update object is used; for testing only.
/// This is an offline method. Can be called before authorization
/// Returns [Update]
@immutable
class TestUseUpdate extends TdFunction {
  const TestUseUpdate();

  static const String constructor = 'testUseUpdate';

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
