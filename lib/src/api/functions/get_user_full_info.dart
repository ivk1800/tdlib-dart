import '../tdapi.dart';

/// Returns full information about a user by their identifier
/// Returns [UserFullInfo]
class GetUserFullInfo extends TdFunction {
  GetUserFullInfo({required this.userId});

  /// [userId] User identifier
  final int userId;

  static const String CONSTRUCTOR = 'getUserFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_id': this.userId, '@type': CONSTRUCTOR};
}
