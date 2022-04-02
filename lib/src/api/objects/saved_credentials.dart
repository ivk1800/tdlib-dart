import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains information about saved card credentials
class SavedCredentials extends TdObject {
  SavedCredentials({required this.id, required this.title});

  /// [id] Unique identifier of the saved credentials
  final String id;

  /// [title] Title of the saved credentials
  final String title;

  static const String CONSTRUCTOR = 'savedCredentials';

  static SavedCredentials? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SavedCredentials(id: json['id'], title: json['title']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'id': this.id, 'title': this.title, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
