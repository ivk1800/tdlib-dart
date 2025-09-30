import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns sponsored chats to be shown in the search results
/// Returns [SponsoredChats]
@immutable
class GetSearchSponsoredChats extends TdFunction {
  const GetSearchSponsoredChats({required this.query});

  /// [query] Query the user searches for
  final String query;

  static const String constructor = 'getSearchSponsoredChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'query': query,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
