import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A custom suggestion to be shown at the top of the chat list
@immutable
class SuggestedActionCustom extends SuggestedAction {
  const SuggestedActionCustom({
    required this.name,
    required this.title,
    required this.description,
    required this.url,
  });

  /// [name] Unique name of the suggestion
  final String name;

  /// [title] Title of the suggestion
  final FormattedText title;

  /// param_[description] Description of the suggestion
  final FormattedText description;

  /// [url] The link to open when the suggestion is clicked
  final String url;

  static const String constructor = 'suggestedActionCustom';

  static SuggestedActionCustom? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SuggestedActionCustom(
      name: json['name'] as String,
      title: FormattedText.fromJson(json['title'] as Map<String, dynamic>?)!,
      description: FormattedText.fromJson(
        json['description'] as Map<String, dynamic>?,
      )!,
      url: json['url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    'title': title.toJson(),
    'description': description.toJson(),
    'url': url,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
