import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Deletes all call messages
/// Returns [Ok]
class DeleteAllCallMessages extends TdFunction {
  DeleteAllCallMessages({required this.revoke});

  /// [revoke] Pass true to delete the messages for all users
  final bool revoke;

  static const String CONSTRUCTOR = 'deleteAllCallMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'revoke': this.revoke, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
