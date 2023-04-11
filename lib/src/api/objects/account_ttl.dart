import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about the period of inactivity after which the
/// current user's account will automatically be deleted
@immutable
class AccountTtl extends TdObject {
  const AccountTtl({
    required this.days,
  });

  /// [days] Number of days of inactivity before the account will be flagged for
  /// deletion; 30-366 days
  final int days;

  static const String constructor = 'accountTtl';

  static AccountTtl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AccountTtl(
      days: json['days'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'days': days,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
