import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the birthdate of the current user
/// Returns [Ok]
@immutable
class SetBirthdate extends TdFunction {
  const SetBirthdate({
    this.birthdate,
  });

  /// [birthdate] The new value of the current user's birthdate; pass null to
  /// remove the birthdate
  final Birthdate? birthdate;

  static const String constructor = 'setBirthdate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'birthdate': birthdate?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
