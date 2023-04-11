import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the result of an importContacts request
@immutable
class ImportedContacts extends TdObject {
  const ImportedContacts({
    required this.userIds,
    required this.importerCount,
  });

  /// [userIds] User identifiers of the imported contacts in the same order as
  /// they were specified in the request; 0 if the contact is not yet a
  /// registered user
  final List<int> userIds;

  /// [importerCount] The number of users that imported the corresponding
  /// contact; 0 for already registered users or if unavailable
  final List<int> importerCount;

  static const String constructor = 'importedContacts';

  static ImportedContacts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ImportedContacts(
      userIds: List<int>.from(
          ((json['user_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      importerCount: List<int>.from(
          ((json['importer_count'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_ids': userIds.map((item) => item).toList(),
        'importer_count': importerCount.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
