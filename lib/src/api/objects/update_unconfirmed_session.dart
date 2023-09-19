import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The first unconfirmed session has changed
@immutable
class UpdateUnconfirmedSession extends Update {
  const UpdateUnconfirmedSession({
    this.session,
  });

  /// [session] The unconfirmed session; may be null if none
  final UnconfirmedSession? session;

  static const String constructor = 'updateUnconfirmedSession';

  static UpdateUnconfirmedSession? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUnconfirmedSession(
      session:
          UnconfirmedSession.fromJson(json['session'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'session': session?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
