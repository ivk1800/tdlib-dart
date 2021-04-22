import '../tdapi.dart';

/// A file defined by its remote ID. The remote ID is guaranteed to be usable
/// only if the corresponding file is still accessible to the user and known
/// to TDLib.. For example, if the file is from a message, then the message
/// must be not deleted and accessible to the user. If the file database is
/// disabled, then the corresponding object with the file must be preloaded by
/// the application
class InputFileRemote extends InputFile {
  InputFileRemote({required this.id});

  /// [id] Remote file identifier
  final String id;

  static const String CONSTRUCTOR = 'inputFileRemote';

  static InputFileRemote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputFileRemote(id: json['id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'id': this.id, '@type': CONSTRUCTOR};
}
