import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Shares the phone number of the current user with a mutual contact.
/// Supposed to be called when the user clicks on
/// chatActionBarSharePhoneNumber
/// Returns [Ok]
@immutable
class SharePhoneNumber extends TdFunction {
  const SharePhoneNumber({
    required this.userId,
  });

  /// [userId] Identifier of the user with whom to share the phone number. The
  /// user must be a mutual contact
  final int userId;

  static const String constructor = 'sharePhoneNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
