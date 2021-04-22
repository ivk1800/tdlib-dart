import '../tdapi.dart';

/// Returns only photo and video messages
class SearchMessagesFilterPhotoAndVideo extends SearchMessagesFilter {
  const SearchMessagesFilterPhotoAndVideo();

  static const String CONSTRUCTOR = 'searchMessagesFilterPhotoAndVideo';

  static SearchMessagesFilterPhotoAndVideo? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterPhotoAndVideo();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
