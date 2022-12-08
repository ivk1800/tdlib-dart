import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches a user by a token from the user's link
/// Returns [User]
@immutable
class SearchUserByToken extends TdFunction {
  const SearchUserByToken({
    required this.token,
  });

  /// [token] Token to search for
  final String token;

  static const String constructor = 'searchUserByToken';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'token': token,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
