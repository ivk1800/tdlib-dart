import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about saved payment credentials
@immutable
class SavedCredentials extends TdObject {
  const SavedCredentials({
    required this.id,
    required this.title,
  });

  /// [id] Unique identifier of the saved credentials
  final String id;

  /// [title] Title of the saved credentials
  final String title;

  static const String constructor = 'savedCredentials';

  static SavedCredentials? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SavedCredentials(
      id: json['id'] as String,
      title: json['title'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
