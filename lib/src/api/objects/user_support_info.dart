import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains custom information about the user
@immutable
class UserSupportInfo extends TdObject {
  const UserSupportInfo({
    required this.message,
    required this.author,
    required this.date,
  });

  /// [message] Information message
  final FormattedText message;

  /// [author] Information author
  final String author;

  /// [date] Information change date
  final int date;

  static const String constructor = 'userSupportInfo';

  static UserSupportInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserSupportInfo(
      message:
          FormattedText.fromJson(json['message'] as Map<String, dynamic>?)!,
      author: json['author'] as String,
      date: json['date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        'author': author,
        'date': date,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
