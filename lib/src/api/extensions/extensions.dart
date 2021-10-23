import 'package:tdlib/td_api.dart';

extension TdErrorExtensions on TdError {
  TdError copy({int? code, String? message}) =>
      TdError(code: code ?? this.code, message: message ?? this.message);
}

extension TdlibParametersExtensions on TdlibParameters {
  TdlibParameters copy(
          {bool? useTestDc,
          String? databaseDirectory,
          String? filesDirectory,
          bool? useFileDatabase,
          bool? useChatInfoDatabase,
          bool? useMessageDatabase,
          bool? useSecretChats,
          int? apiId,
          String? apiHash,
          String? systemLanguageCode,
          String? deviceModel,
          String? systemVersion,
          String? applicationVersion,
          bool? enableStorageOptimizer,
          bool? ignoreFileNames}) =>
      TdlibParameters(
          useTestDc: useTestDc ?? this.useTestDc,
          databaseDirectory: databaseDirectory ?? this.databaseDirectory,
          filesDirectory: filesDirectory ?? this.filesDirectory,
          useFileDatabase: useFileDatabase ?? this.useFileDatabase,
          useChatInfoDatabase: useChatInfoDatabase ?? this.useChatInfoDatabase,
          useMessageDatabase: useMessageDatabase ?? this.useMessageDatabase,
          useSecretChats: useSecretChats ?? this.useSecretChats,
          apiId: apiId ?? this.apiId,
          apiHash: apiHash ?? this.apiHash,
          systemLanguageCode: systemLanguageCode ?? this.systemLanguageCode,
          deviceModel: deviceModel ?? this.deviceModel,
          systemVersion: systemVersion ?? this.systemVersion,
          applicationVersion: applicationVersion ?? this.applicationVersion,
          enableStorageOptimizer:
              enableStorageOptimizer ?? this.enableStorageOptimizer,
          ignoreFileNames: ignoreFileNames ?? this.ignoreFileNames);
}

extension AuthenticationCodeTypeExtensions on AuthenticationCodeType {
  TResult map<TResult extends Object?>(
      {required TResult Function(AuthenticationCodeTypeTelegramMessage value)
          telegramMessage,
      required TResult Function(AuthenticationCodeTypeSms value) sms,
      required TResult Function(AuthenticationCodeTypeCall value) call,
      required TResult Function(AuthenticationCodeTypeFlashCall value)
          flashCall}) {
    switch (this.getConstructor()) {
      case AuthenticationCodeTypeTelegramMessage.CONSTRUCTOR:
        return telegramMessage
            .call(this as AuthenticationCodeTypeTelegramMessage);
      case AuthenticationCodeTypeSms.CONSTRUCTOR:
        return sms.call(this as AuthenticationCodeTypeSms);
      case AuthenticationCodeTypeCall.CONSTRUCTOR:
        return call.call(this as AuthenticationCodeTypeCall);
      case AuthenticationCodeTypeFlashCall.CONSTRUCTOR:
        return flashCall.call(this as AuthenticationCodeTypeFlashCall);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension AuthenticationCodeTypeTelegramMessageExtensions
    on AuthenticationCodeTypeTelegramMessage {
  AuthenticationCodeTypeTelegramMessage copy({int? length}) =>
      AuthenticationCodeTypeTelegramMessage(length: length ?? this.length);
}

extension AuthenticationCodeTypeSmsExtensions on AuthenticationCodeTypeSms {
  AuthenticationCodeTypeSms copy({int? length}) =>
      AuthenticationCodeTypeSms(length: length ?? this.length);
}

extension AuthenticationCodeTypeCallExtensions on AuthenticationCodeTypeCall {
  AuthenticationCodeTypeCall copy({int? length}) =>
      AuthenticationCodeTypeCall(length: length ?? this.length);
}

extension AuthenticationCodeTypeFlashCallExtensions
    on AuthenticationCodeTypeFlashCall {
  AuthenticationCodeTypeFlashCall copy({String? pattern}) =>
      AuthenticationCodeTypeFlashCall(pattern: pattern ?? this.pattern);
}

extension AuthenticationCodeInfoExtensions on AuthenticationCodeInfo {
  AuthenticationCodeInfo copy(
          {String? phoneNumber,
          AuthenticationCodeType? type,
          AuthenticationCodeType? nextType,
          int? timeout}) =>
      AuthenticationCodeInfo(
          phoneNumber: phoneNumber ?? this.phoneNumber,
          type: type ?? this.type,
          nextType: nextType ?? this.nextType,
          timeout: timeout ?? this.timeout);
}

extension EmailAddressAuthenticationCodeInfoExtensions
    on EmailAddressAuthenticationCodeInfo {
  EmailAddressAuthenticationCodeInfo copy(
          {String? emailAddressPattern, int? length}) =>
      EmailAddressAuthenticationCodeInfo(
          emailAddressPattern: emailAddressPattern ?? this.emailAddressPattern,
          length: length ?? this.length);
}

extension TextEntityExtensions on TextEntity {
  TextEntity copy({int? offset, int? length, TextEntityType? type}) =>
      TextEntity(
          offset: offset ?? this.offset,
          length: length ?? this.length,
          type: type ?? this.type);
}

extension TextEntitiesExtensions on TextEntities {
  TextEntities copy({List<TextEntity>? entities}) =>
      TextEntities(entities: entities ?? this.entities);
}

extension FormattedTextExtensions on FormattedText {
  FormattedText copy({String? text, List<TextEntity>? entities}) =>
      FormattedText(
          text: text ?? this.text, entities: entities ?? this.entities);
}

extension TermsOfServiceExtensions on TermsOfService {
  TermsOfService copy(
          {FormattedText? text, int? minUserAge, bool? showPopup}) =>
      TermsOfService(
          text: text ?? this.text,
          minUserAge: minUserAge ?? this.minUserAge,
          showPopup: showPopup ?? this.showPopup);
}

extension AuthorizationStateExtensions on AuthorizationState {
  TResult map<TResult extends Object?>(
      {required TResult Function(AuthorizationStateWaitTdlibParameters value)
          waitTdlibParameters,
      required TResult Function(AuthorizationStateWaitEncryptionKey value)
          waitEncryptionKey,
      required TResult Function(AuthorizationStateWaitPhoneNumber value)
          waitPhoneNumber,
      required TResult Function(AuthorizationStateWaitCode value) waitCode,
      required TResult Function(
              AuthorizationStateWaitOtherDeviceConfirmation value)
          waitOtherDeviceConfirmation,
      required TResult Function(AuthorizationStateWaitRegistration value)
          waitRegistration,
      required TResult Function(AuthorizationStateWaitPassword value)
          waitPassword,
      required TResult Function(AuthorizationStateReady value) ready,
      required TResult Function(AuthorizationStateLoggingOut value) loggingOut,
      required TResult Function(AuthorizationStateClosing value) closing,
      required TResult Function(AuthorizationStateClosed value) closed}) {
    switch (this.getConstructor()) {
      case AuthorizationStateWaitTdlibParameters.CONSTRUCTOR:
        return waitTdlibParameters
            .call(this as AuthorizationStateWaitTdlibParameters);
      case AuthorizationStateWaitEncryptionKey.CONSTRUCTOR:
        return waitEncryptionKey
            .call(this as AuthorizationStateWaitEncryptionKey);
      case AuthorizationStateWaitPhoneNumber.CONSTRUCTOR:
        return waitPhoneNumber.call(this as AuthorizationStateWaitPhoneNumber);
      case AuthorizationStateWaitCode.CONSTRUCTOR:
        return waitCode.call(this as AuthorizationStateWaitCode);
      case AuthorizationStateWaitOtherDeviceConfirmation.CONSTRUCTOR:
        return waitOtherDeviceConfirmation
            .call(this as AuthorizationStateWaitOtherDeviceConfirmation);
      case AuthorizationStateWaitRegistration.CONSTRUCTOR:
        return waitRegistration
            .call(this as AuthorizationStateWaitRegistration);
      case AuthorizationStateWaitPassword.CONSTRUCTOR:
        return waitPassword.call(this as AuthorizationStateWaitPassword);
      case AuthorizationStateReady.CONSTRUCTOR:
        return ready.call(this as AuthorizationStateReady);
      case AuthorizationStateLoggingOut.CONSTRUCTOR:
        return loggingOut.call(this as AuthorizationStateLoggingOut);
      case AuthorizationStateClosing.CONSTRUCTOR:
        return closing.call(this as AuthorizationStateClosing);
      case AuthorizationStateClosed.CONSTRUCTOR:
        return closed.call(this as AuthorizationStateClosed);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension AuthorizationStateWaitEncryptionKeyExtensions
    on AuthorizationStateWaitEncryptionKey {
  AuthorizationStateWaitEncryptionKey copy({bool? isEncrypted}) =>
      AuthorizationStateWaitEncryptionKey(
          isEncrypted: isEncrypted ?? this.isEncrypted);
}

extension AuthorizationStateWaitCodeExtensions on AuthorizationStateWaitCode {
  AuthorizationStateWaitCode copy({AuthenticationCodeInfo? codeInfo}) =>
      AuthorizationStateWaitCode(codeInfo: codeInfo ?? this.codeInfo);
}

extension AuthorizationStateWaitOtherDeviceConfirmationExtensions
    on AuthorizationStateWaitOtherDeviceConfirmation {
  AuthorizationStateWaitOtherDeviceConfirmation copy({String? link}) =>
      AuthorizationStateWaitOtherDeviceConfirmation(link: link ?? this.link);
}

extension AuthorizationStateWaitRegistrationExtensions
    on AuthorizationStateWaitRegistration {
  AuthorizationStateWaitRegistration copy({TermsOfService? termsOfService}) =>
      AuthorizationStateWaitRegistration(
          termsOfService: termsOfService ?? this.termsOfService);
}

extension AuthorizationStateWaitPasswordExtensions
    on AuthorizationStateWaitPassword {
  AuthorizationStateWaitPassword copy(
          {String? passwordHint,
          bool? hasRecoveryEmailAddress,
          String? recoveryEmailAddressPattern}) =>
      AuthorizationStateWaitPassword(
          passwordHint: passwordHint ?? this.passwordHint,
          hasRecoveryEmailAddress:
              hasRecoveryEmailAddress ?? this.hasRecoveryEmailAddress,
          recoveryEmailAddressPattern:
              recoveryEmailAddressPattern ?? this.recoveryEmailAddressPattern);
}

extension PasswordStateExtensions on PasswordState {
  PasswordState copy(
          {bool? hasPassword,
          String? passwordHint,
          bool? hasRecoveryEmailAddress,
          bool? hasPassportData,
          EmailAddressAuthenticationCodeInfo? recoveryEmailAddressCodeInfo}) =>
      PasswordState(
          hasPassword: hasPassword ?? this.hasPassword,
          passwordHint: passwordHint ?? this.passwordHint,
          hasRecoveryEmailAddress:
              hasRecoveryEmailAddress ?? this.hasRecoveryEmailAddress,
          hasPassportData: hasPassportData ?? this.hasPassportData,
          recoveryEmailAddressCodeInfo: recoveryEmailAddressCodeInfo ??
              this.recoveryEmailAddressCodeInfo);
}

extension RecoveryEmailAddressExtensions on RecoveryEmailAddress {
  RecoveryEmailAddress copy({String? recoveryEmailAddress}) =>
      RecoveryEmailAddress(
          recoveryEmailAddress:
              recoveryEmailAddress ?? this.recoveryEmailAddress);
}

extension TemporaryPasswordStateExtensions on TemporaryPasswordState {
  TemporaryPasswordState copy({bool? hasPassword, int? validFor}) =>
      TemporaryPasswordState(
          hasPassword: hasPassword ?? this.hasPassword,
          validFor: validFor ?? this.validFor);
}

extension LocalFileExtensions on LocalFile {
  LocalFile copy(
          {String? path,
          bool? canBeDownloaded,
          bool? canBeDeleted,
          bool? isDownloadingActive,
          bool? isDownloadingCompleted,
          int? downloadOffset,
          int? downloadedPrefixSize,
          int? downloadedSize}) =>
      LocalFile(
          path: path ?? this.path,
          canBeDownloaded: canBeDownloaded ?? this.canBeDownloaded,
          canBeDeleted: canBeDeleted ?? this.canBeDeleted,
          isDownloadingActive: isDownloadingActive ?? this.isDownloadingActive,
          isDownloadingCompleted:
              isDownloadingCompleted ?? this.isDownloadingCompleted,
          downloadOffset: downloadOffset ?? this.downloadOffset,
          downloadedPrefixSize:
              downloadedPrefixSize ?? this.downloadedPrefixSize,
          downloadedSize: downloadedSize ?? this.downloadedSize);
}

extension RemoteFileExtensions on RemoteFile {
  RemoteFile copy(
          {String? id,
          String? uniqueId,
          bool? isUploadingActive,
          bool? isUploadingCompleted,
          int? uploadedSize}) =>
      RemoteFile(
          id: id ?? this.id,
          uniqueId: uniqueId ?? this.uniqueId,
          isUploadingActive: isUploadingActive ?? this.isUploadingActive,
          isUploadingCompleted:
              isUploadingCompleted ?? this.isUploadingCompleted,
          uploadedSize: uploadedSize ?? this.uploadedSize);
}

extension FileExtensions on File {
  File copy(
          {int? id,
          int? size,
          int? expectedSize,
          LocalFile? local,
          RemoteFile? remote}) =>
      File(
          id: id ?? this.id,
          size: size ?? this.size,
          expectedSize: expectedSize ?? this.expectedSize,
          local: local ?? this.local,
          remote: remote ?? this.remote);
}

extension InputFileExtensions on InputFile {
  TResult map<TResult extends Object?>(
      {required TResult Function(InputFileId value) id,
      required TResult Function(InputFileRemote value) remote,
      required TResult Function(InputFileLocal value) local,
      required TResult Function(InputFileGenerated value) generated}) {
    switch (this.getConstructor()) {
      case InputFileId.CONSTRUCTOR:
        return id.call(this as InputFileId);
      case InputFileRemote.CONSTRUCTOR:
        return remote.call(this as InputFileRemote);
      case InputFileLocal.CONSTRUCTOR:
        return local.call(this as InputFileLocal);
      case InputFileGenerated.CONSTRUCTOR:
        return generated.call(this as InputFileGenerated);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension InputFileIdExtensions on InputFileId {
  InputFileId copy({int? id}) => InputFileId(id: id ?? this.id);
}

extension InputFileRemoteExtensions on InputFileRemote {
  InputFileRemote copy({String? id}) => InputFileRemote(id: id ?? this.id);
}

extension InputFileLocalExtensions on InputFileLocal {
  InputFileLocal copy({String? path}) =>
      InputFileLocal(path: path ?? this.path);
}

extension InputFileGeneratedExtensions on InputFileGenerated {
  InputFileGenerated copy(
          {String? originalPath, String? conversion, int? expectedSize}) =>
      InputFileGenerated(
          originalPath: originalPath ?? this.originalPath,
          conversion: conversion ?? this.conversion,
          expectedSize: expectedSize ?? this.expectedSize);
}

extension PhotoSizeExtensions on PhotoSize {
  PhotoSize copy(
          {String? type,
          File? photo,
          int? width,
          int? height,
          List<int>? progressiveSizes}) =>
      PhotoSize(
          type: type ?? this.type,
          photo: photo ?? this.photo,
          width: width ?? this.width,
          height: height ?? this.height,
          progressiveSizes: progressiveSizes ?? this.progressiveSizes);
}

extension MinithumbnailExtensions on Minithumbnail {
  Minithumbnail copy({int? width, int? height, String? data}) => Minithumbnail(
      width: width ?? this.width,
      height: height ?? this.height,
      data: data ?? this.data);
}

extension ThumbnailFormatExtensions on ThumbnailFormat {
  TResult map<TResult extends Object?>(
      {required TResult Function(ThumbnailFormatJpeg value) jpeg,
      required TResult Function(ThumbnailFormatPng value) png,
      required TResult Function(ThumbnailFormatWebp value) webp,
      required TResult Function(ThumbnailFormatGif value) gif,
      required TResult Function(ThumbnailFormatTgs value) tgs,
      required TResult Function(ThumbnailFormatMpeg4 value) mpeg4}) {
    switch (this.getConstructor()) {
      case ThumbnailFormatJpeg.CONSTRUCTOR:
        return jpeg.call(this as ThumbnailFormatJpeg);
      case ThumbnailFormatPng.CONSTRUCTOR:
        return png.call(this as ThumbnailFormatPng);
      case ThumbnailFormatWebp.CONSTRUCTOR:
        return webp.call(this as ThumbnailFormatWebp);
      case ThumbnailFormatGif.CONSTRUCTOR:
        return gif.call(this as ThumbnailFormatGif);
      case ThumbnailFormatTgs.CONSTRUCTOR:
        return tgs.call(this as ThumbnailFormatTgs);
      case ThumbnailFormatMpeg4.CONSTRUCTOR:
        return mpeg4.call(this as ThumbnailFormatMpeg4);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension ThumbnailExtensions on Thumbnail {
  Thumbnail copy(
          {ThumbnailFormat? format, int? width, int? height, File? file}) =>
      Thumbnail(
          format: format ?? this.format,
          width: width ?? this.width,
          height: height ?? this.height,
          file: file ?? this.file);
}

extension MaskPointExtensions on MaskPoint {
  TResult map<TResult extends Object?>(
      {required TResult Function(MaskPointForehead value) forehead,
      required TResult Function(MaskPointEyes value) eyes,
      required TResult Function(MaskPointMouth value) mouth,
      required TResult Function(MaskPointChin value) chin}) {
    switch (this.getConstructor()) {
      case MaskPointForehead.CONSTRUCTOR:
        return forehead.call(this as MaskPointForehead);
      case MaskPointEyes.CONSTRUCTOR:
        return eyes.call(this as MaskPointEyes);
      case MaskPointMouth.CONSTRUCTOR:
        return mouth.call(this as MaskPointMouth);
      case MaskPointChin.CONSTRUCTOR:
        return chin.call(this as MaskPointChin);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension MaskPositionExtensions on MaskPosition {
  MaskPosition copy(
          {MaskPoint? point, double? xShift, double? yShift, double? scale}) =>
      MaskPosition(
          point: point ?? this.point,
          xShift: xShift ?? this.xShift,
          yShift: yShift ?? this.yShift,
          scale: scale ?? this.scale);
}

extension ClosedVectorPathExtensions on ClosedVectorPath {
  ClosedVectorPath copy({List<VectorPathCommand>? commands}) =>
      ClosedVectorPath(commands: commands ?? this.commands);
}

extension PollOptionExtensions on PollOption {
  PollOption copy(
          {String? text,
          int? voterCount,
          int? votePercentage,
          bool? isChosen,
          bool? isBeingChosen}) =>
      PollOption(
          text: text ?? this.text,
          voterCount: voterCount ?? this.voterCount,
          votePercentage: votePercentage ?? this.votePercentage,
          isChosen: isChosen ?? this.isChosen,
          isBeingChosen: isBeingChosen ?? this.isBeingChosen);
}

extension PollTypeExtensions on PollType {
  TResult map<TResult extends Object?>(
      {required TResult Function(PollTypeRegular value) regular,
      required TResult Function(PollTypeQuiz value) quiz}) {
    switch (this.getConstructor()) {
      case PollTypeRegular.CONSTRUCTOR:
        return regular.call(this as PollTypeRegular);
      case PollTypeQuiz.CONSTRUCTOR:
        return quiz.call(this as PollTypeQuiz);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension PollTypeRegularExtensions on PollTypeRegular {
  PollTypeRegular copy({bool? allowMultipleAnswers}) => PollTypeRegular(
      allowMultipleAnswers: allowMultipleAnswers ?? this.allowMultipleAnswers);
}

extension PollTypeQuizExtensions on PollTypeQuiz {
  PollTypeQuiz copy({int? correctOptionId, FormattedText? explanation}) =>
      PollTypeQuiz(
          correctOptionId: correctOptionId ?? this.correctOptionId,
          explanation: explanation ?? this.explanation);
}

extension AnimationExtensions on Animation {
  Animation copy(
          {int? duration,
          int? width,
          int? height,
          String? fileName,
          String? mimeType,
          bool? hasStickers,
          Minithumbnail? minithumbnail,
          Thumbnail? thumbnail,
          File? animation}) =>
      Animation(
          duration: duration ?? this.duration,
          width: width ?? this.width,
          height: height ?? this.height,
          fileName: fileName ?? this.fileName,
          mimeType: mimeType ?? this.mimeType,
          hasStickers: hasStickers ?? this.hasStickers,
          minithumbnail: minithumbnail ?? this.minithumbnail,
          thumbnail: thumbnail ?? this.thumbnail,
          animation: animation ?? this.animation);
}

extension AudioExtensions on Audio {
  Audio copy(
          {int? duration,
          String? title,
          String? performer,
          String? fileName,
          String? mimeType,
          Minithumbnail? albumCoverMinithumbnail,
          Thumbnail? albumCoverThumbnail,
          File? audio}) =>
      Audio(
          duration: duration ?? this.duration,
          title: title ?? this.title,
          performer: performer ?? this.performer,
          fileName: fileName ?? this.fileName,
          mimeType: mimeType ?? this.mimeType,
          albumCoverMinithumbnail:
              albumCoverMinithumbnail ?? this.albumCoverMinithumbnail,
          albumCoverThumbnail: albumCoverThumbnail ?? this.albumCoverThumbnail,
          audio: audio ?? this.audio);
}

extension DocumentExtensions on Document {
  Document copy(
          {String? fileName,
          String? mimeType,
          Minithumbnail? minithumbnail,
          Thumbnail? thumbnail,
          File? document}) =>
      Document(
          fileName: fileName ?? this.fileName,
          mimeType: mimeType ?? this.mimeType,
          minithumbnail: minithumbnail ?? this.minithumbnail,
          thumbnail: thumbnail ?? this.thumbnail,
          document: document ?? this.document);
}

extension PhotoExtensions on Photo {
  Photo copy(
          {bool? hasStickers,
          Minithumbnail? minithumbnail,
          List<PhotoSize>? sizes}) =>
      Photo(
          hasStickers: hasStickers ?? this.hasStickers,
          minithumbnail: minithumbnail ?? this.minithumbnail,
          sizes: sizes ?? this.sizes);
}

extension StickerExtensions on Sticker {
  Sticker copy(
          {int? setId,
          int? width,
          int? height,
          String? emoji,
          bool? isAnimated,
          bool? isMask,
          MaskPosition? maskPosition,
          List<ClosedVectorPath>? outline,
          Thumbnail? thumbnail,
          File? sticker}) =>
      Sticker(
          setId: setId ?? this.setId,
          width: width ?? this.width,
          height: height ?? this.height,
          emoji: emoji ?? this.emoji,
          isAnimated: isAnimated ?? this.isAnimated,
          isMask: isMask ?? this.isMask,
          maskPosition: maskPosition ?? this.maskPosition,
          outline: outline ?? this.outline,
          thumbnail: thumbnail ?? this.thumbnail,
          sticker: sticker ?? this.sticker);
}

extension VideoExtensions on Video {
  Video copy(
          {int? duration,
          int? width,
          int? height,
          String? fileName,
          String? mimeType,
          bool? hasStickers,
          bool? supportsStreaming,
          Minithumbnail? minithumbnail,
          Thumbnail? thumbnail,
          File? video}) =>
      Video(
          duration: duration ?? this.duration,
          width: width ?? this.width,
          height: height ?? this.height,
          fileName: fileName ?? this.fileName,
          mimeType: mimeType ?? this.mimeType,
          hasStickers: hasStickers ?? this.hasStickers,
          supportsStreaming: supportsStreaming ?? this.supportsStreaming,
          minithumbnail: minithumbnail ?? this.minithumbnail,
          thumbnail: thumbnail ?? this.thumbnail,
          video: video ?? this.video);
}

extension VideoNoteExtensions on VideoNote {
  VideoNote copy(
          {int? duration,
          int? length,
          Minithumbnail? minithumbnail,
          Thumbnail? thumbnail,
          File? video}) =>
      VideoNote(
          duration: duration ?? this.duration,
          length: length ?? this.length,
          minithumbnail: minithumbnail ?? this.minithumbnail,
          thumbnail: thumbnail ?? this.thumbnail,
          video: video ?? this.video);
}

extension VoiceNoteExtensions on VoiceNote {
  VoiceNote copy(
          {int? duration, String? waveform, String? mimeType, File? voice}) =>
      VoiceNote(
          duration: duration ?? this.duration,
          waveform: waveform ?? this.waveform,
          mimeType: mimeType ?? this.mimeType,
          voice: voice ?? this.voice);
}

extension ContactExtensions on Contact {
  Contact copy(
          {String? phoneNumber,
          String? firstName,
          String? lastName,
          String? vcard,
          int? userId}) =>
      Contact(
          phoneNumber: phoneNumber ?? this.phoneNumber,
          firstName: firstName ?? this.firstName,
          lastName: lastName ?? this.lastName,
          vcard: vcard ?? this.vcard,
          userId: userId ?? this.userId);
}

extension LocationExtensions on Location {
  Location copy(
          {double? latitude, double? longitude, double? horizontalAccuracy}) =>
      Location(
          latitude: latitude ?? this.latitude,
          longitude: longitude ?? this.longitude,
          horizontalAccuracy: horizontalAccuracy ?? this.horizontalAccuracy);
}

extension VenueExtensions on Venue {
  Venue copy(
          {Location? location,
          String? title,
          String? address,
          String? provider,
          String? id,
          String? type}) =>
      Venue(
          location: location ?? this.location,
          title: title ?? this.title,
          address: address ?? this.address,
          provider: provider ?? this.provider,
          id: id ?? this.id,
          type: type ?? this.type);
}

extension GameExtensions on Game {
  Game copy(
          {int? id,
          String? shortName,
          String? title,
          FormattedText? text,
          String? description,
          Photo? photo,
          Animation? animation}) =>
      Game(
          id: id ?? this.id,
          shortName: shortName ?? this.shortName,
          title: title ?? this.title,
          text: text ?? this.text,
          description: description ?? this.description,
          photo: photo ?? this.photo,
          animation: animation ?? this.animation);
}

extension PollExtensions on Poll {
  Poll copy(
          {int? id,
          String? question,
          List<PollOption>? options,
          int? totalVoterCount,
          List<int>? recentVoterUserIds,
          bool? isAnonymous,
          PollType? type,
          int? openPeriod,
          int? closeDate,
          bool? isClosed}) =>
      Poll(
          id: id ?? this.id,
          question: question ?? this.question,
          options: options ?? this.options,
          totalVoterCount: totalVoterCount ?? this.totalVoterCount,
          recentVoterUserIds: recentVoterUserIds ?? this.recentVoterUserIds,
          isAnonymous: isAnonymous ?? this.isAnonymous,
          type: type ?? this.type,
          openPeriod: openPeriod ?? this.openPeriod,
          closeDate: closeDate ?? this.closeDate,
          isClosed: isClosed ?? this.isClosed);
}

extension ProfilePhotoExtensions on ProfilePhoto {
  ProfilePhoto copy({int? id, File? small, File? big, bool? hasAnimation}) =>
      ProfilePhoto(
          id: id ?? this.id,
          small: small ?? this.small,
          big: big ?? this.big,
          hasAnimation: hasAnimation ?? this.hasAnimation);
}

extension ChatPhotoInfoExtensions on ChatPhotoInfo {
  ChatPhotoInfo copy({File? small, File? big, bool? hasAnimation}) =>
      ChatPhotoInfo(
          small: small ?? this.small,
          big: big ?? this.big,
          hasAnimation: hasAnimation ?? this.hasAnimation);
}

extension UserTypeExtensions on UserType {
  TResult map<TResult extends Object?>(
      {required TResult Function(UserTypeRegular value) regular,
      required TResult Function(UserTypeDeleted value) deleted,
      required TResult Function(UserTypeBot value) bot,
      required TResult Function(UserTypeUnknown value) unknown}) {
    switch (this.getConstructor()) {
      case UserTypeRegular.CONSTRUCTOR:
        return regular.call(this as UserTypeRegular);
      case UserTypeDeleted.CONSTRUCTOR:
        return deleted.call(this as UserTypeDeleted);
      case UserTypeBot.CONSTRUCTOR:
        return bot.call(this as UserTypeBot);
      case UserTypeUnknown.CONSTRUCTOR:
        return unknown.call(this as UserTypeUnknown);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension UserTypeBotExtensions on UserTypeBot {
  UserTypeBot copy(
          {bool? canJoinGroups,
          bool? canReadAllGroupMessages,
          bool? isInline,
          String? inlineQueryPlaceholder,
          bool? needLocation}) =>
      UserTypeBot(
          canJoinGroups: canJoinGroups ?? this.canJoinGroups,
          canReadAllGroupMessages:
              canReadAllGroupMessages ?? this.canReadAllGroupMessages,
          isInline: isInline ?? this.isInline,
          inlineQueryPlaceholder:
              inlineQueryPlaceholder ?? this.inlineQueryPlaceholder,
          needLocation: needLocation ?? this.needLocation);
}

extension BotCommandExtensions on BotCommand {
  BotCommand copy({String? command, String? description}) => BotCommand(
      command: command ?? this.command,
      description: description ?? this.description);
}

extension BotInfoExtensions on BotInfo {
  BotInfo copy({String? description, List<BotCommand>? commands}) => BotInfo(
      description: description ?? this.description,
      commands: commands ?? this.commands);
}

extension ChatLocationExtensions on ChatLocation {
  ChatLocation copy({Location? location, String? address}) => ChatLocation(
      location: location ?? this.location, address: address ?? this.address);
}

extension AnimatedChatPhotoExtensions on AnimatedChatPhoto {
  AnimatedChatPhoto copy(
          {int? length, File? file, double? mainFrameTimestamp}) =>
      AnimatedChatPhoto(
          length: length ?? this.length,
          file: file ?? this.file,
          mainFrameTimestamp: mainFrameTimestamp ?? this.mainFrameTimestamp);
}

extension ChatPhotoExtensions on ChatPhoto {
  ChatPhoto copy(
          {int? id,
          int? addedDate,
          Minithumbnail? minithumbnail,
          List<PhotoSize>? sizes,
          AnimatedChatPhoto? animation}) =>
      ChatPhoto(
          id: id ?? this.id,
          addedDate: addedDate ?? this.addedDate,
          minithumbnail: minithumbnail ?? this.minithumbnail,
          sizes: sizes ?? this.sizes,
          animation: animation ?? this.animation);
}

extension ChatPhotosExtensions on ChatPhotos {
  ChatPhotos copy({int? totalCount, List<ChatPhoto>? photos}) => ChatPhotos(
      totalCount: totalCount ?? this.totalCount, photos: photos ?? this.photos);
}

extension InputChatPhotoExtensions on InputChatPhoto {
  TResult map<TResult extends Object?>(
      {required TResult Function(InputChatPhotoPrevious value) previous,
      required TResult Function(InputChatPhotoStatic value) static,
      required TResult Function(InputChatPhotoAnimation value) animation}) {
    switch (this.getConstructor()) {
      case InputChatPhotoPrevious.CONSTRUCTOR:
        return previous.call(this as InputChatPhotoPrevious);
      case InputChatPhotoStatic.CONSTRUCTOR:
        return static.call(this as InputChatPhotoStatic);
      case InputChatPhotoAnimation.CONSTRUCTOR:
        return animation.call(this as InputChatPhotoAnimation);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension InputChatPhotoPreviousExtensions on InputChatPhotoPrevious {
  InputChatPhotoPrevious copy({int? chatPhotoId}) =>
      InputChatPhotoPrevious(chatPhotoId: chatPhotoId ?? this.chatPhotoId);
}

extension InputChatPhotoStaticExtensions on InputChatPhotoStatic {
  InputChatPhotoStatic copy({InputFile? photo}) =>
      InputChatPhotoStatic(photo: photo ?? this.photo);
}

extension InputChatPhotoAnimationExtensions on InputChatPhotoAnimation {
  InputChatPhotoAnimation copy(
          {InputFile? animation, double? mainFrameTimestamp}) =>
      InputChatPhotoAnimation(
          animation: animation ?? this.animation,
          mainFrameTimestamp: mainFrameTimestamp ?? this.mainFrameTimestamp);
}

extension UserExtensions on User {
  User copy(
          {int? id,
          String? firstName,
          String? lastName,
          String? username,
          String? phoneNumber,
          UserStatus? status,
          ProfilePhoto? profilePhoto,
          bool? isContact,
          bool? isMutualContact,
          bool? isVerified,
          bool? isSupport,
          String? restrictionReason,
          bool? isScam,
          bool? isFake,
          bool? haveAccess,
          UserType? type,
          String? languageCode}) =>
      User(
          id: id ?? this.id,
          firstName: firstName ?? this.firstName,
          lastName: lastName ?? this.lastName,
          username: username ?? this.username,
          phoneNumber: phoneNumber ?? this.phoneNumber,
          status: status ?? this.status,
          profilePhoto: profilePhoto ?? this.profilePhoto,
          isContact: isContact ?? this.isContact,
          isMutualContact: isMutualContact ?? this.isMutualContact,
          isVerified: isVerified ?? this.isVerified,
          isSupport: isSupport ?? this.isSupport,
          restrictionReason: restrictionReason ?? this.restrictionReason,
          isScam: isScam ?? this.isScam,
          isFake: isFake ?? this.isFake,
          haveAccess: haveAccess ?? this.haveAccess,
          type: type ?? this.type,
          languageCode: languageCode ?? this.languageCode);
}

extension UserFullInfoExtensions on UserFullInfo {
  UserFullInfo copy(
          {ChatPhoto? photo,
          bool? isBlocked,
          bool? canBeCalled,
          bool? supportsVideoCalls,
          bool? hasPrivateCalls,
          bool? needPhoneNumberPrivacyException,
          String? bio,
          String? shareText,
          int? groupInCommonCount,
          BotInfo? botInfo}) =>
      UserFullInfo(
          photo: photo ?? this.photo,
          isBlocked: isBlocked ?? this.isBlocked,
          canBeCalled: canBeCalled ?? this.canBeCalled,
          supportsVideoCalls: supportsVideoCalls ?? this.supportsVideoCalls,
          hasPrivateCalls: hasPrivateCalls ?? this.hasPrivateCalls,
          needPhoneNumberPrivacyException: needPhoneNumberPrivacyException ??
              this.needPhoneNumberPrivacyException,
          bio: bio ?? this.bio,
          shareText: shareText ?? this.shareText,
          groupInCommonCount: groupInCommonCount ?? this.groupInCommonCount,
          botInfo: botInfo ?? this.botInfo);
}

extension UsersExtensions on Users {
  Users copy({int? totalCount, List<int>? userIds}) => Users(
      totalCount: totalCount ?? this.totalCount,
      userIds: userIds ?? this.userIds);
}

extension ChatAdministratorExtensions on ChatAdministrator {
  ChatAdministrator copy({int? userId, String? customTitle, bool? isOwner}) =>
      ChatAdministrator(
          userId: userId ?? this.userId,
          customTitle: customTitle ?? this.customTitle,
          isOwner: isOwner ?? this.isOwner);
}

extension ChatAdministratorsExtensions on ChatAdministrators {
  ChatAdministrators copy({List<ChatAdministrator>? administrators}) =>
      ChatAdministrators(administrators: administrators ?? this.administrators);
}

extension ChatPermissionsExtensions on ChatPermissions {
  ChatPermissions copy(
          {bool? canSendMessages,
          bool? canSendMediaMessages,
          bool? canSendPolls,
          bool? canSendOtherMessages,
          bool? canAddWebPagePreviews,
          bool? canChangeInfo,
          bool? canInviteUsers,
          bool? canPinMessages}) =>
      ChatPermissions(
          canSendMessages: canSendMessages ?? this.canSendMessages,
          canSendMediaMessages:
              canSendMediaMessages ?? this.canSendMediaMessages,
          canSendPolls: canSendPolls ?? this.canSendPolls,
          canSendOtherMessages:
              canSendOtherMessages ?? this.canSendOtherMessages,
          canAddWebPagePreviews:
              canAddWebPagePreviews ?? this.canAddWebPagePreviews,
          canChangeInfo: canChangeInfo ?? this.canChangeInfo,
          canInviteUsers: canInviteUsers ?? this.canInviteUsers,
          canPinMessages: canPinMessages ?? this.canPinMessages);
}

extension ChatMemberStatusExtensions on ChatMemberStatus {
  TResult map<TResult extends Object?>(
      {required TResult Function(ChatMemberStatusCreator value) creator,
      required TResult Function(ChatMemberStatusAdministrator value)
          administrator,
      required TResult Function(ChatMemberStatusMember value) member,
      required TResult Function(ChatMemberStatusRestricted value) restricted,
      required TResult Function(ChatMemberStatusLeft value) left,
      required TResult Function(ChatMemberStatusBanned value) banned}) {
    switch (this.getConstructor()) {
      case ChatMemberStatusCreator.CONSTRUCTOR:
        return creator.call(this as ChatMemberStatusCreator);
      case ChatMemberStatusAdministrator.CONSTRUCTOR:
        return administrator.call(this as ChatMemberStatusAdministrator);
      case ChatMemberStatusMember.CONSTRUCTOR:
        return member.call(this as ChatMemberStatusMember);
      case ChatMemberStatusRestricted.CONSTRUCTOR:
        return restricted.call(this as ChatMemberStatusRestricted);
      case ChatMemberStatusLeft.CONSTRUCTOR:
        return left.call(this as ChatMemberStatusLeft);
      case ChatMemberStatusBanned.CONSTRUCTOR:
        return banned.call(this as ChatMemberStatusBanned);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension ChatMemberStatusCreatorExtensions on ChatMemberStatusCreator {
  ChatMemberStatusCreator copy(
          {String? customTitle, bool? isAnonymous, bool? isMember}) =>
      ChatMemberStatusCreator(
          customTitle: customTitle ?? this.customTitle,
          isAnonymous: isAnonymous ?? this.isAnonymous,
          isMember: isMember ?? this.isMember);
}

extension ChatMemberStatusAdministratorExtensions
    on ChatMemberStatusAdministrator {
  ChatMemberStatusAdministrator copy(
          {String? customTitle,
          bool? canBeEdited,
          bool? canManageChat,
          bool? canChangeInfo,
          bool? canPostMessages,
          bool? canEditMessages,
          bool? canDeleteMessages,
          bool? canInviteUsers,
          bool? canRestrictMembers,
          bool? canPinMessages,
          bool? canPromoteMembers,
          bool? canManageVoiceChats,
          bool? isAnonymous}) =>
      ChatMemberStatusAdministrator(
          customTitle: customTitle ?? this.customTitle,
          canBeEdited: canBeEdited ?? this.canBeEdited,
          canManageChat: canManageChat ?? this.canManageChat,
          canChangeInfo: canChangeInfo ?? this.canChangeInfo,
          canPostMessages: canPostMessages ?? this.canPostMessages,
          canEditMessages: canEditMessages ?? this.canEditMessages,
          canDeleteMessages: canDeleteMessages ?? this.canDeleteMessages,
          canInviteUsers: canInviteUsers ?? this.canInviteUsers,
          canRestrictMembers: canRestrictMembers ?? this.canRestrictMembers,
          canPinMessages: canPinMessages ?? this.canPinMessages,
          canPromoteMembers: canPromoteMembers ?? this.canPromoteMembers,
          canManageVoiceChats: canManageVoiceChats ?? this.canManageVoiceChats,
          isAnonymous: isAnonymous ?? this.isAnonymous);
}

extension ChatMemberStatusRestrictedExtensions on ChatMemberStatusRestricted {
  ChatMemberStatusRestricted copy(
          {bool? isMember,
          int? restrictedUntilDate,
          ChatPermissions? permissions}) =>
      ChatMemberStatusRestricted(
          isMember: isMember ?? this.isMember,
          restrictedUntilDate: restrictedUntilDate ?? this.restrictedUntilDate,
          permissions: permissions ?? this.permissions);
}

extension ChatMemberStatusBannedExtensions on ChatMemberStatusBanned {
  ChatMemberStatusBanned copy({int? bannedUntilDate}) => ChatMemberStatusBanned(
      bannedUntilDate: bannedUntilDate ?? this.bannedUntilDate);
}

extension ChatMemberExtensions on ChatMember {
  ChatMember copy(
          {int? userId,
          int? inviterUserId,
          int? joinedChatDate,
          ChatMemberStatus? status,
          BotInfo? botInfo}) =>
      ChatMember(
          userId: userId ?? this.userId,
          inviterUserId: inviterUserId ?? this.inviterUserId,
          joinedChatDate: joinedChatDate ?? this.joinedChatDate,
          status: status ?? this.status,
          botInfo: botInfo ?? this.botInfo);
}

extension ChatMembersExtensions on ChatMembers {
  ChatMembers copy({int? totalCount, List<ChatMember>? members}) => ChatMembers(
      totalCount: totalCount ?? this.totalCount,
      members: members ?? this.members);
}

extension ChatMembersFilterExtensions on ChatMembersFilter {
  TResult map<TResult extends Object?>(
      {required TResult Function(ChatMembersFilterContacts value) contacts,
      required TResult Function(ChatMembersFilterAdministrators value)
          administrators,
      required TResult Function(ChatMembersFilterMembers value) members,
      required TResult Function(ChatMembersFilterMention value) mention,
      required TResult Function(ChatMembersFilterRestricted value) restricted,
      required TResult Function(ChatMembersFilterBanned value) banned,
      required TResult Function(ChatMembersFilterBots value) bots}) {
    switch (this.getConstructor()) {
      case ChatMembersFilterContacts.CONSTRUCTOR:
        return contacts.call(this as ChatMembersFilterContacts);
      case ChatMembersFilterAdministrators.CONSTRUCTOR:
        return administrators.call(this as ChatMembersFilterAdministrators);
      case ChatMembersFilterMembers.CONSTRUCTOR:
        return members.call(this as ChatMembersFilterMembers);
      case ChatMembersFilterMention.CONSTRUCTOR:
        return mention.call(this as ChatMembersFilterMention);
      case ChatMembersFilterRestricted.CONSTRUCTOR:
        return restricted.call(this as ChatMembersFilterRestricted);
      case ChatMembersFilterBanned.CONSTRUCTOR:
        return banned.call(this as ChatMembersFilterBanned);
      case ChatMembersFilterBots.CONSTRUCTOR:
        return bots.call(this as ChatMembersFilterBots);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension ChatMembersFilterMentionExtensions on ChatMembersFilterMention {
  ChatMembersFilterMention copy({int? messageThreadId}) =>
      ChatMembersFilterMention(
          messageThreadId: messageThreadId ?? this.messageThreadId);
}

extension SupergroupMembersFilterExtensions on SupergroupMembersFilter {
  TResult map<TResult extends Object?>(
      {required TResult Function(SupergroupMembersFilterRecent value) recent,
      required TResult Function(SupergroupMembersFilterContacts value) contacts,
      required TResult Function(SupergroupMembersFilterAdministrators value)
          administrators,
      required TResult Function(SupergroupMembersFilterSearch value) search,
      required TResult Function(SupergroupMembersFilterRestricted value)
          restricted,
      required TResult Function(SupergroupMembersFilterBanned value) banned,
      required TResult Function(SupergroupMembersFilterMention value) mention,
      required TResult Function(SupergroupMembersFilterBots value) bots}) {
    switch (this.getConstructor()) {
      case SupergroupMembersFilterRecent.CONSTRUCTOR:
        return recent.call(this as SupergroupMembersFilterRecent);
      case SupergroupMembersFilterContacts.CONSTRUCTOR:
        return contacts.call(this as SupergroupMembersFilterContacts);
      case SupergroupMembersFilterAdministrators.CONSTRUCTOR:
        return administrators
            .call(this as SupergroupMembersFilterAdministrators);
      case SupergroupMembersFilterSearch.CONSTRUCTOR:
        return search.call(this as SupergroupMembersFilterSearch);
      case SupergroupMembersFilterRestricted.CONSTRUCTOR:
        return restricted.call(this as SupergroupMembersFilterRestricted);
      case SupergroupMembersFilterBanned.CONSTRUCTOR:
        return banned.call(this as SupergroupMembersFilterBanned);
      case SupergroupMembersFilterMention.CONSTRUCTOR:
        return mention.call(this as SupergroupMembersFilterMention);
      case SupergroupMembersFilterBots.CONSTRUCTOR:
        return bots.call(this as SupergroupMembersFilterBots);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension SupergroupMembersFilterContactsExtensions
    on SupergroupMembersFilterContacts {
  SupergroupMembersFilterContacts copy({String? query}) =>
      SupergroupMembersFilterContacts(query: query ?? this.query);
}

extension SupergroupMembersFilterSearchExtensions
    on SupergroupMembersFilterSearch {
  SupergroupMembersFilterSearch copy({String? query}) =>
      SupergroupMembersFilterSearch(query: query ?? this.query);
}

extension SupergroupMembersFilterRestrictedExtensions
    on SupergroupMembersFilterRestricted {
  SupergroupMembersFilterRestricted copy({String? query}) =>
      SupergroupMembersFilterRestricted(query: query ?? this.query);
}

extension SupergroupMembersFilterBannedExtensions
    on SupergroupMembersFilterBanned {
  SupergroupMembersFilterBanned copy({String? query}) =>
      SupergroupMembersFilterBanned(query: query ?? this.query);
}

extension SupergroupMembersFilterMentionExtensions
    on SupergroupMembersFilterMention {
  SupergroupMembersFilterMention copy({String? query, int? messageThreadId}) =>
      SupergroupMembersFilterMention(
          query: query ?? this.query,
          messageThreadId: messageThreadId ?? this.messageThreadId);
}

extension ChatInviteLinkExtensions on ChatInviteLink {
  ChatInviteLink copy(
          {String? inviteLink,
          int? creatorUserId,
          int? date,
          int? editDate,
          int? expireDate,
          int? memberLimit,
          int? memberCount,
          bool? isPrimary,
          bool? isRevoked}) =>
      ChatInviteLink(
          inviteLink: inviteLink ?? this.inviteLink,
          creatorUserId: creatorUserId ?? this.creatorUserId,
          date: date ?? this.date,
          editDate: editDate ?? this.editDate,
          expireDate: expireDate ?? this.expireDate,
          memberLimit: memberLimit ?? this.memberLimit,
          memberCount: memberCount ?? this.memberCount,
          isPrimary: isPrimary ?? this.isPrimary,
          isRevoked: isRevoked ?? this.isRevoked);
}

extension ChatInviteLinksExtensions on ChatInviteLinks {
  ChatInviteLinks copy({int? totalCount, List<ChatInviteLink>? inviteLinks}) =>
      ChatInviteLinks(
          totalCount: totalCount ?? this.totalCount,
          inviteLinks: inviteLinks ?? this.inviteLinks);
}

extension ChatInviteLinkCountExtensions on ChatInviteLinkCount {
  ChatInviteLinkCount copy(
          {int? userId, int? inviteLinkCount, int? revokedInviteLinkCount}) =>
      ChatInviteLinkCount(
          userId: userId ?? this.userId,
          inviteLinkCount: inviteLinkCount ?? this.inviteLinkCount,
          revokedInviteLinkCount:
              revokedInviteLinkCount ?? this.revokedInviteLinkCount);
}

extension ChatInviteLinkCountsExtensions on ChatInviteLinkCounts {
  ChatInviteLinkCounts copy({List<ChatInviteLinkCount>? inviteLinkCounts}) =>
      ChatInviteLinkCounts(
          inviteLinkCounts: inviteLinkCounts ?? this.inviteLinkCounts);
}

extension ChatInviteLinkMemberExtensions on ChatInviteLinkMember {
  ChatInviteLinkMember copy({int? userId, int? joinedChatDate}) =>
      ChatInviteLinkMember(
          userId: userId ?? this.userId,
          joinedChatDate: joinedChatDate ?? this.joinedChatDate);
}

extension ChatInviteLinkMembersExtensions on ChatInviteLinkMembers {
  ChatInviteLinkMembers copy(
          {int? totalCount, List<ChatInviteLinkMember>? members}) =>
      ChatInviteLinkMembers(
          totalCount: totalCount ?? this.totalCount,
          members: members ?? this.members);
}

extension ChatInviteLinkInfoExtensions on ChatInviteLinkInfo {
  ChatInviteLinkInfo copy(
          {int? chatId,
          int? accessibleFor,
          ChatType? type,
          String? title,
          ChatPhotoInfo? photo,
          int? memberCount,
          List<int>? memberUserIds,
          bool? isPublic}) =>
      ChatInviteLinkInfo(
          chatId: chatId ?? this.chatId,
          accessibleFor: accessibleFor ?? this.accessibleFor,
          type: type ?? this.type,
          title: title ?? this.title,
          photo: photo ?? this.photo,
          memberCount: memberCount ?? this.memberCount,
          memberUserIds: memberUserIds ?? this.memberUserIds,
          isPublic: isPublic ?? this.isPublic);
}

extension BasicGroupExtensions on BasicGroup {
  BasicGroup copy(
          {int? id,
          int? memberCount,
          ChatMemberStatus? status,
          bool? isActive,
          int? upgradedToSupergroupId}) =>
      BasicGroup(
          id: id ?? this.id,
          memberCount: memberCount ?? this.memberCount,
          status: status ?? this.status,
          isActive: isActive ?? this.isActive,
          upgradedToSupergroupId:
              upgradedToSupergroupId ?? this.upgradedToSupergroupId);
}

extension BasicGroupFullInfoExtensions on BasicGroupFullInfo {
  BasicGroupFullInfo copy(
          {ChatPhoto? photo,
          String? description,
          int? creatorUserId,
          List<ChatMember>? members,
          ChatInviteLink? inviteLink}) =>
      BasicGroupFullInfo(
          photo: photo ?? this.photo,
          description: description ?? this.description,
          creatorUserId: creatorUserId ?? this.creatorUserId,
          members: members ?? this.members,
          inviteLink: inviteLink ?? this.inviteLink);
}

extension SupergroupExtensions on Supergroup {
  Supergroup copy(
          {int? id,
          String? username,
          int? date,
          ChatMemberStatus? status,
          int? memberCount,
          bool? hasLinkedChat,
          bool? hasLocation,
          bool? signMessages,
          bool? isSlowModeEnabled,
          bool? isChannel,
          bool? isBroadcastGroup,
          bool? isVerified,
          String? restrictionReason,
          bool? isScam,
          bool? isFake}) =>
      Supergroup(
          id: id ?? this.id,
          username: username ?? this.username,
          date: date ?? this.date,
          status: status ?? this.status,
          memberCount: memberCount ?? this.memberCount,
          hasLinkedChat: hasLinkedChat ?? this.hasLinkedChat,
          hasLocation: hasLocation ?? this.hasLocation,
          signMessages: signMessages ?? this.signMessages,
          isSlowModeEnabled: isSlowModeEnabled ?? this.isSlowModeEnabled,
          isChannel: isChannel ?? this.isChannel,
          isBroadcastGroup: isBroadcastGroup ?? this.isBroadcastGroup,
          isVerified: isVerified ?? this.isVerified,
          restrictionReason: restrictionReason ?? this.restrictionReason,
          isScam: isScam ?? this.isScam,
          isFake: isFake ?? this.isFake);
}

extension SupergroupFullInfoExtensions on SupergroupFullInfo {
  SupergroupFullInfo copy(
          {ChatPhoto? photo,
          String? description,
          int? memberCount,
          int? administratorCount,
          int? restrictedCount,
          int? bannedCount,
          int? linkedChatId,
          int? slowModeDelay,
          double? slowModeDelayExpiresIn,
          bool? canGetMembers,
          bool? canSetUsername,
          bool? canSetStickerSet,
          bool? canSetLocation,
          bool? canGetStatistics,
          bool? isAllHistoryAvailable,
          int? stickerSetId,
          ChatLocation? location,
          ChatInviteLink? inviteLink,
          int? upgradedFromBasicGroupId,
          int? upgradedFromMaxMessageId}) =>
      SupergroupFullInfo(
          photo: photo ?? this.photo,
          description: description ?? this.description,
          memberCount: memberCount ?? this.memberCount,
          administratorCount: administratorCount ?? this.administratorCount,
          restrictedCount: restrictedCount ?? this.restrictedCount,
          bannedCount: bannedCount ?? this.bannedCount,
          linkedChatId: linkedChatId ?? this.linkedChatId,
          slowModeDelay: slowModeDelay ?? this.slowModeDelay,
          slowModeDelayExpiresIn:
              slowModeDelayExpiresIn ?? this.slowModeDelayExpiresIn,
          canGetMembers: canGetMembers ?? this.canGetMembers,
          canSetUsername: canSetUsername ?? this.canSetUsername,
          canSetStickerSet: canSetStickerSet ?? this.canSetStickerSet,
          canSetLocation: canSetLocation ?? this.canSetLocation,
          canGetStatistics: canGetStatistics ?? this.canGetStatistics,
          isAllHistoryAvailable:
              isAllHistoryAvailable ?? this.isAllHistoryAvailable,
          stickerSetId: stickerSetId ?? this.stickerSetId,
          location: location ?? this.location,
          inviteLink: inviteLink ?? this.inviteLink,
          upgradedFromBasicGroupId:
              upgradedFromBasicGroupId ?? this.upgradedFromBasicGroupId,
          upgradedFromMaxMessageId:
              upgradedFromMaxMessageId ?? this.upgradedFromMaxMessageId);
}

extension SecretChatStateExtensions on SecretChatState {
  TResult map<TResult extends Object?>(
      {required TResult Function(SecretChatStatePending value) pending,
      required TResult Function(SecretChatStateReady value) ready,
      required TResult Function(SecretChatStateClosed value) closed}) {
    switch (this.getConstructor()) {
      case SecretChatStatePending.CONSTRUCTOR:
        return pending.call(this as SecretChatStatePending);
      case SecretChatStateReady.CONSTRUCTOR:
        return ready.call(this as SecretChatStateReady);
      case SecretChatStateClosed.CONSTRUCTOR:
        return closed.call(this as SecretChatStateClosed);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension SecretChatExtensions on SecretChat {
  SecretChat copy(
          {int? id,
          int? userId,
          SecretChatState? state,
          bool? isOutbound,
          String? keyHash,
          int? layer}) =>
      SecretChat(
          id: id ?? this.id,
          userId: userId ?? this.userId,
          state: state ?? this.state,
          isOutbound: isOutbound ?? this.isOutbound,
          keyHash: keyHash ?? this.keyHash,
          layer: layer ?? this.layer);
}

extension MessageSenderExtensions on MessageSender {
  TResult map<TResult extends Object?>(
      {required TResult Function(MessageSenderUser value) user,
      required TResult Function(MessageSenderChat value) chat}) {
    switch (this.getConstructor()) {
      case MessageSenderUser.CONSTRUCTOR:
        return user.call(this as MessageSenderUser);
      case MessageSenderChat.CONSTRUCTOR:
        return chat.call(this as MessageSenderChat);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension MessageSenderUserExtensions on MessageSenderUser {
  MessageSenderUser copy({int? userId}) =>
      MessageSenderUser(userId: userId ?? this.userId);
}

extension MessageSenderChatExtensions on MessageSenderChat {
  MessageSenderChat copy({int? chatId}) =>
      MessageSenderChat(chatId: chatId ?? this.chatId);
}

extension MessageSendersExtensions on MessageSenders {
  MessageSenders copy({int? totalCount, List<MessageSender>? senders}) =>
      MessageSenders(
          totalCount: totalCount ?? this.totalCount,
          senders: senders ?? this.senders);
}

extension MessageForwardOriginExtensions on MessageForwardOrigin {
  TResult map<TResult extends Object?>(
      {required TResult Function(MessageForwardOriginUser value) user,
      required TResult Function(MessageForwardOriginChat value) chat,
      required TResult Function(MessageForwardOriginHiddenUser value)
          hiddenUser,
      required TResult Function(MessageForwardOriginChannel value) channel,
      required TResult Function(MessageForwardOriginMessageImport value)
          messageImport}) {
    switch (this.getConstructor()) {
      case MessageForwardOriginUser.CONSTRUCTOR:
        return user.call(this as MessageForwardOriginUser);
      case MessageForwardOriginChat.CONSTRUCTOR:
        return chat.call(this as MessageForwardOriginChat);
      case MessageForwardOriginHiddenUser.CONSTRUCTOR:
        return hiddenUser.call(this as MessageForwardOriginHiddenUser);
      case MessageForwardOriginChannel.CONSTRUCTOR:
        return channel.call(this as MessageForwardOriginChannel);
      case MessageForwardOriginMessageImport.CONSTRUCTOR:
        return messageImport.call(this as MessageForwardOriginMessageImport);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension MessageForwardOriginUserExtensions on MessageForwardOriginUser {
  MessageForwardOriginUser copy({int? senderUserId}) =>
      MessageForwardOriginUser(senderUserId: senderUserId ?? this.senderUserId);
}

extension MessageForwardOriginChatExtensions on MessageForwardOriginChat {
  MessageForwardOriginChat copy({int? senderChatId, String? authorSignature}) =>
      MessageForwardOriginChat(
          senderChatId: senderChatId ?? this.senderChatId,
          authorSignature: authorSignature ?? this.authorSignature);
}

extension MessageForwardOriginHiddenUserExtensions
    on MessageForwardOriginHiddenUser {
  MessageForwardOriginHiddenUser copy({String? senderName}) =>
      MessageForwardOriginHiddenUser(senderName: senderName ?? this.senderName);
}

extension MessageForwardOriginChannelExtensions on MessageForwardOriginChannel {
  MessageForwardOriginChannel copy(
          {int? chatId, int? messageId, String? authorSignature}) =>
      MessageForwardOriginChannel(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          authorSignature: authorSignature ?? this.authorSignature);
}

extension MessageForwardOriginMessageImportExtensions
    on MessageForwardOriginMessageImport {
  MessageForwardOriginMessageImport copy({String? senderName}) =>
      MessageForwardOriginMessageImport(
          senderName: senderName ?? this.senderName);
}

extension MessageForwardInfoExtensions on MessageForwardInfo {
  MessageForwardInfo copy(
          {MessageForwardOrigin? origin,
          int? date,
          String? publicServiceAnnouncementType,
          int? fromChatId,
          int? fromMessageId}) =>
      MessageForwardInfo(
          origin: origin ?? this.origin,
          date: date ?? this.date,
          publicServiceAnnouncementType: publicServiceAnnouncementType ??
              this.publicServiceAnnouncementType,
          fromChatId: fromChatId ?? this.fromChatId,
          fromMessageId: fromMessageId ?? this.fromMessageId);
}

extension MessageReplyInfoExtensions on MessageReplyInfo {
  MessageReplyInfo copy(
          {int? replyCount,
          List<MessageSender>? recentRepliers,
          int? lastReadInboxMessageId,
          int? lastReadOutboxMessageId,
          int? lastMessageId}) =>
      MessageReplyInfo(
          replyCount: replyCount ?? this.replyCount,
          recentRepliers: recentRepliers ?? this.recentRepliers,
          lastReadInboxMessageId:
              lastReadInboxMessageId ?? this.lastReadInboxMessageId,
          lastReadOutboxMessageId:
              lastReadOutboxMessageId ?? this.lastReadOutboxMessageId,
          lastMessageId: lastMessageId ?? this.lastMessageId);
}

extension MessageInteractionInfoExtensions on MessageInteractionInfo {
  MessageInteractionInfo copy(
          {int? viewCount, int? forwardCount, MessageReplyInfo? replyInfo}) =>
      MessageInteractionInfo(
          viewCount: viewCount ?? this.viewCount,
          forwardCount: forwardCount ?? this.forwardCount,
          replyInfo: replyInfo ?? this.replyInfo);
}

extension MessageSendingStateExtensions on MessageSendingState {
  TResult map<TResult extends Object?>(
      {required TResult Function(MessageSendingStatePending value) pending,
      required TResult Function(MessageSendingStateFailed value) failed}) {
    switch (this.getConstructor()) {
      case MessageSendingStatePending.CONSTRUCTOR:
        return pending.call(this as MessageSendingStatePending);
      case MessageSendingStateFailed.CONSTRUCTOR:
        return failed.call(this as MessageSendingStateFailed);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension MessageSendingStateFailedExtensions on MessageSendingStateFailed {
  MessageSendingStateFailed copy(
          {int? errorCode,
          String? errorMessage,
          bool? canRetry,
          double? retryAfter}) =>
      MessageSendingStateFailed(
          errorCode: errorCode ?? this.errorCode,
          errorMessage: errorMessage ?? this.errorMessage,
          canRetry: canRetry ?? this.canRetry,
          retryAfter: retryAfter ?? this.retryAfter);
}

extension MessageExtensions on Message {
  Message copy(
          {int? id,
          MessageSender? sender,
          int? chatId,
          MessageSendingState? sendingState,
          MessageSchedulingState? schedulingState,
          bool? isOutgoing,
          bool? isPinned,
          bool? canBeEdited,
          bool? canBeForwarded,
          bool? canBeDeletedOnlyForSelf,
          bool? canBeDeletedForAllUsers,
          bool? canGetStatistics,
          bool? canGetMessageThread,
          bool? isChannelPost,
          bool? containsUnreadMention,
          int? date,
          int? editDate,
          MessageForwardInfo? forwardInfo,
          MessageInteractionInfo? interactionInfo,
          int? replyInChatId,
          int? replyToMessageId,
          int? messageThreadId,
          int? ttl,
          double? ttlExpiresIn,
          int? viaBotUserId,
          String? authorSignature,
          int? mediaAlbumId,
          String? restrictionReason,
          MessageContent? content,
          ReplyMarkup? replyMarkup}) =>
      Message(
          id: id ?? this.id,
          sender: sender ?? this.sender,
          chatId: chatId ?? this.chatId,
          sendingState: sendingState ?? this.sendingState,
          schedulingState: schedulingState ?? this.schedulingState,
          isOutgoing: isOutgoing ?? this.isOutgoing,
          isPinned: isPinned ?? this.isPinned,
          canBeEdited: canBeEdited ?? this.canBeEdited,
          canBeForwarded: canBeForwarded ?? this.canBeForwarded,
          canBeDeletedOnlyForSelf:
              canBeDeletedOnlyForSelf ?? this.canBeDeletedOnlyForSelf,
          canBeDeletedForAllUsers:
              canBeDeletedForAllUsers ?? this.canBeDeletedForAllUsers,
          canGetStatistics: canGetStatistics ?? this.canGetStatistics,
          canGetMessageThread: canGetMessageThread ?? this.canGetMessageThread,
          isChannelPost: isChannelPost ?? this.isChannelPost,
          containsUnreadMention:
              containsUnreadMention ?? this.containsUnreadMention,
          date: date ?? this.date,
          editDate: editDate ?? this.editDate,
          forwardInfo: forwardInfo ?? this.forwardInfo,
          interactionInfo: interactionInfo ?? this.interactionInfo,
          replyInChatId: replyInChatId ?? this.replyInChatId,
          replyToMessageId: replyToMessageId ?? this.replyToMessageId,
          messageThreadId: messageThreadId ?? this.messageThreadId,
          ttl: ttl ?? this.ttl,
          ttlExpiresIn: ttlExpiresIn ?? this.ttlExpiresIn,
          viaBotUserId: viaBotUserId ?? this.viaBotUserId,
          authorSignature: authorSignature ?? this.authorSignature,
          mediaAlbumId: mediaAlbumId ?? this.mediaAlbumId,
          restrictionReason: restrictionReason ?? this.restrictionReason,
          content: content ?? this.content,
          replyMarkup: replyMarkup ?? this.replyMarkup);
}

extension MessagesExtensions on Messages {
  Messages copy({int? totalCount, List<Message>? messages}) => Messages(
      totalCount: totalCount ?? this.totalCount,
      messages: messages ?? this.messages);
}

extension FoundMessagesExtensions on FoundMessages {
  FoundMessages copy(
          {int? totalCount, List<Message>? messages, String? nextOffset}) =>
      FoundMessages(
          totalCount: totalCount ?? this.totalCount,
          messages: messages ?? this.messages,
          nextOffset: nextOffset ?? this.nextOffset);
}

extension NotificationSettingsScopeExtensions on NotificationSettingsScope {
  TResult map<TResult extends Object?>(
      {required TResult Function(NotificationSettingsScopePrivateChats value)
          privateChats,
      required TResult Function(NotificationSettingsScopeGroupChats value)
          groupChats,
      required TResult Function(NotificationSettingsScopeChannelChats value)
          channelChats}) {
    switch (this.getConstructor()) {
      case NotificationSettingsScopePrivateChats.CONSTRUCTOR:
        return privateChats.call(this as NotificationSettingsScopePrivateChats);
      case NotificationSettingsScopeGroupChats.CONSTRUCTOR:
        return groupChats.call(this as NotificationSettingsScopeGroupChats);
      case NotificationSettingsScopeChannelChats.CONSTRUCTOR:
        return channelChats.call(this as NotificationSettingsScopeChannelChats);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension ChatNotificationSettingsExtensions on ChatNotificationSettings {
  ChatNotificationSettings copy(
          {bool? useDefaultMuteFor,
          int? muteFor,
          bool? useDefaultSound,
          String? sound,
          bool? useDefaultShowPreview,
          bool? showPreview,
          bool? useDefaultDisablePinnedMessageNotifications,
          bool? disablePinnedMessageNotifications,
          bool? useDefaultDisableMentionNotifications,
          bool? disableMentionNotifications}) =>
      ChatNotificationSettings(
          useDefaultMuteFor: useDefaultMuteFor ?? this.useDefaultMuteFor,
          muteFor: muteFor ?? this.muteFor,
          useDefaultSound: useDefaultSound ?? this.useDefaultSound,
          sound: sound ?? this.sound,
          useDefaultShowPreview:
              useDefaultShowPreview ?? this.useDefaultShowPreview,
          showPreview: showPreview ?? this.showPreview,
          useDefaultDisablePinnedMessageNotifications:
              useDefaultDisablePinnedMessageNotifications ??
                  this.useDefaultDisablePinnedMessageNotifications,
          disablePinnedMessageNotifications:
              disablePinnedMessageNotifications ??
                  this.disablePinnedMessageNotifications,
          useDefaultDisableMentionNotifications:
              useDefaultDisableMentionNotifications ??
                  this.useDefaultDisableMentionNotifications,
          disableMentionNotifications:
              disableMentionNotifications ?? this.disableMentionNotifications);
}

extension ScopeNotificationSettingsExtensions on ScopeNotificationSettings {
  ScopeNotificationSettings copy(
          {int? muteFor,
          String? sound,
          bool? showPreview,
          bool? disablePinnedMessageNotifications,
          bool? disableMentionNotifications}) =>
      ScopeNotificationSettings(
          muteFor: muteFor ?? this.muteFor,
          sound: sound ?? this.sound,
          showPreview: showPreview ?? this.showPreview,
          disablePinnedMessageNotifications:
              disablePinnedMessageNotifications ??
                  this.disablePinnedMessageNotifications,
          disableMentionNotifications:
              disableMentionNotifications ?? this.disableMentionNotifications);
}

extension DraftMessageExtensions on DraftMessage {
  DraftMessage copy(
          {int? replyToMessageId,
          int? date,
          InputMessageContent? inputMessageText}) =>
      DraftMessage(
          replyToMessageId: replyToMessageId ?? this.replyToMessageId,
          date: date ?? this.date,
          inputMessageText: inputMessageText ?? this.inputMessageText);
}

extension ChatTypeExtensions on ChatType {
  TResult map<TResult extends Object?>(
      {required TResult Function(ChatTypePrivate value) private,
      required TResult Function(ChatTypeBasicGroup value) basicGroup,
      required TResult Function(ChatTypeSupergroup value) supergroup,
      required TResult Function(ChatTypeSecret value) secret}) {
    switch (this.getConstructor()) {
      case ChatTypePrivate.CONSTRUCTOR:
        return private.call(this as ChatTypePrivate);
      case ChatTypeBasicGroup.CONSTRUCTOR:
        return basicGroup.call(this as ChatTypeBasicGroup);
      case ChatTypeSupergroup.CONSTRUCTOR:
        return supergroup.call(this as ChatTypeSupergroup);
      case ChatTypeSecret.CONSTRUCTOR:
        return secret.call(this as ChatTypeSecret);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension ChatTypePrivateExtensions on ChatTypePrivate {
  ChatTypePrivate copy({int? userId}) =>
      ChatTypePrivate(userId: userId ?? this.userId);
}

extension ChatTypeBasicGroupExtensions on ChatTypeBasicGroup {
  ChatTypeBasicGroup copy({int? basicGroupId}) =>
      ChatTypeBasicGroup(basicGroupId: basicGroupId ?? this.basicGroupId);
}

extension ChatTypeSupergroupExtensions on ChatTypeSupergroup {
  ChatTypeSupergroup copy({int? supergroupId, bool? isChannel}) =>
      ChatTypeSupergroup(
          supergroupId: supergroupId ?? this.supergroupId,
          isChannel: isChannel ?? this.isChannel);
}

extension ChatTypeSecretExtensions on ChatTypeSecret {
  ChatTypeSecret copy({int? secretChatId, int? userId}) => ChatTypeSecret(
      secretChatId: secretChatId ?? this.secretChatId,
      userId: userId ?? this.userId);
}

extension ChatFilterExtensions on ChatFilter {
  ChatFilter copy(
          {String? title,
          String? iconName,
          List<int>? pinnedChatIds,
          List<int>? includedChatIds,
          List<int>? excludedChatIds,
          bool? excludeMuted,
          bool? excludeRead,
          bool? excludeArchived,
          bool? includeContacts,
          bool? includeNonContacts,
          bool? includeBots,
          bool? includeGroups,
          bool? includeChannels}) =>
      ChatFilter(
          title: title ?? this.title,
          iconName: iconName ?? this.iconName,
          pinnedChatIds: pinnedChatIds ?? this.pinnedChatIds,
          includedChatIds: includedChatIds ?? this.includedChatIds,
          excludedChatIds: excludedChatIds ?? this.excludedChatIds,
          excludeMuted: excludeMuted ?? this.excludeMuted,
          excludeRead: excludeRead ?? this.excludeRead,
          excludeArchived: excludeArchived ?? this.excludeArchived,
          includeContacts: includeContacts ?? this.includeContacts,
          includeNonContacts: includeNonContacts ?? this.includeNonContacts,
          includeBots: includeBots ?? this.includeBots,
          includeGroups: includeGroups ?? this.includeGroups,
          includeChannels: includeChannels ?? this.includeChannels);
}

extension ChatFilterInfoExtensions on ChatFilterInfo {
  ChatFilterInfo copy({int? id, String? title, String? iconName}) =>
      ChatFilterInfo(
          id: id ?? this.id,
          title: title ?? this.title,
          iconName: iconName ?? this.iconName);
}

extension RecommendedChatFilterExtensions on RecommendedChatFilter {
  RecommendedChatFilter copy({ChatFilter? filter, String? description}) =>
      RecommendedChatFilter(
          filter: filter ?? this.filter,
          description: description ?? this.description);
}

extension RecommendedChatFiltersExtensions on RecommendedChatFilters {
  RecommendedChatFilters copy({List<RecommendedChatFilter>? chatFilters}) =>
      RecommendedChatFilters(chatFilters: chatFilters ?? this.chatFilters);
}

extension ChatListExtensions on ChatList {
  TResult map<TResult extends Object?>(
      {required TResult Function(ChatListMain value) main,
      required TResult Function(ChatListArchive value) archive,
      required TResult Function(ChatListFilter value) filter}) {
    switch (this.getConstructor()) {
      case ChatListMain.CONSTRUCTOR:
        return main.call(this as ChatListMain);
      case ChatListArchive.CONSTRUCTOR:
        return archive.call(this as ChatListArchive);
      case ChatListFilter.CONSTRUCTOR:
        return filter.call(this as ChatListFilter);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension ChatListFilterExtensions on ChatListFilter {
  ChatListFilter copy({int? chatFilterId}) =>
      ChatListFilter(chatFilterId: chatFilterId ?? this.chatFilterId);
}

extension ChatListsExtensions on ChatLists {
  ChatLists copy({List<ChatList>? chatLists}) =>
      ChatLists(chatLists: chatLists ?? this.chatLists);
}

extension ChatSourceExtensions on ChatSource {
  TResult map<TResult extends Object?>(
      {required TResult Function(ChatSourceMtprotoProxy value) mtprotoProxy,
      required TResult Function(ChatSourcePublicServiceAnnouncement value)
          publicServiceAnnouncement}) {
    switch (this.getConstructor()) {
      case ChatSourceMtprotoProxy.CONSTRUCTOR:
        return mtprotoProxy.call(this as ChatSourceMtprotoProxy);
      case ChatSourcePublicServiceAnnouncement.CONSTRUCTOR:
        return publicServiceAnnouncement
            .call(this as ChatSourcePublicServiceAnnouncement);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension ChatSourcePublicServiceAnnouncementExtensions
    on ChatSourcePublicServiceAnnouncement {
  ChatSourcePublicServiceAnnouncement copy({String? type, String? text}) =>
      ChatSourcePublicServiceAnnouncement(
          type: type ?? this.type, text: text ?? this.text);
}

extension ChatPositionExtensions on ChatPosition {
  ChatPosition copy(
          {ChatList? list, int? order, bool? isPinned, ChatSource? source}) =>
      ChatPosition(
          list: list ?? this.list,
          order: order ?? this.order,
          isPinned: isPinned ?? this.isPinned,
          source: source ?? this.source);
}

extension VoiceChatExtensions on VoiceChat {
  VoiceChat copy(
          {int? groupCallId,
          bool? hasParticipants,
          MessageSender? defaultParticipantAlias}) =>
      VoiceChat(
          groupCallId: groupCallId ?? this.groupCallId,
          hasParticipants: hasParticipants ?? this.hasParticipants,
          defaultParticipantAlias:
              defaultParticipantAlias ?? this.defaultParticipantAlias);
}

extension ChatExtensions on Chat {
  Chat copy(
          {int? id,
          ChatType? type,
          String? title,
          ChatPhotoInfo? photo,
          ChatPermissions? permissions,
          Message? lastMessage,
          List<ChatPosition>? positions,
          bool? isMarkedAsUnread,
          bool? isBlocked,
          bool? hasScheduledMessages,
          bool? canBeDeletedOnlyForSelf,
          bool? canBeDeletedForAllUsers,
          bool? canBeReported,
          bool? defaultDisableNotification,
          int? unreadCount,
          int? lastReadInboxMessageId,
          int? lastReadOutboxMessageId,
          int? unreadMentionCount,
          ChatNotificationSettings? notificationSettings,
          int? messageTtlSetting,
          ChatActionBar? actionBar,
          VoiceChat? voiceChat,
          int? replyMarkupMessageId,
          DraftMessage? draftMessage,
          String? clientData}) =>
      Chat(
          id: id ?? this.id,
          type: type ?? this.type,
          title: title ?? this.title,
          photo: photo ?? this.photo,
          permissions: permissions ?? this.permissions,
          lastMessage: lastMessage ?? this.lastMessage,
          positions: positions ?? this.positions,
          isMarkedAsUnread: isMarkedAsUnread ?? this.isMarkedAsUnread,
          isBlocked: isBlocked ?? this.isBlocked,
          hasScheduledMessages:
              hasScheduledMessages ?? this.hasScheduledMessages,
          canBeDeletedOnlyForSelf:
              canBeDeletedOnlyForSelf ?? this.canBeDeletedOnlyForSelf,
          canBeDeletedForAllUsers:
              canBeDeletedForAllUsers ?? this.canBeDeletedForAllUsers,
          canBeReported: canBeReported ?? this.canBeReported,
          defaultDisableNotification:
              defaultDisableNotification ?? this.defaultDisableNotification,
          unreadCount: unreadCount ?? this.unreadCount,
          lastReadInboxMessageId:
              lastReadInboxMessageId ?? this.lastReadInboxMessageId,
          lastReadOutboxMessageId:
              lastReadOutboxMessageId ?? this.lastReadOutboxMessageId,
          unreadMentionCount: unreadMentionCount ?? this.unreadMentionCount,
          notificationSettings:
              notificationSettings ?? this.notificationSettings,
          messageTtlSetting: messageTtlSetting ?? this.messageTtlSetting,
          actionBar: actionBar ?? this.actionBar,
          voiceChat: voiceChat ?? this.voiceChat,
          replyMarkupMessageId:
              replyMarkupMessageId ?? this.replyMarkupMessageId,
          draftMessage: draftMessage ?? this.draftMessage,
          clientData: clientData ?? this.clientData);
}

extension ChatsExtensions on Chats {
  Chats copy({int? totalCount, List<int>? chatIds}) => Chats(
      totalCount: totalCount ?? this.totalCount,
      chatIds: chatIds ?? this.chatIds);
}

extension ChatNearbyExtensions on ChatNearby {
  ChatNearby copy({int? chatId, int? distance}) => ChatNearby(
      chatId: chatId ?? this.chatId, distance: distance ?? this.distance);
}

extension ChatsNearbyExtensions on ChatsNearby {
  ChatsNearby copy(
          {List<ChatNearby>? usersNearby,
          List<ChatNearby>? supergroupsNearby}) =>
      ChatsNearby(
          usersNearby: usersNearby ?? this.usersNearby,
          supergroupsNearby: supergroupsNearby ?? this.supergroupsNearby);
}

extension PublicChatTypeExtensions on PublicChatType {
  TResult map<TResult extends Object?>(
      {required TResult Function(PublicChatTypeHasUsername value) hasUsername,
      required TResult Function(PublicChatTypeIsLocationBased value)
          isLocationBased}) {
    switch (this.getConstructor()) {
      case PublicChatTypeHasUsername.CONSTRUCTOR:
        return hasUsername.call(this as PublicChatTypeHasUsername);
      case PublicChatTypeIsLocationBased.CONSTRUCTOR:
        return isLocationBased.call(this as PublicChatTypeIsLocationBased);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension ChatActionBarExtensions on ChatActionBar {
  TResult map<TResult extends Object?>(
      {required TResult Function(ChatActionBarReportSpam value) reportSpam,
      required TResult Function(ChatActionBarReportUnrelatedLocation value)
          reportUnrelatedLocation,
      required TResult Function(ChatActionBarInviteMembers value) inviteMembers,
      required TResult Function(ChatActionBarReportAddBlock value)
          reportAddBlock,
      required TResult Function(ChatActionBarAddContact value) addContact,
      required TResult Function(ChatActionBarSharePhoneNumber value)
          sharePhoneNumber}) {
    switch (this.getConstructor()) {
      case ChatActionBarReportSpam.CONSTRUCTOR:
        return reportSpam.call(this as ChatActionBarReportSpam);
      case ChatActionBarReportUnrelatedLocation.CONSTRUCTOR:
        return reportUnrelatedLocation
            .call(this as ChatActionBarReportUnrelatedLocation);
      case ChatActionBarInviteMembers.CONSTRUCTOR:
        return inviteMembers.call(this as ChatActionBarInviteMembers);
      case ChatActionBarReportAddBlock.CONSTRUCTOR:
        return reportAddBlock.call(this as ChatActionBarReportAddBlock);
      case ChatActionBarAddContact.CONSTRUCTOR:
        return addContact.call(this as ChatActionBarAddContact);
      case ChatActionBarSharePhoneNumber.CONSTRUCTOR:
        return sharePhoneNumber.call(this as ChatActionBarSharePhoneNumber);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension ChatActionBarReportSpamExtensions on ChatActionBarReportSpam {
  ChatActionBarReportSpam copy({bool? canUnarchive}) =>
      ChatActionBarReportSpam(canUnarchive: canUnarchive ?? this.canUnarchive);
}

extension ChatActionBarReportAddBlockExtensions on ChatActionBarReportAddBlock {
  ChatActionBarReportAddBlock copy({bool? canUnarchive, int? distance}) =>
      ChatActionBarReportAddBlock(
          canUnarchive: canUnarchive ?? this.canUnarchive,
          distance: distance ?? this.distance);
}

extension KeyboardButtonTypeExtensions on KeyboardButtonType {
  TResult map<TResult extends Object?>(
      {required TResult Function(KeyboardButtonTypeText value) text,
      required TResult Function(KeyboardButtonTypeRequestPhoneNumber value)
          requestPhoneNumber,
      required TResult Function(KeyboardButtonTypeRequestLocation value)
          requestLocation,
      required TResult Function(KeyboardButtonTypeRequestPoll value)
          requestPoll}) {
    switch (this.getConstructor()) {
      case KeyboardButtonTypeText.CONSTRUCTOR:
        return text.call(this as KeyboardButtonTypeText);
      case KeyboardButtonTypeRequestPhoneNumber.CONSTRUCTOR:
        return requestPhoneNumber
            .call(this as KeyboardButtonTypeRequestPhoneNumber);
      case KeyboardButtonTypeRequestLocation.CONSTRUCTOR:
        return requestLocation.call(this as KeyboardButtonTypeRequestLocation);
      case KeyboardButtonTypeRequestPoll.CONSTRUCTOR:
        return requestPoll.call(this as KeyboardButtonTypeRequestPoll);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension KeyboardButtonTypeRequestPollExtensions
    on KeyboardButtonTypeRequestPoll {
  KeyboardButtonTypeRequestPoll copy({bool? forceRegular, bool? forceQuiz}) =>
      KeyboardButtonTypeRequestPoll(
          forceRegular: forceRegular ?? this.forceRegular,
          forceQuiz: forceQuiz ?? this.forceQuiz);
}

extension KeyboardButtonExtensions on KeyboardButton {
  KeyboardButton copy({String? text, KeyboardButtonType? type}) =>
      KeyboardButton(text: text ?? this.text, type: type ?? this.type);
}

extension InlineKeyboardButtonTypeExtensions on InlineKeyboardButtonType {
  TResult map<TResult extends Object?>(
      {required TResult Function(InlineKeyboardButtonTypeUrl value) url,
      required TResult Function(InlineKeyboardButtonTypeLoginUrl value)
          loginUrl,
      required TResult Function(InlineKeyboardButtonTypeCallback value)
          callback,
      required TResult Function(
              InlineKeyboardButtonTypeCallbackWithPassword value)
          callbackWithPassword,
      required TResult Function(InlineKeyboardButtonTypeCallbackGame value)
          callbackGame,
      required TResult Function(InlineKeyboardButtonTypeSwitchInline value)
          switchInline,
      required TResult Function(InlineKeyboardButtonTypeBuy value) buy}) {
    switch (this.getConstructor()) {
      case InlineKeyboardButtonTypeUrl.CONSTRUCTOR:
        return url.call(this as InlineKeyboardButtonTypeUrl);
      case InlineKeyboardButtonTypeLoginUrl.CONSTRUCTOR:
        return loginUrl.call(this as InlineKeyboardButtonTypeLoginUrl);
      case InlineKeyboardButtonTypeCallback.CONSTRUCTOR:
        return callback.call(this as InlineKeyboardButtonTypeCallback);
      case InlineKeyboardButtonTypeCallbackWithPassword.CONSTRUCTOR:
        return callbackWithPassword
            .call(this as InlineKeyboardButtonTypeCallbackWithPassword);
      case InlineKeyboardButtonTypeCallbackGame.CONSTRUCTOR:
        return callbackGame.call(this as InlineKeyboardButtonTypeCallbackGame);
      case InlineKeyboardButtonTypeSwitchInline.CONSTRUCTOR:
        return switchInline.call(this as InlineKeyboardButtonTypeSwitchInline);
      case InlineKeyboardButtonTypeBuy.CONSTRUCTOR:
        return buy.call(this as InlineKeyboardButtonTypeBuy);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension InlineKeyboardButtonTypeUrlExtensions on InlineKeyboardButtonTypeUrl {
  InlineKeyboardButtonTypeUrl copy({String? url}) =>
      InlineKeyboardButtonTypeUrl(url: url ?? this.url);
}

extension InlineKeyboardButtonTypeLoginUrlExtensions
    on InlineKeyboardButtonTypeLoginUrl {
  InlineKeyboardButtonTypeLoginUrl copy(
          {String? url, int? id, String? forwardText}) =>
      InlineKeyboardButtonTypeLoginUrl(
          url: url ?? this.url,
          id: id ?? this.id,
          forwardText: forwardText ?? this.forwardText);
}

extension InlineKeyboardButtonTypeCallbackExtensions
    on InlineKeyboardButtonTypeCallback {
  InlineKeyboardButtonTypeCallback copy({String? data}) =>
      InlineKeyboardButtonTypeCallback(data: data ?? this.data);
}

extension InlineKeyboardButtonTypeCallbackWithPasswordExtensions
    on InlineKeyboardButtonTypeCallbackWithPassword {
  InlineKeyboardButtonTypeCallbackWithPassword copy({String? data}) =>
      InlineKeyboardButtonTypeCallbackWithPassword(data: data ?? this.data);
}

extension InlineKeyboardButtonTypeSwitchInlineExtensions
    on InlineKeyboardButtonTypeSwitchInline {
  InlineKeyboardButtonTypeSwitchInline copy(
          {String? query, bool? inCurrentChat}) =>
      InlineKeyboardButtonTypeSwitchInline(
          query: query ?? this.query,
          inCurrentChat: inCurrentChat ?? this.inCurrentChat);
}

extension InlineKeyboardButtonExtensions on InlineKeyboardButton {
  InlineKeyboardButton copy({String? text, InlineKeyboardButtonType? type}) =>
      InlineKeyboardButton(text: text ?? this.text, type: type ?? this.type);
}

extension ReplyMarkupExtensions on ReplyMarkup {
  TResult map<TResult extends Object?>(
      {required TResult Function(ReplyMarkupRemoveKeyboard value)
          removeKeyboard,
      required TResult Function(ReplyMarkupForceReply value) forceReply,
      required TResult Function(ReplyMarkupShowKeyboard value) showKeyboard,
      required TResult Function(ReplyMarkupInlineKeyboard value)
          inlineKeyboard}) {
    switch (this.getConstructor()) {
      case ReplyMarkupRemoveKeyboard.CONSTRUCTOR:
        return removeKeyboard.call(this as ReplyMarkupRemoveKeyboard);
      case ReplyMarkupForceReply.CONSTRUCTOR:
        return forceReply.call(this as ReplyMarkupForceReply);
      case ReplyMarkupShowKeyboard.CONSTRUCTOR:
        return showKeyboard.call(this as ReplyMarkupShowKeyboard);
      case ReplyMarkupInlineKeyboard.CONSTRUCTOR:
        return inlineKeyboard.call(this as ReplyMarkupInlineKeyboard);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension ReplyMarkupRemoveKeyboardExtensions on ReplyMarkupRemoveKeyboard {
  ReplyMarkupRemoveKeyboard copy({bool? isPersonal}) =>
      ReplyMarkupRemoveKeyboard(isPersonal: isPersonal ?? this.isPersonal);
}

extension ReplyMarkupForceReplyExtensions on ReplyMarkupForceReply {
  ReplyMarkupForceReply copy({bool? isPersonal}) =>
      ReplyMarkupForceReply(isPersonal: isPersonal ?? this.isPersonal);
}

extension ReplyMarkupShowKeyboardExtensions on ReplyMarkupShowKeyboard {
  ReplyMarkupShowKeyboard copy(
          {List<List<KeyboardButton>>? rows,
          bool? resizeKeyboard,
          bool? oneTime,
          bool? isPersonal}) =>
      ReplyMarkupShowKeyboard(
          rows: rows ?? this.rows,
          resizeKeyboard: resizeKeyboard ?? this.resizeKeyboard,
          oneTime: oneTime ?? this.oneTime,
          isPersonal: isPersonal ?? this.isPersonal);
}

extension ReplyMarkupInlineKeyboardExtensions on ReplyMarkupInlineKeyboard {
  ReplyMarkupInlineKeyboard copy({List<List<InlineKeyboardButton>>? rows}) =>
      ReplyMarkupInlineKeyboard(rows: rows ?? this.rows);
}

extension LoginUrlInfoExtensions on LoginUrlInfo {
  TResult map<TResult extends Object?>(
      {required TResult Function(LoginUrlInfoOpen value) open,
      required TResult Function(LoginUrlInfoRequestConfirmation value)
          requestConfirmation}) {
    switch (this.getConstructor()) {
      case LoginUrlInfoOpen.CONSTRUCTOR:
        return open.call(this as LoginUrlInfoOpen);
      case LoginUrlInfoRequestConfirmation.CONSTRUCTOR:
        return requestConfirmation
            .call(this as LoginUrlInfoRequestConfirmation);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension LoginUrlInfoOpenExtensions on LoginUrlInfoOpen {
  LoginUrlInfoOpen copy({String? url, bool? skipConfirm}) => LoginUrlInfoOpen(
      url: url ?? this.url, skipConfirm: skipConfirm ?? this.skipConfirm);
}

extension LoginUrlInfoRequestConfirmationExtensions
    on LoginUrlInfoRequestConfirmation {
  LoginUrlInfoRequestConfirmation copy(
          {String? url,
          String? domain,
          int? botUserId,
          bool? requestWriteAccess}) =>
      LoginUrlInfoRequestConfirmation(
          url: url ?? this.url,
          domain: domain ?? this.domain,
          botUserId: botUserId ?? this.botUserId,
          requestWriteAccess: requestWriteAccess ?? this.requestWriteAccess);
}

extension MessageThreadInfoExtensions on MessageThreadInfo {
  MessageThreadInfo copy(
          {int? chatId,
          int? messageThreadId,
          MessageReplyInfo? replyInfo,
          List<Message>? messages,
          DraftMessage? draftMessage}) =>
      MessageThreadInfo(
          chatId: chatId ?? this.chatId,
          messageThreadId: messageThreadId ?? this.messageThreadId,
          replyInfo: replyInfo ?? this.replyInfo,
          messages: messages ?? this.messages,
          draftMessage: draftMessage ?? this.draftMessage);
}

extension RichTextExtensions on RichText {
  TResult map<TResult extends Object?>(
      {required TResult Function(RichTextPlain value) plain,
      required TResult Function(RichTextBold value) bold,
      required TResult Function(RichTextItalic value) italic,
      required TResult Function(RichTextUnderline value) underline,
      required TResult Function(RichTextStrikethrough value) strikethrough,
      required TResult Function(RichTextFixed value) fixed,
      required TResult Function(RichTextUrl value) url,
      required TResult Function(RichTextEmailAddress value) emailAddress,
      required TResult Function(RichTextSubscript value) subscript,
      required TResult Function(RichTextSuperscript value) superscript,
      required TResult Function(RichTextMarked value) marked,
      required TResult Function(RichTextPhoneNumber value) phoneNumber,
      required TResult Function(RichTextIcon value) icon,
      required TResult Function(RichTextReference value) reference,
      required TResult Function(RichTextAnchor value) anchor,
      required TResult Function(RichTextAnchorLink value) anchorLink,
      required TResult Function(RichTexts value) s}) {
    switch (this.getConstructor()) {
      case RichTextPlain.CONSTRUCTOR:
        return plain.call(this as RichTextPlain);
      case RichTextBold.CONSTRUCTOR:
        return bold.call(this as RichTextBold);
      case RichTextItalic.CONSTRUCTOR:
        return italic.call(this as RichTextItalic);
      case RichTextUnderline.CONSTRUCTOR:
        return underline.call(this as RichTextUnderline);
      case RichTextStrikethrough.CONSTRUCTOR:
        return strikethrough.call(this as RichTextStrikethrough);
      case RichTextFixed.CONSTRUCTOR:
        return fixed.call(this as RichTextFixed);
      case RichTextUrl.CONSTRUCTOR:
        return url.call(this as RichTextUrl);
      case RichTextEmailAddress.CONSTRUCTOR:
        return emailAddress.call(this as RichTextEmailAddress);
      case RichTextSubscript.CONSTRUCTOR:
        return subscript.call(this as RichTextSubscript);
      case RichTextSuperscript.CONSTRUCTOR:
        return superscript.call(this as RichTextSuperscript);
      case RichTextMarked.CONSTRUCTOR:
        return marked.call(this as RichTextMarked);
      case RichTextPhoneNumber.CONSTRUCTOR:
        return phoneNumber.call(this as RichTextPhoneNumber);
      case RichTextIcon.CONSTRUCTOR:
        return icon.call(this as RichTextIcon);
      case RichTextReference.CONSTRUCTOR:
        return reference.call(this as RichTextReference);
      case RichTextAnchor.CONSTRUCTOR:
        return anchor.call(this as RichTextAnchor);
      case RichTextAnchorLink.CONSTRUCTOR:
        return anchorLink.call(this as RichTextAnchorLink);
      case RichTexts.CONSTRUCTOR:
        return s.call(this as RichTexts);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension RichTextPlainExtensions on RichTextPlain {
  RichTextPlain copy({String? text}) => RichTextPlain(text: text ?? this.text);
}

extension RichTextBoldExtensions on RichTextBold {
  RichTextBold copy({RichText? text}) => RichTextBold(text: text ?? this.text);
}

extension RichTextItalicExtensions on RichTextItalic {
  RichTextItalic copy({RichText? text}) =>
      RichTextItalic(text: text ?? this.text);
}

extension RichTextUnderlineExtensions on RichTextUnderline {
  RichTextUnderline copy({RichText? text}) =>
      RichTextUnderline(text: text ?? this.text);
}

extension RichTextStrikethroughExtensions on RichTextStrikethrough {
  RichTextStrikethrough copy({RichText? text}) =>
      RichTextStrikethrough(text: text ?? this.text);
}

extension RichTextFixedExtensions on RichTextFixed {
  RichTextFixed copy({RichText? text}) =>
      RichTextFixed(text: text ?? this.text);
}

extension RichTextUrlExtensions on RichTextUrl {
  RichTextUrl copy({RichText? text, String? url, bool? isCached}) =>
      RichTextUrl(
          text: text ?? this.text,
          url: url ?? this.url,
          isCached: isCached ?? this.isCached);
}

extension RichTextEmailAddressExtensions on RichTextEmailAddress {
  RichTextEmailAddress copy({RichText? text, String? emailAddress}) =>
      RichTextEmailAddress(
          text: text ?? this.text,
          emailAddress: emailAddress ?? this.emailAddress);
}

extension RichTextSubscriptExtensions on RichTextSubscript {
  RichTextSubscript copy({RichText? text}) =>
      RichTextSubscript(text: text ?? this.text);
}

extension RichTextSuperscriptExtensions on RichTextSuperscript {
  RichTextSuperscript copy({RichText? text}) =>
      RichTextSuperscript(text: text ?? this.text);
}

extension RichTextMarkedExtensions on RichTextMarked {
  RichTextMarked copy({RichText? text}) =>
      RichTextMarked(text: text ?? this.text);
}

extension RichTextPhoneNumberExtensions on RichTextPhoneNumber {
  RichTextPhoneNumber copy({RichText? text, String? phoneNumber}) =>
      RichTextPhoneNumber(
          text: text ?? this.text,
          phoneNumber: phoneNumber ?? this.phoneNumber);
}

extension RichTextIconExtensions on RichTextIcon {
  RichTextIcon copy({Document? document, int? width, int? height}) =>
      RichTextIcon(
          document: document ?? this.document,
          width: width ?? this.width,
          height: height ?? this.height);
}

extension RichTextReferenceExtensions on RichTextReference {
  RichTextReference copy({RichText? text, String? anchorName, String? url}) =>
      RichTextReference(
          text: text ?? this.text,
          anchorName: anchorName ?? this.anchorName,
          url: url ?? this.url);
}

extension RichTextAnchorExtensions on RichTextAnchor {
  RichTextAnchor copy({String? name}) =>
      RichTextAnchor(name: name ?? this.name);
}

extension RichTextAnchorLinkExtensions on RichTextAnchorLink {
  RichTextAnchorLink copy({RichText? text, String? anchorName, String? url}) =>
      RichTextAnchorLink(
          text: text ?? this.text,
          anchorName: anchorName ?? this.anchorName,
          url: url ?? this.url);
}

extension RichTextsExtensions on RichTexts {
  RichTexts copy({List<RichText>? texts}) =>
      RichTexts(texts: texts ?? this.texts);
}

extension PageBlockCaptionExtensions on PageBlockCaption {
  PageBlockCaption copy({RichText? text, RichText? credit}) =>
      PageBlockCaption(text: text ?? this.text, credit: credit ?? this.credit);
}

extension PageBlockListItemExtensions on PageBlockListItem {
  PageBlockListItem copy({String? label, List<PageBlock>? pageBlocks}) =>
      PageBlockListItem(
          label: label ?? this.label,
          pageBlocks: pageBlocks ?? this.pageBlocks);
}

extension PageBlockHorizontalAlignmentExtensions
    on PageBlockHorizontalAlignment {
  TResult map<TResult extends Object?>(
      {required TResult Function(PageBlockHorizontalAlignmentLeft value) left,
      required TResult Function(PageBlockHorizontalAlignmentCenter value)
          center,
      required TResult Function(PageBlockHorizontalAlignmentRight value)
          right}) {
    switch (this.getConstructor()) {
      case PageBlockHorizontalAlignmentLeft.CONSTRUCTOR:
        return left.call(this as PageBlockHorizontalAlignmentLeft);
      case PageBlockHorizontalAlignmentCenter.CONSTRUCTOR:
        return center.call(this as PageBlockHorizontalAlignmentCenter);
      case PageBlockHorizontalAlignmentRight.CONSTRUCTOR:
        return right.call(this as PageBlockHorizontalAlignmentRight);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension PageBlockVerticalAlignmentExtensions on PageBlockVerticalAlignment {
  TResult map<TResult extends Object?>(
      {required TResult Function(PageBlockVerticalAlignmentTop value) top,
      required TResult Function(PageBlockVerticalAlignmentMiddle value) middle,
      required TResult Function(PageBlockVerticalAlignmentBottom value)
          bottom}) {
    switch (this.getConstructor()) {
      case PageBlockVerticalAlignmentTop.CONSTRUCTOR:
        return top.call(this as PageBlockVerticalAlignmentTop);
      case PageBlockVerticalAlignmentMiddle.CONSTRUCTOR:
        return middle.call(this as PageBlockVerticalAlignmentMiddle);
      case PageBlockVerticalAlignmentBottom.CONSTRUCTOR:
        return bottom.call(this as PageBlockVerticalAlignmentBottom);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension PageBlockTableCellExtensions on PageBlockTableCell {
  PageBlockTableCell copy(
          {RichText? text,
          bool? isHeader,
          int? colspan,
          int? rowspan,
          PageBlockHorizontalAlignment? align,
          PageBlockVerticalAlignment? valign}) =>
      PageBlockTableCell(
          text: text ?? this.text,
          isHeader: isHeader ?? this.isHeader,
          colspan: colspan ?? this.colspan,
          rowspan: rowspan ?? this.rowspan,
          align: align ?? this.align,
          valign: valign ?? this.valign);
}

extension PageBlockRelatedArticleExtensions on PageBlockRelatedArticle {
  PageBlockRelatedArticle copy(
          {String? url,
          String? title,
          String? description,
          Photo? photo,
          String? author,
          int? publishDate}) =>
      PageBlockRelatedArticle(
          url: url ?? this.url,
          title: title ?? this.title,
          description: description ?? this.description,
          photo: photo ?? this.photo,
          author: author ?? this.author,
          publishDate: publishDate ?? this.publishDate);
}

extension PageBlockExtensions on PageBlock {
  TResult map<TResult extends Object?>(
      {required TResult Function(PageBlockTitle value) title,
      required TResult Function(PageBlockSubtitle value) subtitle,
      required TResult Function(PageBlockAuthorDate value) authorDate,
      required TResult Function(PageBlockHeader value) header,
      required TResult Function(PageBlockSubheader value) subheader,
      required TResult Function(PageBlockKicker value) kicker,
      required TResult Function(PageBlockParagraph value) paragraph,
      required TResult Function(PageBlockPreformatted value) preformatted,
      required TResult Function(PageBlockFooter value) footer,
      required TResult Function(PageBlockDivider value) divider,
      required TResult Function(PageBlockAnchor value) anchor,
      required TResult Function(PageBlockList value) list,
      required TResult Function(PageBlockBlockQuote value) blockQuote,
      required TResult Function(PageBlockPullQuote value) pullQuote,
      required TResult Function(PageBlockAnimation value) animation,
      required TResult Function(PageBlockAudio value) audio,
      required TResult Function(PageBlockPhoto value) photo,
      required TResult Function(PageBlockVideo value) video,
      required TResult Function(PageBlockVoiceNote value) voiceNote,
      required TResult Function(PageBlockCover value) cover,
      required TResult Function(PageBlockEmbedded value) embedded,
      required TResult Function(PageBlockEmbeddedPost value) embeddedPost,
      required TResult Function(PageBlockCollage value) collage,
      required TResult Function(PageBlockSlideshow value) slideshow,
      required TResult Function(PageBlockChatLink value) chatLink,
      required TResult Function(PageBlockTable value) table,
      required TResult Function(PageBlockDetails value) details,
      required TResult Function(PageBlockRelatedArticles value) relatedArticles,
      required TResult Function(PageBlockMap value) map}) {
    switch (this.getConstructor()) {
      case PageBlockTitle.CONSTRUCTOR:
        return title.call(this as PageBlockTitle);
      case PageBlockSubtitle.CONSTRUCTOR:
        return subtitle.call(this as PageBlockSubtitle);
      case PageBlockAuthorDate.CONSTRUCTOR:
        return authorDate.call(this as PageBlockAuthorDate);
      case PageBlockHeader.CONSTRUCTOR:
        return header.call(this as PageBlockHeader);
      case PageBlockSubheader.CONSTRUCTOR:
        return subheader.call(this as PageBlockSubheader);
      case PageBlockKicker.CONSTRUCTOR:
        return kicker.call(this as PageBlockKicker);
      case PageBlockParagraph.CONSTRUCTOR:
        return paragraph.call(this as PageBlockParagraph);
      case PageBlockPreformatted.CONSTRUCTOR:
        return preformatted.call(this as PageBlockPreformatted);
      case PageBlockFooter.CONSTRUCTOR:
        return footer.call(this as PageBlockFooter);
      case PageBlockDivider.CONSTRUCTOR:
        return divider.call(this as PageBlockDivider);
      case PageBlockAnchor.CONSTRUCTOR:
        return anchor.call(this as PageBlockAnchor);
      case PageBlockList.CONSTRUCTOR:
        return list.call(this as PageBlockList);
      case PageBlockBlockQuote.CONSTRUCTOR:
        return blockQuote.call(this as PageBlockBlockQuote);
      case PageBlockPullQuote.CONSTRUCTOR:
        return pullQuote.call(this as PageBlockPullQuote);
      case PageBlockAnimation.CONSTRUCTOR:
        return animation.call(this as PageBlockAnimation);
      case PageBlockAudio.CONSTRUCTOR:
        return audio.call(this as PageBlockAudio);
      case PageBlockPhoto.CONSTRUCTOR:
        return photo.call(this as PageBlockPhoto);
      case PageBlockVideo.CONSTRUCTOR:
        return video.call(this as PageBlockVideo);
      case PageBlockVoiceNote.CONSTRUCTOR:
        return voiceNote.call(this as PageBlockVoiceNote);
      case PageBlockCover.CONSTRUCTOR:
        return cover.call(this as PageBlockCover);
      case PageBlockEmbedded.CONSTRUCTOR:
        return embedded.call(this as PageBlockEmbedded);
      case PageBlockEmbeddedPost.CONSTRUCTOR:
        return embeddedPost.call(this as PageBlockEmbeddedPost);
      case PageBlockCollage.CONSTRUCTOR:
        return collage.call(this as PageBlockCollage);
      case PageBlockSlideshow.CONSTRUCTOR:
        return slideshow.call(this as PageBlockSlideshow);
      case PageBlockChatLink.CONSTRUCTOR:
        return chatLink.call(this as PageBlockChatLink);
      case PageBlockTable.CONSTRUCTOR:
        return table.call(this as PageBlockTable);
      case PageBlockDetails.CONSTRUCTOR:
        return details.call(this as PageBlockDetails);
      case PageBlockRelatedArticles.CONSTRUCTOR:
        return relatedArticles.call(this as PageBlockRelatedArticles);
      case PageBlockMap.CONSTRUCTOR:
        return map.call(this as PageBlockMap);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension PageBlockTitleExtensions on PageBlockTitle {
  PageBlockTitle copy({RichText? title}) =>
      PageBlockTitle(title: title ?? this.title);
}

extension PageBlockSubtitleExtensions on PageBlockSubtitle {
  PageBlockSubtitle copy({RichText? subtitle}) =>
      PageBlockSubtitle(subtitle: subtitle ?? this.subtitle);
}

extension PageBlockAuthorDateExtensions on PageBlockAuthorDate {
  PageBlockAuthorDate copy({RichText? author, int? publishDate}) =>
      PageBlockAuthorDate(
          author: author ?? this.author,
          publishDate: publishDate ?? this.publishDate);
}

extension PageBlockHeaderExtensions on PageBlockHeader {
  PageBlockHeader copy({RichText? header}) =>
      PageBlockHeader(header: header ?? this.header);
}

extension PageBlockSubheaderExtensions on PageBlockSubheader {
  PageBlockSubheader copy({RichText? subheader}) =>
      PageBlockSubheader(subheader: subheader ?? this.subheader);
}

extension PageBlockKickerExtensions on PageBlockKicker {
  PageBlockKicker copy({RichText? kicker}) =>
      PageBlockKicker(kicker: kicker ?? this.kicker);
}

extension PageBlockParagraphExtensions on PageBlockParagraph {
  PageBlockParagraph copy({RichText? text}) =>
      PageBlockParagraph(text: text ?? this.text);
}

extension PageBlockPreformattedExtensions on PageBlockPreformatted {
  PageBlockPreformatted copy({RichText? text, String? language}) =>
      PageBlockPreformatted(
          text: text ?? this.text, language: language ?? this.language);
}

extension PageBlockFooterExtensions on PageBlockFooter {
  PageBlockFooter copy({RichText? footer}) =>
      PageBlockFooter(footer: footer ?? this.footer);
}

extension PageBlockAnchorExtensions on PageBlockAnchor {
  PageBlockAnchor copy({String? name}) =>
      PageBlockAnchor(name: name ?? this.name);
}

extension PageBlockListExtensions on PageBlockList {
  PageBlockList copy({List<PageBlockListItem>? items}) =>
      PageBlockList(items: items ?? this.items);
}

extension PageBlockBlockQuoteExtensions on PageBlockBlockQuote {
  PageBlockBlockQuote copy({RichText? text, RichText? credit}) =>
      PageBlockBlockQuote(
          text: text ?? this.text, credit: credit ?? this.credit);
}

extension PageBlockPullQuoteExtensions on PageBlockPullQuote {
  PageBlockPullQuote copy({RichText? text, RichText? credit}) =>
      PageBlockPullQuote(
          text: text ?? this.text, credit: credit ?? this.credit);
}

extension PageBlockAnimationExtensions on PageBlockAnimation {
  PageBlockAnimation copy(
          {Animation? animation,
          PageBlockCaption? caption,
          bool? needAutoplay}) =>
      PageBlockAnimation(
          animation: animation ?? this.animation,
          caption: caption ?? this.caption,
          needAutoplay: needAutoplay ?? this.needAutoplay);
}

extension PageBlockAudioExtensions on PageBlockAudio {
  PageBlockAudio copy({Audio? audio, PageBlockCaption? caption}) =>
      PageBlockAudio(
          audio: audio ?? this.audio, caption: caption ?? this.caption);
}

extension PageBlockPhotoExtensions on PageBlockPhoto {
  PageBlockPhoto copy({Photo? photo, PageBlockCaption? caption, String? url}) =>
      PageBlockPhoto(
          photo: photo ?? this.photo,
          caption: caption ?? this.caption,
          url: url ?? this.url);
}

extension PageBlockVideoExtensions on PageBlockVideo {
  PageBlockVideo copy(
          {Video? video,
          PageBlockCaption? caption,
          bool? needAutoplay,
          bool? isLooped}) =>
      PageBlockVideo(
          video: video ?? this.video,
          caption: caption ?? this.caption,
          needAutoplay: needAutoplay ?? this.needAutoplay,
          isLooped: isLooped ?? this.isLooped);
}

extension PageBlockVoiceNoteExtensions on PageBlockVoiceNote {
  PageBlockVoiceNote copy({VoiceNote? voiceNote, PageBlockCaption? caption}) =>
      PageBlockVoiceNote(
          voiceNote: voiceNote ?? this.voiceNote,
          caption: caption ?? this.caption);
}

extension PageBlockCoverExtensions on PageBlockCover {
  PageBlockCover copy({PageBlock? cover}) =>
      PageBlockCover(cover: cover ?? this.cover);
}

extension PageBlockEmbeddedExtensions on PageBlockEmbedded {
  PageBlockEmbedded copy(
          {String? url,
          String? html,
          Photo? posterPhoto,
          int? width,
          int? height,
          PageBlockCaption? caption,
          bool? isFullWidth,
          bool? allowScrolling}) =>
      PageBlockEmbedded(
          url: url ?? this.url,
          html: html ?? this.html,
          posterPhoto: posterPhoto ?? this.posterPhoto,
          width: width ?? this.width,
          height: height ?? this.height,
          caption: caption ?? this.caption,
          isFullWidth: isFullWidth ?? this.isFullWidth,
          allowScrolling: allowScrolling ?? this.allowScrolling);
}

extension PageBlockEmbeddedPostExtensions on PageBlockEmbeddedPost {
  PageBlockEmbeddedPost copy(
          {String? url,
          String? author,
          Photo? authorPhoto,
          int? date,
          List<PageBlock>? pageBlocks,
          PageBlockCaption? caption}) =>
      PageBlockEmbeddedPost(
          url: url ?? this.url,
          author: author ?? this.author,
          authorPhoto: authorPhoto ?? this.authorPhoto,
          date: date ?? this.date,
          pageBlocks: pageBlocks ?? this.pageBlocks,
          caption: caption ?? this.caption);
}

extension PageBlockCollageExtensions on PageBlockCollage {
  PageBlockCollage copy(
          {List<PageBlock>? pageBlocks, PageBlockCaption? caption}) =>
      PageBlockCollage(
          pageBlocks: pageBlocks ?? this.pageBlocks,
          caption: caption ?? this.caption);
}

extension PageBlockSlideshowExtensions on PageBlockSlideshow {
  PageBlockSlideshow copy(
          {List<PageBlock>? pageBlocks, PageBlockCaption? caption}) =>
      PageBlockSlideshow(
          pageBlocks: pageBlocks ?? this.pageBlocks,
          caption: caption ?? this.caption);
}

extension PageBlockChatLinkExtensions on PageBlockChatLink {
  PageBlockChatLink copy(
          {String? title, ChatPhotoInfo? photo, String? username}) =>
      PageBlockChatLink(
          title: title ?? this.title,
          photo: photo ?? this.photo,
          username: username ?? this.username);
}

extension PageBlockTableExtensions on PageBlockTable {
  PageBlockTable copy(
          {RichText? caption,
          List<List<PageBlockTableCell>>? cells,
          bool? isBordered,
          bool? isStriped}) =>
      PageBlockTable(
          caption: caption ?? this.caption,
          cells: cells ?? this.cells,
          isBordered: isBordered ?? this.isBordered,
          isStriped: isStriped ?? this.isStriped);
}

extension PageBlockDetailsExtensions on PageBlockDetails {
  PageBlockDetails copy(
          {RichText? header, List<PageBlock>? pageBlocks, bool? isOpen}) =>
      PageBlockDetails(
          header: header ?? this.header,
          pageBlocks: pageBlocks ?? this.pageBlocks,
          isOpen: isOpen ?? this.isOpen);
}

extension PageBlockRelatedArticlesExtensions on PageBlockRelatedArticles {
  PageBlockRelatedArticles copy(
          {RichText? header, List<PageBlockRelatedArticle>? articles}) =>
      PageBlockRelatedArticles(
          header: header ?? this.header, articles: articles ?? this.articles);
}

extension PageBlockMapExtensions on PageBlockMap {
  PageBlockMap copy(
          {Location? location,
          int? zoom,
          int? width,
          int? height,
          PageBlockCaption? caption}) =>
      PageBlockMap(
          location: location ?? this.location,
          zoom: zoom ?? this.zoom,
          width: width ?? this.width,
          height: height ?? this.height,
          caption: caption ?? this.caption);
}

extension WebPageInstantViewExtensions on WebPageInstantView {
  WebPageInstantView copy(
          {List<PageBlock>? pageBlocks,
          int? viewCount,
          int? version,
          bool? isRtl,
          bool? isFull}) =>
      WebPageInstantView(
          pageBlocks: pageBlocks ?? this.pageBlocks,
          viewCount: viewCount ?? this.viewCount,
          version: version ?? this.version,
          isRtl: isRtl ?? this.isRtl,
          isFull: isFull ?? this.isFull);
}

extension WebPageExtensions on WebPage {
  WebPage copy(
          {String? url,
          String? displayUrl,
          String? type,
          String? siteName,
          String? title,
          FormattedText? description,
          Photo? photo,
          String? embedUrl,
          String? embedType,
          int? embedWidth,
          int? embedHeight,
          int? duration,
          String? author,
          Animation? animation,
          Audio? audio,
          Document? document,
          Sticker? sticker,
          Video? video,
          VideoNote? videoNote,
          VoiceNote? voiceNote,
          int? instantViewVersion}) =>
      WebPage(
          url: url ?? this.url,
          displayUrl: displayUrl ?? this.displayUrl,
          type: type ?? this.type,
          siteName: siteName ?? this.siteName,
          title: title ?? this.title,
          description: description ?? this.description,
          photo: photo ?? this.photo,
          embedUrl: embedUrl ?? this.embedUrl,
          embedType: embedType ?? this.embedType,
          embedWidth: embedWidth ?? this.embedWidth,
          embedHeight: embedHeight ?? this.embedHeight,
          duration: duration ?? this.duration,
          author: author ?? this.author,
          animation: animation ?? this.animation,
          audio: audio ?? this.audio,
          document: document ?? this.document,
          sticker: sticker ?? this.sticker,
          video: video ?? this.video,
          videoNote: videoNote ?? this.videoNote,
          voiceNote: voiceNote ?? this.voiceNote,
          instantViewVersion: instantViewVersion ?? this.instantViewVersion);
}

extension CountryInfoExtensions on CountryInfo {
  CountryInfo copy(
          {String? countryCode,
          String? name,
          String? englishName,
          bool? isHidden,
          List<String>? callingCodes}) =>
      CountryInfo(
          countryCode: countryCode ?? this.countryCode,
          name: name ?? this.name,
          englishName: englishName ?? this.englishName,
          isHidden: isHidden ?? this.isHidden,
          callingCodes: callingCodes ?? this.callingCodes);
}

extension CountriesExtensions on Countries {
  Countries copy({List<CountryInfo>? countries}) =>
      Countries(countries: countries ?? this.countries);
}

extension PhoneNumberInfoExtensions on PhoneNumberInfo {
  PhoneNumberInfo copy(
          {CountryInfo? country,
          String? countryCallingCode,
          String? formattedPhoneNumber}) =>
      PhoneNumberInfo(
          country: country ?? this.country,
          countryCallingCode: countryCallingCode ?? this.countryCallingCode,
          formattedPhoneNumber:
              formattedPhoneNumber ?? this.formattedPhoneNumber);
}

extension BankCardActionOpenUrlExtensions on BankCardActionOpenUrl {
  BankCardActionOpenUrl copy({String? text, String? url}) =>
      BankCardActionOpenUrl(text: text ?? this.text, url: url ?? this.url);
}

extension BankCardInfoExtensions on BankCardInfo {
  BankCardInfo copy({String? title, List<BankCardActionOpenUrl>? actions}) =>
      BankCardInfo(
          title: title ?? this.title, actions: actions ?? this.actions);
}

extension AddressExtensions on Address {
  Address copy(
          {String? countryCode,
          String? state,
          String? city,
          String? streetLine1,
          String? streetLine2,
          String? postalCode}) =>
      Address(
          countryCode: countryCode ?? this.countryCode,
          state: state ?? this.state,
          city: city ?? this.city,
          streetLine1: streetLine1 ?? this.streetLine1,
          streetLine2: streetLine2 ?? this.streetLine2,
          postalCode: postalCode ?? this.postalCode);
}

extension LabeledPricePartExtensions on LabeledPricePart {
  LabeledPricePart copy({String? label, int? amount}) => LabeledPricePart(
      label: label ?? this.label, amount: amount ?? this.amount);
}

extension InvoiceExtensions on Invoice {
  Invoice copy(
          {String? currency,
          List<LabeledPricePart>? priceParts,
          bool? isTest,
          bool? needName,
          bool? needPhoneNumber,
          bool? needEmailAddress,
          bool? needShippingAddress,
          bool? sendPhoneNumberToProvider,
          bool? sendEmailAddressToProvider,
          bool? isFlexible}) =>
      Invoice(
          currency: currency ?? this.currency,
          priceParts: priceParts ?? this.priceParts,
          isTest: isTest ?? this.isTest,
          needName: needName ?? this.needName,
          needPhoneNumber: needPhoneNumber ?? this.needPhoneNumber,
          needEmailAddress: needEmailAddress ?? this.needEmailAddress,
          needShippingAddress: needShippingAddress ?? this.needShippingAddress,
          sendPhoneNumberToProvider:
              sendPhoneNumberToProvider ?? this.sendPhoneNumberToProvider,
          sendEmailAddressToProvider:
              sendEmailAddressToProvider ?? this.sendEmailAddressToProvider,
          isFlexible: isFlexible ?? this.isFlexible);
}

extension OrderInfoExtensions on OrderInfo {
  OrderInfo copy(
          {String? name,
          String? phoneNumber,
          String? emailAddress,
          Address? shippingAddress}) =>
      OrderInfo(
          name: name ?? this.name,
          phoneNumber: phoneNumber ?? this.phoneNumber,
          emailAddress: emailAddress ?? this.emailAddress,
          shippingAddress: shippingAddress ?? this.shippingAddress);
}

extension ShippingOptionExtensions on ShippingOption {
  ShippingOption copy(
          {String? id, String? title, List<LabeledPricePart>? priceParts}) =>
      ShippingOption(
          id: id ?? this.id,
          title: title ?? this.title,
          priceParts: priceParts ?? this.priceParts);
}

extension SavedCredentialsExtensions on SavedCredentials {
  SavedCredentials copy({String? id, String? title}) =>
      SavedCredentials(id: id ?? this.id, title: title ?? this.title);
}

extension InputCredentialsExtensions on InputCredentials {
  TResult map<TResult extends Object?>(
      {required TResult Function(InputCredentialsSaved value) saved,
      required TResult Function(InputCredentialsNew value) $new,
      required TResult Function(InputCredentialsApplePay value) applePay,
      required TResult Function(InputCredentialsGooglePay value) googlePay}) {
    switch (this.getConstructor()) {
      case InputCredentialsSaved.CONSTRUCTOR:
        return saved.call(this as InputCredentialsSaved);
      case InputCredentialsNew.CONSTRUCTOR:
        return $new.call(this as InputCredentialsNew);
      case InputCredentialsApplePay.CONSTRUCTOR:
        return applePay.call(this as InputCredentialsApplePay);
      case InputCredentialsGooglePay.CONSTRUCTOR:
        return googlePay.call(this as InputCredentialsGooglePay);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension InputCredentialsSavedExtensions on InputCredentialsSaved {
  InputCredentialsSaved copy({String? savedCredentialsId}) =>
      InputCredentialsSaved(
          savedCredentialsId: savedCredentialsId ?? this.savedCredentialsId);
}

extension InputCredentialsNewExtensions on InputCredentialsNew {
  InputCredentialsNew copy({String? data, bool? allowSave}) =>
      InputCredentialsNew(
          data: data ?? this.data, allowSave: allowSave ?? this.allowSave);
}

extension InputCredentialsApplePayExtensions on InputCredentialsApplePay {
  InputCredentialsApplePay copy({String? data}) =>
      InputCredentialsApplePay(data: data ?? this.data);
}

extension InputCredentialsGooglePayExtensions on InputCredentialsGooglePay {
  InputCredentialsGooglePay copy({String? data}) =>
      InputCredentialsGooglePay(data: data ?? this.data);
}

extension PaymentsProviderStripeExtensions on PaymentsProviderStripe {
  PaymentsProviderStripe copy(
          {String? publishableKey,
          bool? needCountry,
          bool? needPostalCode,
          bool? needCardholderName}) =>
      PaymentsProviderStripe(
          publishableKey: publishableKey ?? this.publishableKey,
          needCountry: needCountry ?? this.needCountry,
          needPostalCode: needPostalCode ?? this.needPostalCode,
          needCardholderName: needCardholderName ?? this.needCardholderName);
}

extension PaymentFormExtensions on PaymentForm {
  PaymentForm copy(
          {Invoice? invoice,
          String? url,
          PaymentsProviderStripe? paymentsProvider,
          OrderInfo? savedOrderInfo,
          SavedCredentials? savedCredentials,
          bool? canSaveCredentials,
          bool? needPassword}) =>
      PaymentForm(
          invoice: invoice ?? this.invoice,
          url: url ?? this.url,
          paymentsProvider: paymentsProvider ?? this.paymentsProvider,
          savedOrderInfo: savedOrderInfo ?? this.savedOrderInfo,
          savedCredentials: savedCredentials ?? this.savedCredentials,
          canSaveCredentials: canSaveCredentials ?? this.canSaveCredentials,
          needPassword: needPassword ?? this.needPassword);
}

extension ValidatedOrderInfoExtensions on ValidatedOrderInfo {
  ValidatedOrderInfo copy(
          {String? orderInfoId, List<ShippingOption>? shippingOptions}) =>
      ValidatedOrderInfo(
          orderInfoId: orderInfoId ?? this.orderInfoId,
          shippingOptions: shippingOptions ?? this.shippingOptions);
}

extension PaymentResultExtensions on PaymentResult {
  PaymentResult copy({bool? success, String? verificationUrl}) => PaymentResult(
      success: success ?? this.success,
      verificationUrl: verificationUrl ?? this.verificationUrl);
}

extension PaymentReceiptExtensions on PaymentReceipt {
  PaymentReceipt copy(
          {int? date,
          int? paymentsProviderUserId,
          Invoice? invoice,
          OrderInfo? orderInfo,
          ShippingOption? shippingOption,
          String? credentialsTitle}) =>
      PaymentReceipt(
          date: date ?? this.date,
          paymentsProviderUserId:
              paymentsProviderUserId ?? this.paymentsProviderUserId,
          invoice: invoice ?? this.invoice,
          orderInfo: orderInfo ?? this.orderInfo,
          shippingOption: shippingOption ?? this.shippingOption,
          credentialsTitle: credentialsTitle ?? this.credentialsTitle);
}

extension DatedFileExtensions on DatedFile {
  DatedFile copy({File? file, int? date}) =>
      DatedFile(file: file ?? this.file, date: date ?? this.date);
}

extension PassportElementTypeExtensions on PassportElementType {
  TResult map<TResult extends Object?>(
      {required TResult Function(PassportElementTypePersonalDetails value)
          personalDetails,
      required TResult Function(PassportElementTypePassport value) passport,
      required TResult Function(PassportElementTypeDriverLicense value)
          driverLicense,
      required TResult Function(PassportElementTypeIdentityCard value)
          identityCard,
      required TResult Function(PassportElementTypeInternalPassport value)
          internalPassport,
      required TResult Function(PassportElementTypeAddress value) address,
      required TResult Function(PassportElementTypeUtilityBill value)
          utilityBill,
      required TResult Function(PassportElementTypeBankStatement value)
          bankStatement,
      required TResult Function(PassportElementTypeRentalAgreement value)
          rentalAgreement,
      required TResult Function(PassportElementTypePassportRegistration value)
          passportRegistration,
      required TResult Function(PassportElementTypeTemporaryRegistration value)
          temporaryRegistration,
      required TResult Function(PassportElementTypePhoneNumber value)
          phoneNumber,
      required TResult Function(PassportElementTypeEmailAddress value)
          emailAddress}) {
    switch (this.getConstructor()) {
      case PassportElementTypePersonalDetails.CONSTRUCTOR:
        return personalDetails.call(this as PassportElementTypePersonalDetails);
      case PassportElementTypePassport.CONSTRUCTOR:
        return passport.call(this as PassportElementTypePassport);
      case PassportElementTypeDriverLicense.CONSTRUCTOR:
        return driverLicense.call(this as PassportElementTypeDriverLicense);
      case PassportElementTypeIdentityCard.CONSTRUCTOR:
        return identityCard.call(this as PassportElementTypeIdentityCard);
      case PassportElementTypeInternalPassport.CONSTRUCTOR:
        return internalPassport
            .call(this as PassportElementTypeInternalPassport);
      case PassportElementTypeAddress.CONSTRUCTOR:
        return address.call(this as PassportElementTypeAddress);
      case PassportElementTypeUtilityBill.CONSTRUCTOR:
        return utilityBill.call(this as PassportElementTypeUtilityBill);
      case PassportElementTypeBankStatement.CONSTRUCTOR:
        return bankStatement.call(this as PassportElementTypeBankStatement);
      case PassportElementTypeRentalAgreement.CONSTRUCTOR:
        return rentalAgreement.call(this as PassportElementTypeRentalAgreement);
      case PassportElementTypePassportRegistration.CONSTRUCTOR:
        return passportRegistration
            .call(this as PassportElementTypePassportRegistration);
      case PassportElementTypeTemporaryRegistration.CONSTRUCTOR:
        return temporaryRegistration
            .call(this as PassportElementTypeTemporaryRegistration);
      case PassportElementTypePhoneNumber.CONSTRUCTOR:
        return phoneNumber.call(this as PassportElementTypePhoneNumber);
      case PassportElementTypeEmailAddress.CONSTRUCTOR:
        return emailAddress.call(this as PassportElementTypeEmailAddress);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension DateExtensions on Date {
  Date copy({int? day, int? month, int? year}) => Date(
      day: day ?? this.day,
      month: month ?? this.month,
      year: year ?? this.year);
}

extension PersonalDetailsExtensions on PersonalDetails {
  PersonalDetails copy(
          {String? firstName,
          String? middleName,
          String? lastName,
          String? nativeFirstName,
          String? nativeMiddleName,
          String? nativeLastName,
          Date? birthdate,
          String? gender,
          String? countryCode,
          String? residenceCountryCode}) =>
      PersonalDetails(
          firstName: firstName ?? this.firstName,
          middleName: middleName ?? this.middleName,
          lastName: lastName ?? this.lastName,
          nativeFirstName: nativeFirstName ?? this.nativeFirstName,
          nativeMiddleName: nativeMiddleName ?? this.nativeMiddleName,
          nativeLastName: nativeLastName ?? this.nativeLastName,
          birthdate: birthdate ?? this.birthdate,
          gender: gender ?? this.gender,
          countryCode: countryCode ?? this.countryCode,
          residenceCountryCode:
              residenceCountryCode ?? this.residenceCountryCode);
}

extension IdentityDocumentExtensions on IdentityDocument {
  IdentityDocument copy(
          {String? number,
          Date? expiryDate,
          DatedFile? frontSide,
          DatedFile? reverseSide,
          DatedFile? selfie,
          List<DatedFile>? translation}) =>
      IdentityDocument(
          number: number ?? this.number,
          expiryDate: expiryDate ?? this.expiryDate,
          frontSide: frontSide ?? this.frontSide,
          reverseSide: reverseSide ?? this.reverseSide,
          selfie: selfie ?? this.selfie,
          translation: translation ?? this.translation);
}

extension InputIdentityDocumentExtensions on InputIdentityDocument {
  InputIdentityDocument copy(
          {String? number,
          Date? expiryDate,
          InputFile? frontSide,
          InputFile? reverseSide,
          InputFile? selfie,
          List<InputFile>? translation}) =>
      InputIdentityDocument(
          number: number ?? this.number,
          expiryDate: expiryDate ?? this.expiryDate,
          frontSide: frontSide ?? this.frontSide,
          reverseSide: reverseSide ?? this.reverseSide,
          selfie: selfie ?? this.selfie,
          translation: translation ?? this.translation);
}

extension PersonalDocumentExtensions on PersonalDocument {
  PersonalDocument copy(
          {List<DatedFile>? files, List<DatedFile>? translation}) =>
      PersonalDocument(
          files: files ?? this.files,
          translation: translation ?? this.translation);
}

extension InputPersonalDocumentExtensions on InputPersonalDocument {
  InputPersonalDocument copy(
          {List<InputFile>? files, List<InputFile>? translation}) =>
      InputPersonalDocument(
          files: files ?? this.files,
          translation: translation ?? this.translation);
}

extension PassportElementExtensions on PassportElement {
  TResult map<TResult extends Object?>(
      {required TResult Function(PassportElementPersonalDetails value)
          personalDetails,
      required TResult Function(PassportElementPassport value) passport,
      required TResult Function(PassportElementDriverLicense value)
          driverLicense,
      required TResult Function(PassportElementIdentityCard value) identityCard,
      required TResult Function(PassportElementInternalPassport value)
          internalPassport,
      required TResult Function(PassportElementAddress value) address,
      required TResult Function(PassportElementUtilityBill value) utilityBill,
      required TResult Function(PassportElementBankStatement value)
          bankStatement,
      required TResult Function(PassportElementRentalAgreement value)
          rentalAgreement,
      required TResult Function(PassportElementPassportRegistration value)
          passportRegistration,
      required TResult Function(PassportElementTemporaryRegistration value)
          temporaryRegistration,
      required TResult Function(PassportElementPhoneNumber value) phoneNumber,
      required TResult Function(PassportElementEmailAddress value)
          emailAddress}) {
    switch (this.getConstructor()) {
      case PassportElementPersonalDetails.CONSTRUCTOR:
        return personalDetails.call(this as PassportElementPersonalDetails);
      case PassportElementPassport.CONSTRUCTOR:
        return passport.call(this as PassportElementPassport);
      case PassportElementDriverLicense.CONSTRUCTOR:
        return driverLicense.call(this as PassportElementDriverLicense);
      case PassportElementIdentityCard.CONSTRUCTOR:
        return identityCard.call(this as PassportElementIdentityCard);
      case PassportElementInternalPassport.CONSTRUCTOR:
        return internalPassport.call(this as PassportElementInternalPassport);
      case PassportElementAddress.CONSTRUCTOR:
        return address.call(this as PassportElementAddress);
      case PassportElementUtilityBill.CONSTRUCTOR:
        return utilityBill.call(this as PassportElementUtilityBill);
      case PassportElementBankStatement.CONSTRUCTOR:
        return bankStatement.call(this as PassportElementBankStatement);
      case PassportElementRentalAgreement.CONSTRUCTOR:
        return rentalAgreement.call(this as PassportElementRentalAgreement);
      case PassportElementPassportRegistration.CONSTRUCTOR:
        return passportRegistration
            .call(this as PassportElementPassportRegistration);
      case PassportElementTemporaryRegistration.CONSTRUCTOR:
        return temporaryRegistration
            .call(this as PassportElementTemporaryRegistration);
      case PassportElementPhoneNumber.CONSTRUCTOR:
        return phoneNumber.call(this as PassportElementPhoneNumber);
      case PassportElementEmailAddress.CONSTRUCTOR:
        return emailAddress.call(this as PassportElementEmailAddress);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension PassportElementPersonalDetailsExtensions
    on PassportElementPersonalDetails {
  PassportElementPersonalDetails copy({PersonalDetails? personalDetails}) =>
      PassportElementPersonalDetails(
          personalDetails: personalDetails ?? this.personalDetails);
}

extension PassportElementPassportExtensions on PassportElementPassport {
  PassportElementPassport copy({IdentityDocument? passport}) =>
      PassportElementPassport(passport: passport ?? this.passport);
}

extension PassportElementDriverLicenseExtensions
    on PassportElementDriverLicense {
  PassportElementDriverLicense copy({IdentityDocument? driverLicense}) =>
      PassportElementDriverLicense(
          driverLicense: driverLicense ?? this.driverLicense);
}

extension PassportElementIdentityCardExtensions on PassportElementIdentityCard {
  PassportElementIdentityCard copy({IdentityDocument? identityCard}) =>
      PassportElementIdentityCard(
          identityCard: identityCard ?? this.identityCard);
}

extension PassportElementInternalPassportExtensions
    on PassportElementInternalPassport {
  PassportElementInternalPassport copy({IdentityDocument? internalPassport}) =>
      PassportElementInternalPassport(
          internalPassport: internalPassport ?? this.internalPassport);
}

extension PassportElementAddressExtensions on PassportElementAddress {
  PassportElementAddress copy({Address? address}) =>
      PassportElementAddress(address: address ?? this.address);
}

extension PassportElementUtilityBillExtensions on PassportElementUtilityBill {
  PassportElementUtilityBill copy({PersonalDocument? utilityBill}) =>
      PassportElementUtilityBill(utilityBill: utilityBill ?? this.utilityBill);
}

extension PassportElementBankStatementExtensions
    on PassportElementBankStatement {
  PassportElementBankStatement copy({PersonalDocument? bankStatement}) =>
      PassportElementBankStatement(
          bankStatement: bankStatement ?? this.bankStatement);
}

extension PassportElementRentalAgreementExtensions
    on PassportElementRentalAgreement {
  PassportElementRentalAgreement copy({PersonalDocument? rentalAgreement}) =>
      PassportElementRentalAgreement(
          rentalAgreement: rentalAgreement ?? this.rentalAgreement);
}

extension PassportElementPassportRegistrationExtensions
    on PassportElementPassportRegistration {
  PassportElementPassportRegistration copy(
          {PersonalDocument? passportRegistration}) =>
      PassportElementPassportRegistration(
          passportRegistration:
              passportRegistration ?? this.passportRegistration);
}

extension PassportElementTemporaryRegistrationExtensions
    on PassportElementTemporaryRegistration {
  PassportElementTemporaryRegistration copy(
          {PersonalDocument? temporaryRegistration}) =>
      PassportElementTemporaryRegistration(
          temporaryRegistration:
              temporaryRegistration ?? this.temporaryRegistration);
}

extension PassportElementPhoneNumberExtensions on PassportElementPhoneNumber {
  PassportElementPhoneNumber copy({String? phoneNumber}) =>
      PassportElementPhoneNumber(phoneNumber: phoneNumber ?? this.phoneNumber);
}

extension PassportElementEmailAddressExtensions on PassportElementEmailAddress {
  PassportElementEmailAddress copy({String? emailAddress}) =>
      PassportElementEmailAddress(
          emailAddress: emailAddress ?? this.emailAddress);
}

extension InputPassportElementExtensions on InputPassportElement {
  TResult map<TResult extends Object?>(
      {required TResult Function(InputPassportElementPersonalDetails value)
          personalDetails,
      required TResult Function(InputPassportElementPassport value) passport,
      required TResult Function(InputPassportElementDriverLicense value)
          driverLicense,
      required TResult Function(InputPassportElementIdentityCard value)
          identityCard,
      required TResult Function(InputPassportElementInternalPassport value)
          internalPassport,
      required TResult Function(InputPassportElementAddress value) address,
      required TResult Function(InputPassportElementUtilityBill value)
          utilityBill,
      required TResult Function(InputPassportElementBankStatement value)
          bankStatement,
      required TResult Function(InputPassportElementRentalAgreement value)
          rentalAgreement,
      required TResult Function(InputPassportElementPassportRegistration value)
          passportRegistration,
      required TResult Function(InputPassportElementTemporaryRegistration value)
          temporaryRegistration,
      required TResult Function(InputPassportElementPhoneNumber value)
          phoneNumber,
      required TResult Function(InputPassportElementEmailAddress value)
          emailAddress}) {
    switch (this.getConstructor()) {
      case InputPassportElementPersonalDetails.CONSTRUCTOR:
        return personalDetails
            .call(this as InputPassportElementPersonalDetails);
      case InputPassportElementPassport.CONSTRUCTOR:
        return passport.call(this as InputPassportElementPassport);
      case InputPassportElementDriverLicense.CONSTRUCTOR:
        return driverLicense.call(this as InputPassportElementDriverLicense);
      case InputPassportElementIdentityCard.CONSTRUCTOR:
        return identityCard.call(this as InputPassportElementIdentityCard);
      case InputPassportElementInternalPassport.CONSTRUCTOR:
        return internalPassport
            .call(this as InputPassportElementInternalPassport);
      case InputPassportElementAddress.CONSTRUCTOR:
        return address.call(this as InputPassportElementAddress);
      case InputPassportElementUtilityBill.CONSTRUCTOR:
        return utilityBill.call(this as InputPassportElementUtilityBill);
      case InputPassportElementBankStatement.CONSTRUCTOR:
        return bankStatement.call(this as InputPassportElementBankStatement);
      case InputPassportElementRentalAgreement.CONSTRUCTOR:
        return rentalAgreement
            .call(this as InputPassportElementRentalAgreement);
      case InputPassportElementPassportRegistration.CONSTRUCTOR:
        return passportRegistration
            .call(this as InputPassportElementPassportRegistration);
      case InputPassportElementTemporaryRegistration.CONSTRUCTOR:
        return temporaryRegistration
            .call(this as InputPassportElementTemporaryRegistration);
      case InputPassportElementPhoneNumber.CONSTRUCTOR:
        return phoneNumber.call(this as InputPassportElementPhoneNumber);
      case InputPassportElementEmailAddress.CONSTRUCTOR:
        return emailAddress.call(this as InputPassportElementEmailAddress);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension InputPassportElementPersonalDetailsExtensions
    on InputPassportElementPersonalDetails {
  InputPassportElementPersonalDetails copy(
          {PersonalDetails? personalDetails}) =>
      InputPassportElementPersonalDetails(
          personalDetails: personalDetails ?? this.personalDetails);
}

extension InputPassportElementPassportExtensions
    on InputPassportElementPassport {
  InputPassportElementPassport copy({InputIdentityDocument? passport}) =>
      InputPassportElementPassport(passport: passport ?? this.passport);
}

extension InputPassportElementDriverLicenseExtensions
    on InputPassportElementDriverLicense {
  InputPassportElementDriverLicense copy(
          {InputIdentityDocument? driverLicense}) =>
      InputPassportElementDriverLicense(
          driverLicense: driverLicense ?? this.driverLicense);
}

extension InputPassportElementIdentityCardExtensions
    on InputPassportElementIdentityCard {
  InputPassportElementIdentityCard copy(
          {InputIdentityDocument? identityCard}) =>
      InputPassportElementIdentityCard(
          identityCard: identityCard ?? this.identityCard);
}

extension InputPassportElementInternalPassportExtensions
    on InputPassportElementInternalPassport {
  InputPassportElementInternalPassport copy(
          {InputIdentityDocument? internalPassport}) =>
      InputPassportElementInternalPassport(
          internalPassport: internalPassport ?? this.internalPassport);
}

extension InputPassportElementAddressExtensions on InputPassportElementAddress {
  InputPassportElementAddress copy({Address? address}) =>
      InputPassportElementAddress(address: address ?? this.address);
}

extension InputPassportElementUtilityBillExtensions
    on InputPassportElementUtilityBill {
  InputPassportElementUtilityBill copy({InputPersonalDocument? utilityBill}) =>
      InputPassportElementUtilityBill(
          utilityBill: utilityBill ?? this.utilityBill);
}

extension InputPassportElementBankStatementExtensions
    on InputPassportElementBankStatement {
  InputPassportElementBankStatement copy(
          {InputPersonalDocument? bankStatement}) =>
      InputPassportElementBankStatement(
          bankStatement: bankStatement ?? this.bankStatement);
}

extension InputPassportElementRentalAgreementExtensions
    on InputPassportElementRentalAgreement {
  InputPassportElementRentalAgreement copy(
          {InputPersonalDocument? rentalAgreement}) =>
      InputPassportElementRentalAgreement(
          rentalAgreement: rentalAgreement ?? this.rentalAgreement);
}

extension InputPassportElementPassportRegistrationExtensions
    on InputPassportElementPassportRegistration {
  InputPassportElementPassportRegistration copy(
          {InputPersonalDocument? passportRegistration}) =>
      InputPassportElementPassportRegistration(
          passportRegistration:
              passportRegistration ?? this.passportRegistration);
}

extension InputPassportElementTemporaryRegistrationExtensions
    on InputPassportElementTemporaryRegistration {
  InputPassportElementTemporaryRegistration copy(
          {InputPersonalDocument? temporaryRegistration}) =>
      InputPassportElementTemporaryRegistration(
          temporaryRegistration:
              temporaryRegistration ?? this.temporaryRegistration);
}

extension InputPassportElementPhoneNumberExtensions
    on InputPassportElementPhoneNumber {
  InputPassportElementPhoneNumber copy({String? phoneNumber}) =>
      InputPassportElementPhoneNumber(
          phoneNumber: phoneNumber ?? this.phoneNumber);
}

extension InputPassportElementEmailAddressExtensions
    on InputPassportElementEmailAddress {
  InputPassportElementEmailAddress copy({String? emailAddress}) =>
      InputPassportElementEmailAddress(
          emailAddress: emailAddress ?? this.emailAddress);
}

extension PassportElementsExtensions on PassportElements {
  PassportElements copy({List<PassportElement>? elements}) =>
      PassportElements(elements: elements ?? this.elements);
}

extension PassportElementErrorSourceExtensions on PassportElementErrorSource {
  TResult map<TResult extends Object?>(
      {required TResult Function(PassportElementErrorSourceUnspecified value)
          unspecified,
      required TResult Function(PassportElementErrorSourceDataField value)
          dataField,
      required TResult Function(PassportElementErrorSourceFrontSide value)
          frontSide,
      required TResult Function(PassportElementErrorSourceReverseSide value)
          reverseSide,
      required TResult Function(PassportElementErrorSourceSelfie value) selfie,
      required TResult Function(PassportElementErrorSourceTranslationFile value)
          translationFile,
      required TResult Function(
              PassportElementErrorSourceTranslationFiles value)
          translationFiles,
      required TResult Function(PassportElementErrorSourceFile value) file,
      required TResult Function(PassportElementErrorSourceFiles value) files}) {
    switch (this.getConstructor()) {
      case PassportElementErrorSourceUnspecified.CONSTRUCTOR:
        return unspecified.call(this as PassportElementErrorSourceUnspecified);
      case PassportElementErrorSourceDataField.CONSTRUCTOR:
        return dataField.call(this as PassportElementErrorSourceDataField);
      case PassportElementErrorSourceFrontSide.CONSTRUCTOR:
        return frontSide.call(this as PassportElementErrorSourceFrontSide);
      case PassportElementErrorSourceReverseSide.CONSTRUCTOR:
        return reverseSide.call(this as PassportElementErrorSourceReverseSide);
      case PassportElementErrorSourceSelfie.CONSTRUCTOR:
        return selfie.call(this as PassportElementErrorSourceSelfie);
      case PassportElementErrorSourceTranslationFile.CONSTRUCTOR:
        return translationFile
            .call(this as PassportElementErrorSourceTranslationFile);
      case PassportElementErrorSourceTranslationFiles.CONSTRUCTOR:
        return translationFiles
            .call(this as PassportElementErrorSourceTranslationFiles);
      case PassportElementErrorSourceFile.CONSTRUCTOR:
        return file.call(this as PassportElementErrorSourceFile);
      case PassportElementErrorSourceFiles.CONSTRUCTOR:
        return files.call(this as PassportElementErrorSourceFiles);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension PassportElementErrorSourceDataFieldExtensions
    on PassportElementErrorSourceDataField {
  PassportElementErrorSourceDataField copy({String? fieldName}) =>
      PassportElementErrorSourceDataField(
          fieldName: fieldName ?? this.fieldName);
}

extension PassportElementErrorSourceTranslationFileExtensions
    on PassportElementErrorSourceTranslationFile {
  PassportElementErrorSourceTranslationFile copy({int? fileIndex}) =>
      PassportElementErrorSourceTranslationFile(
          fileIndex: fileIndex ?? this.fileIndex);
}

extension PassportElementErrorSourceFileExtensions
    on PassportElementErrorSourceFile {
  PassportElementErrorSourceFile copy({int? fileIndex}) =>
      PassportElementErrorSourceFile(fileIndex: fileIndex ?? this.fileIndex);
}

extension PassportElementErrorExtensions on PassportElementError {
  PassportElementError copy(
          {PassportElementType? type,
          String? message,
          PassportElementErrorSource? source}) =>
      PassportElementError(
          type: type ?? this.type,
          message: message ?? this.message,
          source: source ?? this.source);
}

extension PassportSuitableElementExtensions on PassportSuitableElement {
  PassportSuitableElement copy(
          {PassportElementType? type,
          bool? isSelfieRequired,
          bool? isTranslationRequired,
          bool? isNativeNameRequired}) =>
      PassportSuitableElement(
          type: type ?? this.type,
          isSelfieRequired: isSelfieRequired ?? this.isSelfieRequired,
          isTranslationRequired:
              isTranslationRequired ?? this.isTranslationRequired,
          isNativeNameRequired:
              isNativeNameRequired ?? this.isNativeNameRequired);
}

extension PassportRequiredElementExtensions on PassportRequiredElement {
  PassportRequiredElement copy(
          {List<PassportSuitableElement>? suitableElements}) =>
      PassportRequiredElement(
          suitableElements: suitableElements ?? this.suitableElements);
}

extension PassportAuthorizationFormExtensions on PassportAuthorizationForm {
  PassportAuthorizationForm copy(
          {int? id,
          List<PassportRequiredElement>? requiredElements,
          String? privacyPolicyUrl}) =>
      PassportAuthorizationForm(
          id: id ?? this.id,
          requiredElements: requiredElements ?? this.requiredElements,
          privacyPolicyUrl: privacyPolicyUrl ?? this.privacyPolicyUrl);
}

extension PassportElementsWithErrorsExtensions on PassportElementsWithErrors {
  PassportElementsWithErrors copy(
          {List<PassportElement>? elements,
          List<PassportElementError>? errors}) =>
      PassportElementsWithErrors(
          elements: elements ?? this.elements, errors: errors ?? this.errors);
}

extension EncryptedCredentialsExtensions on EncryptedCredentials {
  EncryptedCredentials copy({String? data, String? hash, String? secret}) =>
      EncryptedCredentials(
          data: data ?? this.data,
          hash: hash ?? this.hash,
          secret: secret ?? this.secret);
}

extension EncryptedPassportElementExtensions on EncryptedPassportElement {
  EncryptedPassportElement copy(
          {PassportElementType? type,
          String? data,
          DatedFile? frontSide,
          DatedFile? reverseSide,
          DatedFile? selfie,
          List<DatedFile>? translation,
          List<DatedFile>? files,
          String? value,
          String? hash}) =>
      EncryptedPassportElement(
          type: type ?? this.type,
          data: data ?? this.data,
          frontSide: frontSide ?? this.frontSide,
          reverseSide: reverseSide ?? this.reverseSide,
          selfie: selfie ?? this.selfie,
          translation: translation ?? this.translation,
          files: files ?? this.files,
          value: value ?? this.value,
          hash: hash ?? this.hash);
}

extension InputPassportElementErrorSourceExtensions
    on InputPassportElementErrorSource {
  TResult map<TResult extends Object?>(
      {required TResult Function(
              InputPassportElementErrorSourceUnspecified value)
          unspecified,
      required TResult Function(InputPassportElementErrorSourceDataField value)
          dataField,
      required TResult Function(InputPassportElementErrorSourceFrontSide value)
          frontSide,
      required TResult Function(
              InputPassportElementErrorSourceReverseSide value)
          reverseSide,
      required TResult Function(InputPassportElementErrorSourceSelfie value)
          selfie,
      required TResult Function(
              InputPassportElementErrorSourceTranslationFile value)
          translationFile,
      required TResult Function(
              InputPassportElementErrorSourceTranslationFiles value)
          translationFiles,
      required TResult Function(InputPassportElementErrorSourceFile value) file,
      required TResult Function(InputPassportElementErrorSourceFiles value)
          files}) {
    switch (this.getConstructor()) {
      case InputPassportElementErrorSourceUnspecified.CONSTRUCTOR:
        return unspecified
            .call(this as InputPassportElementErrorSourceUnspecified);
      case InputPassportElementErrorSourceDataField.CONSTRUCTOR:
        return dataField.call(this as InputPassportElementErrorSourceDataField);
      case InputPassportElementErrorSourceFrontSide.CONSTRUCTOR:
        return frontSide.call(this as InputPassportElementErrorSourceFrontSide);
      case InputPassportElementErrorSourceReverseSide.CONSTRUCTOR:
        return reverseSide
            .call(this as InputPassportElementErrorSourceReverseSide);
      case InputPassportElementErrorSourceSelfie.CONSTRUCTOR:
        return selfie.call(this as InputPassportElementErrorSourceSelfie);
      case InputPassportElementErrorSourceTranslationFile.CONSTRUCTOR:
        return translationFile
            .call(this as InputPassportElementErrorSourceTranslationFile);
      case InputPassportElementErrorSourceTranslationFiles.CONSTRUCTOR:
        return translationFiles
            .call(this as InputPassportElementErrorSourceTranslationFiles);
      case InputPassportElementErrorSourceFile.CONSTRUCTOR:
        return file.call(this as InputPassportElementErrorSourceFile);
      case InputPassportElementErrorSourceFiles.CONSTRUCTOR:
        return files.call(this as InputPassportElementErrorSourceFiles);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension InputPassportElementErrorSourceUnspecifiedExtensions
    on InputPassportElementErrorSourceUnspecified {
  InputPassportElementErrorSourceUnspecified copy({String? elementHash}) =>
      InputPassportElementErrorSourceUnspecified(
          elementHash: elementHash ?? this.elementHash);
}

extension InputPassportElementErrorSourceDataFieldExtensions
    on InputPassportElementErrorSourceDataField {
  InputPassportElementErrorSourceDataField copy(
          {String? fieldName, String? dataHash}) =>
      InputPassportElementErrorSourceDataField(
          fieldName: fieldName ?? this.fieldName,
          dataHash: dataHash ?? this.dataHash);
}

extension InputPassportElementErrorSourceFrontSideExtensions
    on InputPassportElementErrorSourceFrontSide {
  InputPassportElementErrorSourceFrontSide copy({String? fileHash}) =>
      InputPassportElementErrorSourceFrontSide(
          fileHash: fileHash ?? this.fileHash);
}

extension InputPassportElementErrorSourceReverseSideExtensions
    on InputPassportElementErrorSourceReverseSide {
  InputPassportElementErrorSourceReverseSide copy({String? fileHash}) =>
      InputPassportElementErrorSourceReverseSide(
          fileHash: fileHash ?? this.fileHash);
}

extension InputPassportElementErrorSourceSelfieExtensions
    on InputPassportElementErrorSourceSelfie {
  InputPassportElementErrorSourceSelfie copy({String? fileHash}) =>
      InputPassportElementErrorSourceSelfie(
          fileHash: fileHash ?? this.fileHash);
}

extension InputPassportElementErrorSourceTranslationFileExtensions
    on InputPassportElementErrorSourceTranslationFile {
  InputPassportElementErrorSourceTranslationFile copy({String? fileHash}) =>
      InputPassportElementErrorSourceTranslationFile(
          fileHash: fileHash ?? this.fileHash);
}

extension InputPassportElementErrorSourceTranslationFilesExtensions
    on InputPassportElementErrorSourceTranslationFiles {
  InputPassportElementErrorSourceTranslationFiles copy(
          {List<String>? fileHashes}) =>
      InputPassportElementErrorSourceTranslationFiles(
          fileHashes: fileHashes ?? this.fileHashes);
}

extension InputPassportElementErrorSourceFileExtensions
    on InputPassportElementErrorSourceFile {
  InputPassportElementErrorSourceFile copy({String? fileHash}) =>
      InputPassportElementErrorSourceFile(fileHash: fileHash ?? this.fileHash);
}

extension InputPassportElementErrorSourceFilesExtensions
    on InputPassportElementErrorSourceFiles {
  InputPassportElementErrorSourceFiles copy({List<String>? fileHashes}) =>
      InputPassportElementErrorSourceFiles(
          fileHashes: fileHashes ?? this.fileHashes);
}

extension InputPassportElementErrorExtensions on InputPassportElementError {
  InputPassportElementError copy(
          {PassportElementType? type,
          String? message,
          InputPassportElementErrorSource? source}) =>
      InputPassportElementError(
          type: type ?? this.type,
          message: message ?? this.message,
          source: source ?? this.source);
}

extension MessageContentExtensions on MessageContent {
  TResult map<TResult extends Object?>(
      {required TResult Function(MessageText value) messageText,
      required TResult Function(MessageAnimation value) messageAnimation,
      required TResult Function(MessageAudio value) messageAudio,
      required TResult Function(MessageDocument value) messageDocument,
      required TResult Function(MessagePhoto value) messagePhoto,
      required TResult Function(MessageExpiredPhoto value) messageExpiredPhoto,
      required TResult Function(MessageSticker value) messageSticker,
      required TResult Function(MessageVideo value) messageVideo,
      required TResult Function(MessageExpiredVideo value) messageExpiredVideo,
      required TResult Function(MessageVideoNote value) messageVideoNote,
      required TResult Function(MessageVoiceNote value) messageVoiceNote,
      required TResult Function(MessageLocation value) messageLocation,
      required TResult Function(MessageVenue value) messageVenue,
      required TResult Function(MessageContact value) messageContact,
      required TResult Function(MessageDice value) messageDice,
      required TResult Function(MessageGame value) messageGame,
      required TResult Function(MessagePoll value) messagePoll,
      required TResult Function(MessageInvoice value) messageInvoice,
      required TResult Function(MessageCall value) messageCall,
      required TResult Function(MessageVoiceChatStarted value)
          messageVoiceChatStarted,
      required TResult Function(MessageVoiceChatEnded value)
          messageVoiceChatEnded,
      required TResult Function(MessageInviteVoiceChatParticipants value)
          messageInviteVoiceChatParticipants,
      required TResult Function(MessageBasicGroupChatCreate value)
          messageBasicGroupChatCreate,
      required TResult Function(MessageSupergroupChatCreate value)
          messageSupergroupChatCreate,
      required TResult Function(MessageChatChangeTitle value)
          messageChatChangeTitle,
      required TResult Function(MessageChatChangePhoto value)
          messageChatChangePhoto,
      required TResult Function(MessageChatDeletePhoto value)
          messageChatDeletePhoto,
      required TResult Function(MessageChatAddMembers value)
          messageChatAddMembers,
      required TResult Function(MessageChatJoinByLink value)
          messageChatJoinByLink,
      required TResult Function(MessageChatDeleteMember value)
          messageChatDeleteMember,
      required TResult Function(MessageChatUpgradeTo value)
          messageChatUpgradeTo,
      required TResult Function(MessageChatUpgradeFrom value)
          messageChatUpgradeFrom,
      required TResult Function(MessagePinMessage value) messagePinMessage,
      required TResult Function(MessageScreenshotTaken value)
          messageScreenshotTaken,
      required TResult Function(MessageChatSetTtl value) messageChatSetTtl,
      required TResult Function(MessageCustomServiceAction value)
          messageCustomServiceAction,
      required TResult Function(MessageGameScore value) messageGameScore,
      required TResult Function(MessagePaymentSuccessful value)
          messagePaymentSuccessful,
      required TResult Function(MessagePaymentSuccessfulBot value)
          messagePaymentSuccessfulBot,
      required TResult Function(MessageContactRegistered value)
          messageContactRegistered,
      required TResult Function(MessageWebsiteConnected value)
          messageWebsiteConnected,
      required TResult Function(MessagePassportDataSent value)
          messagePassportDataSent,
      required TResult Function(MessagePassportDataReceived value)
          messagePassportDataReceived,
      required TResult Function(MessageProximityAlertTriggered value)
          messageProximityAlertTriggered,
      required TResult Function(MessageUnsupported value) messageUnsupported}) {
    switch (this.getConstructor()) {
      case MessageText.CONSTRUCTOR:
        return messageText.call(this as MessageText);
      case MessageAnimation.CONSTRUCTOR:
        return messageAnimation.call(this as MessageAnimation);
      case MessageAudio.CONSTRUCTOR:
        return messageAudio.call(this as MessageAudio);
      case MessageDocument.CONSTRUCTOR:
        return messageDocument.call(this as MessageDocument);
      case MessagePhoto.CONSTRUCTOR:
        return messagePhoto.call(this as MessagePhoto);
      case MessageExpiredPhoto.CONSTRUCTOR:
        return messageExpiredPhoto.call(this as MessageExpiredPhoto);
      case MessageSticker.CONSTRUCTOR:
        return messageSticker.call(this as MessageSticker);
      case MessageVideo.CONSTRUCTOR:
        return messageVideo.call(this as MessageVideo);
      case MessageExpiredVideo.CONSTRUCTOR:
        return messageExpiredVideo.call(this as MessageExpiredVideo);
      case MessageVideoNote.CONSTRUCTOR:
        return messageVideoNote.call(this as MessageVideoNote);
      case MessageVoiceNote.CONSTRUCTOR:
        return messageVoiceNote.call(this as MessageVoiceNote);
      case MessageLocation.CONSTRUCTOR:
        return messageLocation.call(this as MessageLocation);
      case MessageVenue.CONSTRUCTOR:
        return messageVenue.call(this as MessageVenue);
      case MessageContact.CONSTRUCTOR:
        return messageContact.call(this as MessageContact);
      case MessageDice.CONSTRUCTOR:
        return messageDice.call(this as MessageDice);
      case MessageGame.CONSTRUCTOR:
        return messageGame.call(this as MessageGame);
      case MessagePoll.CONSTRUCTOR:
        return messagePoll.call(this as MessagePoll);
      case MessageInvoice.CONSTRUCTOR:
        return messageInvoice.call(this as MessageInvoice);
      case MessageCall.CONSTRUCTOR:
        return messageCall.call(this as MessageCall);
      case MessageVoiceChatStarted.CONSTRUCTOR:
        return messageVoiceChatStarted.call(this as MessageVoiceChatStarted);
      case MessageVoiceChatEnded.CONSTRUCTOR:
        return messageVoiceChatEnded.call(this as MessageVoiceChatEnded);
      case MessageInviteVoiceChatParticipants.CONSTRUCTOR:
        return messageInviteVoiceChatParticipants
            .call(this as MessageInviteVoiceChatParticipants);
      case MessageBasicGroupChatCreate.CONSTRUCTOR:
        return messageBasicGroupChatCreate
            .call(this as MessageBasicGroupChatCreate);
      case MessageSupergroupChatCreate.CONSTRUCTOR:
        return messageSupergroupChatCreate
            .call(this as MessageSupergroupChatCreate);
      case MessageChatChangeTitle.CONSTRUCTOR:
        return messageChatChangeTitle.call(this as MessageChatChangeTitle);
      case MessageChatChangePhoto.CONSTRUCTOR:
        return messageChatChangePhoto.call(this as MessageChatChangePhoto);
      case MessageChatDeletePhoto.CONSTRUCTOR:
        return messageChatDeletePhoto.call(this as MessageChatDeletePhoto);
      case MessageChatAddMembers.CONSTRUCTOR:
        return messageChatAddMembers.call(this as MessageChatAddMembers);
      case MessageChatJoinByLink.CONSTRUCTOR:
        return messageChatJoinByLink.call(this as MessageChatJoinByLink);
      case MessageChatDeleteMember.CONSTRUCTOR:
        return messageChatDeleteMember.call(this as MessageChatDeleteMember);
      case MessageChatUpgradeTo.CONSTRUCTOR:
        return messageChatUpgradeTo.call(this as MessageChatUpgradeTo);
      case MessageChatUpgradeFrom.CONSTRUCTOR:
        return messageChatUpgradeFrom.call(this as MessageChatUpgradeFrom);
      case MessagePinMessage.CONSTRUCTOR:
        return messagePinMessage.call(this as MessagePinMessage);
      case MessageScreenshotTaken.CONSTRUCTOR:
        return messageScreenshotTaken.call(this as MessageScreenshotTaken);
      case MessageChatSetTtl.CONSTRUCTOR:
        return messageChatSetTtl.call(this as MessageChatSetTtl);
      case MessageCustomServiceAction.CONSTRUCTOR:
        return messageCustomServiceAction
            .call(this as MessageCustomServiceAction);
      case MessageGameScore.CONSTRUCTOR:
        return messageGameScore.call(this as MessageGameScore);
      case MessagePaymentSuccessful.CONSTRUCTOR:
        return messagePaymentSuccessful.call(this as MessagePaymentSuccessful);
      case MessagePaymentSuccessfulBot.CONSTRUCTOR:
        return messagePaymentSuccessfulBot
            .call(this as MessagePaymentSuccessfulBot);
      case MessageContactRegistered.CONSTRUCTOR:
        return messageContactRegistered.call(this as MessageContactRegistered);
      case MessageWebsiteConnected.CONSTRUCTOR:
        return messageWebsiteConnected.call(this as MessageWebsiteConnected);
      case MessagePassportDataSent.CONSTRUCTOR:
        return messagePassportDataSent.call(this as MessagePassportDataSent);
      case MessagePassportDataReceived.CONSTRUCTOR:
        return messagePassportDataReceived
            .call(this as MessagePassportDataReceived);
      case MessageProximityAlertTriggered.CONSTRUCTOR:
        return messageProximityAlertTriggered
            .call(this as MessageProximityAlertTriggered);
      case MessageUnsupported.CONSTRUCTOR:
        return messageUnsupported.call(this as MessageUnsupported);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension MessageTextExtensions on MessageText {
  MessageText copy({FormattedText? text, WebPage? webPage}) =>
      MessageText(text: text ?? this.text, webPage: webPage ?? this.webPage);
}

extension MessageAnimationExtensions on MessageAnimation {
  MessageAnimation copy(
          {Animation? animation, FormattedText? caption, bool? isSecret}) =>
      MessageAnimation(
          animation: animation ?? this.animation,
          caption: caption ?? this.caption,
          isSecret: isSecret ?? this.isSecret);
}

extension MessageAudioExtensions on MessageAudio {
  MessageAudio copy({Audio? audio, FormattedText? caption}) => MessageAudio(
      audio: audio ?? this.audio, caption: caption ?? this.caption);
}

extension MessageDocumentExtensions on MessageDocument {
  MessageDocument copy({Document? document, FormattedText? caption}) =>
      MessageDocument(
          document: document ?? this.document,
          caption: caption ?? this.caption);
}

extension MessagePhotoExtensions on MessagePhoto {
  MessagePhoto copy({Photo? photo, FormattedText? caption, bool? isSecret}) =>
      MessagePhoto(
          photo: photo ?? this.photo,
          caption: caption ?? this.caption,
          isSecret: isSecret ?? this.isSecret);
}

extension MessageStickerExtensions on MessageSticker {
  MessageSticker copy({Sticker? sticker}) =>
      MessageSticker(sticker: sticker ?? this.sticker);
}

extension MessageVideoExtensions on MessageVideo {
  MessageVideo copy({Video? video, FormattedText? caption, bool? isSecret}) =>
      MessageVideo(
          video: video ?? this.video,
          caption: caption ?? this.caption,
          isSecret: isSecret ?? this.isSecret);
}

extension MessageVideoNoteExtensions on MessageVideoNote {
  MessageVideoNote copy(
          {VideoNote? videoNote, bool? isViewed, bool? isSecret}) =>
      MessageVideoNote(
          videoNote: videoNote ?? this.videoNote,
          isViewed: isViewed ?? this.isViewed,
          isSecret: isSecret ?? this.isSecret);
}

extension MessageVoiceNoteExtensions on MessageVoiceNote {
  MessageVoiceNote copy(
          {VoiceNote? voiceNote, FormattedText? caption, bool? isListened}) =>
      MessageVoiceNote(
          voiceNote: voiceNote ?? this.voiceNote,
          caption: caption ?? this.caption,
          isListened: isListened ?? this.isListened);
}

extension MessageLocationExtensions on MessageLocation {
  MessageLocation copy(
          {Location? location,
          int? livePeriod,
          int? expiresIn,
          int? heading,
          int? proximityAlertRadius}) =>
      MessageLocation(
          location: location ?? this.location,
          livePeriod: livePeriod ?? this.livePeriod,
          expiresIn: expiresIn ?? this.expiresIn,
          heading: heading ?? this.heading,
          proximityAlertRadius:
              proximityAlertRadius ?? this.proximityAlertRadius);
}

extension MessageVenueExtensions on MessageVenue {
  MessageVenue copy({Venue? venue}) => MessageVenue(venue: venue ?? this.venue);
}

extension MessageContactExtensions on MessageContact {
  MessageContact copy({Contact? contact}) =>
      MessageContact(contact: contact ?? this.contact);
}

extension MessageDiceExtensions on MessageDice {
  MessageDice copy(
          {DiceStickers? initialState,
          DiceStickers? finalState,
          String? emoji,
          int? value,
          int? successAnimationFrameNumber}) =>
      MessageDice(
          initialState: initialState ?? this.initialState,
          finalState: finalState ?? this.finalState,
          emoji: emoji ?? this.emoji,
          value: value ?? this.value,
          successAnimationFrameNumber:
              successAnimationFrameNumber ?? this.successAnimationFrameNumber);
}

extension MessageGameExtensions on MessageGame {
  MessageGame copy({Game? game}) => MessageGame(game: game ?? this.game);
}

extension MessagePollExtensions on MessagePoll {
  MessagePoll copy({Poll? poll}) => MessagePoll(poll: poll ?? this.poll);
}

extension MessageInvoiceExtensions on MessageInvoice {
  MessageInvoice copy(
          {String? title,
          String? description,
          Photo? photo,
          String? currency,
          int? totalAmount,
          String? startParameter,
          bool? isTest,
          bool? needShippingAddress,
          int? receiptMessageId}) =>
      MessageInvoice(
          title: title ?? this.title,
          description: description ?? this.description,
          photo: photo ?? this.photo,
          currency: currency ?? this.currency,
          totalAmount: totalAmount ?? this.totalAmount,
          startParameter: startParameter ?? this.startParameter,
          isTest: isTest ?? this.isTest,
          needShippingAddress: needShippingAddress ?? this.needShippingAddress,
          receiptMessageId: receiptMessageId ?? this.receiptMessageId);
}

extension MessageCallExtensions on MessageCall {
  MessageCall copy(
          {bool? isVideo, CallDiscardReason? discardReason, int? duration}) =>
      MessageCall(
          isVideo: isVideo ?? this.isVideo,
          discardReason: discardReason ?? this.discardReason,
          duration: duration ?? this.duration);
}

extension MessageVoiceChatStartedExtensions on MessageVoiceChatStarted {
  MessageVoiceChatStarted copy({int? groupCallId}) =>
      MessageVoiceChatStarted(groupCallId: groupCallId ?? this.groupCallId);
}

extension MessageVoiceChatEndedExtensions on MessageVoiceChatEnded {
  MessageVoiceChatEnded copy({int? duration}) =>
      MessageVoiceChatEnded(duration: duration ?? this.duration);
}

extension MessageInviteVoiceChatParticipantsExtensions
    on MessageInviteVoiceChatParticipants {
  MessageInviteVoiceChatParticipants copy(
          {int? groupCallId, List<int>? userIds}) =>
      MessageInviteVoiceChatParticipants(
          groupCallId: groupCallId ?? this.groupCallId,
          userIds: userIds ?? this.userIds);
}

extension MessageBasicGroupChatCreateExtensions on MessageBasicGroupChatCreate {
  MessageBasicGroupChatCreate copy({String? title, List<int>? memberUserIds}) =>
      MessageBasicGroupChatCreate(
          title: title ?? this.title,
          memberUserIds: memberUserIds ?? this.memberUserIds);
}

extension MessageSupergroupChatCreateExtensions on MessageSupergroupChatCreate {
  MessageSupergroupChatCreate copy({String? title}) =>
      MessageSupergroupChatCreate(title: title ?? this.title);
}

extension MessageChatChangeTitleExtensions on MessageChatChangeTitle {
  MessageChatChangeTitle copy({String? title}) =>
      MessageChatChangeTitle(title: title ?? this.title);
}

extension MessageChatChangePhotoExtensions on MessageChatChangePhoto {
  MessageChatChangePhoto copy({ChatPhoto? photo}) =>
      MessageChatChangePhoto(photo: photo ?? this.photo);
}

extension MessageChatAddMembersExtensions on MessageChatAddMembers {
  MessageChatAddMembers copy({List<int>? memberUserIds}) =>
      MessageChatAddMembers(memberUserIds: memberUserIds ?? this.memberUserIds);
}

extension MessageChatDeleteMemberExtensions on MessageChatDeleteMember {
  MessageChatDeleteMember copy({int? userId}) =>
      MessageChatDeleteMember(userId: userId ?? this.userId);
}

extension MessageChatUpgradeToExtensions on MessageChatUpgradeTo {
  MessageChatUpgradeTo copy({int? supergroupId}) =>
      MessageChatUpgradeTo(supergroupId: supergroupId ?? this.supergroupId);
}

extension MessageChatUpgradeFromExtensions on MessageChatUpgradeFrom {
  MessageChatUpgradeFrom copy({String? title, int? basicGroupId}) =>
      MessageChatUpgradeFrom(
          title: title ?? this.title,
          basicGroupId: basicGroupId ?? this.basicGroupId);
}

extension MessagePinMessageExtensions on MessagePinMessage {
  MessagePinMessage copy({int? messageId}) =>
      MessagePinMessage(messageId: messageId ?? this.messageId);
}

extension MessageChatSetTtlExtensions on MessageChatSetTtl {
  MessageChatSetTtl copy({int? ttl}) => MessageChatSetTtl(ttl: ttl ?? this.ttl);
}

extension MessageCustomServiceActionExtensions on MessageCustomServiceAction {
  MessageCustomServiceAction copy({String? text}) =>
      MessageCustomServiceAction(text: text ?? this.text);
}

extension MessageGameScoreExtensions on MessageGameScore {
  MessageGameScore copy({int? gameMessageId, int? gameId, int? score}) =>
      MessageGameScore(
          gameMessageId: gameMessageId ?? this.gameMessageId,
          gameId: gameId ?? this.gameId,
          score: score ?? this.score);
}

extension MessagePaymentSuccessfulExtensions on MessagePaymentSuccessful {
  MessagePaymentSuccessful copy(
          {int? invoiceMessageId, String? currency, int? totalAmount}) =>
      MessagePaymentSuccessful(
          invoiceMessageId: invoiceMessageId ?? this.invoiceMessageId,
          currency: currency ?? this.currency,
          totalAmount: totalAmount ?? this.totalAmount);
}

extension MessagePaymentSuccessfulBotExtensions on MessagePaymentSuccessfulBot {
  MessagePaymentSuccessfulBot copy(
          {int? invoiceMessageId,
          String? currency,
          int? totalAmount,
          String? invoicePayload,
          String? shippingOptionId,
          OrderInfo? orderInfo,
          String? telegramPaymentChargeId,
          String? providerPaymentChargeId}) =>
      MessagePaymentSuccessfulBot(
          invoiceMessageId: invoiceMessageId ?? this.invoiceMessageId,
          currency: currency ?? this.currency,
          totalAmount: totalAmount ?? this.totalAmount,
          invoicePayload: invoicePayload ?? this.invoicePayload,
          shippingOptionId: shippingOptionId ?? this.shippingOptionId,
          orderInfo: orderInfo ?? this.orderInfo,
          telegramPaymentChargeId:
              telegramPaymentChargeId ?? this.telegramPaymentChargeId,
          providerPaymentChargeId:
              providerPaymentChargeId ?? this.providerPaymentChargeId);
}

extension MessageWebsiteConnectedExtensions on MessageWebsiteConnected {
  MessageWebsiteConnected copy({String? domainName}) =>
      MessageWebsiteConnected(domainName: domainName ?? this.domainName);
}

extension MessagePassportDataSentExtensions on MessagePassportDataSent {
  MessagePassportDataSent copy({List<PassportElementType>? types}) =>
      MessagePassportDataSent(types: types ?? this.types);
}

extension MessagePassportDataReceivedExtensions on MessagePassportDataReceived {
  MessagePassportDataReceived copy(
          {List<EncryptedPassportElement>? elements,
          EncryptedCredentials? credentials}) =>
      MessagePassportDataReceived(
          elements: elements ?? this.elements,
          credentials: credentials ?? this.credentials);
}

extension MessageProximityAlertTriggeredExtensions
    on MessageProximityAlertTriggered {
  MessageProximityAlertTriggered copy(
          {MessageSender? traveler, MessageSender? watcher, int? distance}) =>
      MessageProximityAlertTriggered(
          traveler: traveler ?? this.traveler,
          watcher: watcher ?? this.watcher,
          distance: distance ?? this.distance);
}

extension TextEntityTypeExtensions on TextEntityType {
  TResult map<TResult extends Object?>(
      {required TResult Function(TextEntityTypeMention value) mention,
      required TResult Function(TextEntityTypeHashtag value) hashtag,
      required TResult Function(TextEntityTypeCashtag value) cashtag,
      required TResult Function(TextEntityTypeBotCommand value) botCommand,
      required TResult Function(TextEntityTypeUrl value) url,
      required TResult Function(TextEntityTypeEmailAddress value) emailAddress,
      required TResult Function(TextEntityTypePhoneNumber value) phoneNumber,
      required TResult Function(TextEntityTypeBankCardNumber value)
          bankCardNumber,
      required TResult Function(TextEntityTypeBold value) bold,
      required TResult Function(TextEntityTypeItalic value) italic,
      required TResult Function(TextEntityTypeUnderline value) underline,
      required TResult Function(TextEntityTypeStrikethrough value)
          strikethrough,
      required TResult Function(TextEntityTypeCode value) code,
      required TResult Function(TextEntityTypePre value) pre,
      required TResult Function(TextEntityTypePreCode value) preCode,
      required TResult Function(TextEntityTypeTextUrl value) textUrl,
      required TResult Function(TextEntityTypeMentionName value) mentionName}) {
    switch (this.getConstructor()) {
      case TextEntityTypeMention.CONSTRUCTOR:
        return mention.call(this as TextEntityTypeMention);
      case TextEntityTypeHashtag.CONSTRUCTOR:
        return hashtag.call(this as TextEntityTypeHashtag);
      case TextEntityTypeCashtag.CONSTRUCTOR:
        return cashtag.call(this as TextEntityTypeCashtag);
      case TextEntityTypeBotCommand.CONSTRUCTOR:
        return botCommand.call(this as TextEntityTypeBotCommand);
      case TextEntityTypeUrl.CONSTRUCTOR:
        return url.call(this as TextEntityTypeUrl);
      case TextEntityTypeEmailAddress.CONSTRUCTOR:
        return emailAddress.call(this as TextEntityTypeEmailAddress);
      case TextEntityTypePhoneNumber.CONSTRUCTOR:
        return phoneNumber.call(this as TextEntityTypePhoneNumber);
      case TextEntityTypeBankCardNumber.CONSTRUCTOR:
        return bankCardNumber.call(this as TextEntityTypeBankCardNumber);
      case TextEntityTypeBold.CONSTRUCTOR:
        return bold.call(this as TextEntityTypeBold);
      case TextEntityTypeItalic.CONSTRUCTOR:
        return italic.call(this as TextEntityTypeItalic);
      case TextEntityTypeUnderline.CONSTRUCTOR:
        return underline.call(this as TextEntityTypeUnderline);
      case TextEntityTypeStrikethrough.CONSTRUCTOR:
        return strikethrough.call(this as TextEntityTypeStrikethrough);
      case TextEntityTypeCode.CONSTRUCTOR:
        return code.call(this as TextEntityTypeCode);
      case TextEntityTypePre.CONSTRUCTOR:
        return pre.call(this as TextEntityTypePre);
      case TextEntityTypePreCode.CONSTRUCTOR:
        return preCode.call(this as TextEntityTypePreCode);
      case TextEntityTypeTextUrl.CONSTRUCTOR:
        return textUrl.call(this as TextEntityTypeTextUrl);
      case TextEntityTypeMentionName.CONSTRUCTOR:
        return mentionName.call(this as TextEntityTypeMentionName);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension TextEntityTypePreCodeExtensions on TextEntityTypePreCode {
  TextEntityTypePreCode copy({String? language}) =>
      TextEntityTypePreCode(language: language ?? this.language);
}

extension TextEntityTypeTextUrlExtensions on TextEntityTypeTextUrl {
  TextEntityTypeTextUrl copy({String? url}) =>
      TextEntityTypeTextUrl(url: url ?? this.url);
}

extension TextEntityTypeMentionNameExtensions on TextEntityTypeMentionName {
  TextEntityTypeMentionName copy({int? userId}) =>
      TextEntityTypeMentionName(userId: userId ?? this.userId);
}

extension InputThumbnailExtensions on InputThumbnail {
  InputThumbnail copy({InputFile? thumbnail, int? width, int? height}) =>
      InputThumbnail(
          thumbnail: thumbnail ?? this.thumbnail,
          width: width ?? this.width,
          height: height ?? this.height);
}

extension MessageSchedulingStateExtensions on MessageSchedulingState {
  TResult map<TResult extends Object?>(
      {required TResult Function(MessageSchedulingStateSendAtDate value)
          sendAtDate,
      required TResult Function(MessageSchedulingStateSendWhenOnline value)
          sendWhenOnline}) {
    switch (this.getConstructor()) {
      case MessageSchedulingStateSendAtDate.CONSTRUCTOR:
        return sendAtDate.call(this as MessageSchedulingStateSendAtDate);
      case MessageSchedulingStateSendWhenOnline.CONSTRUCTOR:
        return sendWhenOnline
            .call(this as MessageSchedulingStateSendWhenOnline);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension MessageSchedulingStateSendAtDateExtensions
    on MessageSchedulingStateSendAtDate {
  MessageSchedulingStateSendAtDate copy({int? sendDate}) =>
      MessageSchedulingStateSendAtDate(sendDate: sendDate ?? this.sendDate);
}

extension MessageSendOptionsExtensions on MessageSendOptions {
  MessageSendOptions copy(
          {bool? disableNotification,
          bool? fromBackground,
          MessageSchedulingState? schedulingState}) =>
      MessageSendOptions(
          disableNotification: disableNotification ?? this.disableNotification,
          fromBackground: fromBackground ?? this.fromBackground,
          schedulingState: schedulingState ?? this.schedulingState);
}

extension MessageCopyOptionsExtensions on MessageCopyOptions {
  MessageCopyOptions copy(
          {bool? sendCopy, bool? replaceCaption, FormattedText? newCaption}) =>
      MessageCopyOptions(
          sendCopy: sendCopy ?? this.sendCopy,
          replaceCaption: replaceCaption ?? this.replaceCaption,
          newCaption: newCaption ?? this.newCaption);
}

extension InputMessageContentExtensions on InputMessageContent {
  TResult map<TResult extends Object?>(
      {required TResult Function(InputMessageText value) inputMessageText,
      required TResult Function(InputMessageAnimation value)
          inputMessageAnimation,
      required TResult Function(InputMessageAudio value) inputMessageAudio,
      required TResult Function(InputMessageDocument value)
          inputMessageDocument,
      required TResult Function(InputMessagePhoto value) inputMessagePhoto,
      required TResult Function(InputMessageSticker value) inputMessageSticker,
      required TResult Function(InputMessageVideo value) inputMessageVideo,
      required TResult Function(InputMessageVideoNote value)
          inputMessageVideoNote,
      required TResult Function(InputMessageVoiceNote value)
          inputMessageVoiceNote,
      required TResult Function(InputMessageLocation value)
          inputMessageLocation,
      required TResult Function(InputMessageVenue value) inputMessageVenue,
      required TResult Function(InputMessageContact value) inputMessageContact,
      required TResult Function(InputMessageDice value) inputMessageDice,
      required TResult Function(InputMessageGame value) inputMessageGame,
      required TResult Function(InputMessageInvoice value) inputMessageInvoice,
      required TResult Function(InputMessagePoll value) inputMessagePoll,
      required TResult Function(InputMessageForwarded value)
          inputMessageForwarded}) {
    switch (this.getConstructor()) {
      case InputMessageText.CONSTRUCTOR:
        return inputMessageText.call(this as InputMessageText);
      case InputMessageAnimation.CONSTRUCTOR:
        return inputMessageAnimation.call(this as InputMessageAnimation);
      case InputMessageAudio.CONSTRUCTOR:
        return inputMessageAudio.call(this as InputMessageAudio);
      case InputMessageDocument.CONSTRUCTOR:
        return inputMessageDocument.call(this as InputMessageDocument);
      case InputMessagePhoto.CONSTRUCTOR:
        return inputMessagePhoto.call(this as InputMessagePhoto);
      case InputMessageSticker.CONSTRUCTOR:
        return inputMessageSticker.call(this as InputMessageSticker);
      case InputMessageVideo.CONSTRUCTOR:
        return inputMessageVideo.call(this as InputMessageVideo);
      case InputMessageVideoNote.CONSTRUCTOR:
        return inputMessageVideoNote.call(this as InputMessageVideoNote);
      case InputMessageVoiceNote.CONSTRUCTOR:
        return inputMessageVoiceNote.call(this as InputMessageVoiceNote);
      case InputMessageLocation.CONSTRUCTOR:
        return inputMessageLocation.call(this as InputMessageLocation);
      case InputMessageVenue.CONSTRUCTOR:
        return inputMessageVenue.call(this as InputMessageVenue);
      case InputMessageContact.CONSTRUCTOR:
        return inputMessageContact.call(this as InputMessageContact);
      case InputMessageDice.CONSTRUCTOR:
        return inputMessageDice.call(this as InputMessageDice);
      case InputMessageGame.CONSTRUCTOR:
        return inputMessageGame.call(this as InputMessageGame);
      case InputMessageInvoice.CONSTRUCTOR:
        return inputMessageInvoice.call(this as InputMessageInvoice);
      case InputMessagePoll.CONSTRUCTOR:
        return inputMessagePoll.call(this as InputMessagePoll);
      case InputMessageForwarded.CONSTRUCTOR:
        return inputMessageForwarded.call(this as InputMessageForwarded);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension InputMessageTextExtensions on InputMessageText {
  InputMessageText copy(
          {FormattedText? text,
          bool? disableWebPagePreview,
          bool? clearDraft}) =>
      InputMessageText(
          text: text ?? this.text,
          disableWebPagePreview:
              disableWebPagePreview ?? this.disableWebPagePreview,
          clearDraft: clearDraft ?? this.clearDraft);
}

extension InputMessageAnimationExtensions on InputMessageAnimation {
  InputMessageAnimation copy(
          {InputFile? animation,
          InputThumbnail? thumbnail,
          List<int>? addedStickerFileIds,
          int? duration,
          int? width,
          int? height,
          FormattedText? caption}) =>
      InputMessageAnimation(
          animation: animation ?? this.animation,
          thumbnail: thumbnail ?? this.thumbnail,
          addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
          duration: duration ?? this.duration,
          width: width ?? this.width,
          height: height ?? this.height,
          caption: caption ?? this.caption);
}

extension InputMessageAudioExtensions on InputMessageAudio {
  InputMessageAudio copy(
          {InputFile? audio,
          InputThumbnail? albumCoverThumbnail,
          int? duration,
          String? title,
          String? performer,
          FormattedText? caption}) =>
      InputMessageAudio(
          audio: audio ?? this.audio,
          albumCoverThumbnail: albumCoverThumbnail ?? this.albumCoverThumbnail,
          duration: duration ?? this.duration,
          title: title ?? this.title,
          performer: performer ?? this.performer,
          caption: caption ?? this.caption);
}

extension InputMessageDocumentExtensions on InputMessageDocument {
  InputMessageDocument copy(
          {InputFile? document,
          InputThumbnail? thumbnail,
          bool? disableContentTypeDetection,
          FormattedText? caption}) =>
      InputMessageDocument(
          document: document ?? this.document,
          thumbnail: thumbnail ?? this.thumbnail,
          disableContentTypeDetection:
              disableContentTypeDetection ?? this.disableContentTypeDetection,
          caption: caption ?? this.caption);
}

extension InputMessagePhotoExtensions on InputMessagePhoto {
  InputMessagePhoto copy(
          {InputFile? photo,
          InputThumbnail? thumbnail,
          List<int>? addedStickerFileIds,
          int? width,
          int? height,
          FormattedText? caption,
          int? ttl}) =>
      InputMessagePhoto(
          photo: photo ?? this.photo,
          thumbnail: thumbnail ?? this.thumbnail,
          addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
          width: width ?? this.width,
          height: height ?? this.height,
          caption: caption ?? this.caption,
          ttl: ttl ?? this.ttl);
}

extension InputMessageStickerExtensions on InputMessageSticker {
  InputMessageSticker copy(
          {InputFile? sticker,
          InputThumbnail? thumbnail,
          int? width,
          int? height,
          String? emoji}) =>
      InputMessageSticker(
          sticker: sticker ?? this.sticker,
          thumbnail: thumbnail ?? this.thumbnail,
          width: width ?? this.width,
          height: height ?? this.height,
          emoji: emoji ?? this.emoji);
}

extension InputMessageVideoExtensions on InputMessageVideo {
  InputMessageVideo copy(
          {InputFile? video,
          InputThumbnail? thumbnail,
          List<int>? addedStickerFileIds,
          int? duration,
          int? width,
          int? height,
          bool? supportsStreaming,
          FormattedText? caption,
          int? ttl}) =>
      InputMessageVideo(
          video: video ?? this.video,
          thumbnail: thumbnail ?? this.thumbnail,
          addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
          duration: duration ?? this.duration,
          width: width ?? this.width,
          height: height ?? this.height,
          supportsStreaming: supportsStreaming ?? this.supportsStreaming,
          caption: caption ?? this.caption,
          ttl: ttl ?? this.ttl);
}

extension InputMessageVideoNoteExtensions on InputMessageVideoNote {
  InputMessageVideoNote copy(
          {InputFile? videoNote,
          InputThumbnail? thumbnail,
          int? duration,
          int? length}) =>
      InputMessageVideoNote(
          videoNote: videoNote ?? this.videoNote,
          thumbnail: thumbnail ?? this.thumbnail,
          duration: duration ?? this.duration,
          length: length ?? this.length);
}

extension InputMessageVoiceNoteExtensions on InputMessageVoiceNote {
  InputMessageVoiceNote copy(
          {InputFile? voiceNote,
          int? duration,
          String? waveform,
          FormattedText? caption}) =>
      InputMessageVoiceNote(
          voiceNote: voiceNote ?? this.voiceNote,
          duration: duration ?? this.duration,
          waveform: waveform ?? this.waveform,
          caption: caption ?? this.caption);
}

extension InputMessageLocationExtensions on InputMessageLocation {
  InputMessageLocation copy(
          {Location? location,
          int? livePeriod,
          int? heading,
          int? proximityAlertRadius}) =>
      InputMessageLocation(
          location: location ?? this.location,
          livePeriod: livePeriod ?? this.livePeriod,
          heading: heading ?? this.heading,
          proximityAlertRadius:
              proximityAlertRadius ?? this.proximityAlertRadius);
}

extension InputMessageVenueExtensions on InputMessageVenue {
  InputMessageVenue copy({Venue? venue}) =>
      InputMessageVenue(venue: venue ?? this.venue);
}

extension InputMessageContactExtensions on InputMessageContact {
  InputMessageContact copy({Contact? contact}) =>
      InputMessageContact(contact: contact ?? this.contact);
}

extension InputMessageDiceExtensions on InputMessageDice {
  InputMessageDice copy({String? emoji, bool? clearDraft}) => InputMessageDice(
      emoji: emoji ?? this.emoji, clearDraft: clearDraft ?? this.clearDraft);
}

extension InputMessageGameExtensions on InputMessageGame {
  InputMessageGame copy({int? botUserId, String? gameShortName}) =>
      InputMessageGame(
          botUserId: botUserId ?? this.botUserId,
          gameShortName: gameShortName ?? this.gameShortName);
}

extension InputMessageInvoiceExtensions on InputMessageInvoice {
  InputMessageInvoice copy(
          {Invoice? invoice,
          String? title,
          String? description,
          String? photoUrl,
          int? photoSize,
          int? photoWidth,
          int? photoHeight,
          String? payload,
          String? providerToken,
          String? providerData,
          String? startParameter}) =>
      InputMessageInvoice(
          invoice: invoice ?? this.invoice,
          title: title ?? this.title,
          description: description ?? this.description,
          photoUrl: photoUrl ?? this.photoUrl,
          photoSize: photoSize ?? this.photoSize,
          photoWidth: photoWidth ?? this.photoWidth,
          photoHeight: photoHeight ?? this.photoHeight,
          payload: payload ?? this.payload,
          providerToken: providerToken ?? this.providerToken,
          providerData: providerData ?? this.providerData,
          startParameter: startParameter ?? this.startParameter);
}

extension InputMessagePollExtensions on InputMessagePoll {
  InputMessagePoll copy(
          {String? question,
          List<String>? options,
          bool? isAnonymous,
          PollType? type,
          int? openPeriod,
          int? closeDate,
          bool? isClosed}) =>
      InputMessagePoll(
          question: question ?? this.question,
          options: options ?? this.options,
          isAnonymous: isAnonymous ?? this.isAnonymous,
          type: type ?? this.type,
          openPeriod: openPeriod ?? this.openPeriod,
          closeDate: closeDate ?? this.closeDate,
          isClosed: isClosed ?? this.isClosed);
}

extension InputMessageForwardedExtensions on InputMessageForwarded {
  InputMessageForwarded copy(
          {int? fromChatId,
          int? messageId,
          bool? inGameShare,
          MessageCopyOptions? copyOptions}) =>
      InputMessageForwarded(
          fromChatId: fromChatId ?? this.fromChatId,
          messageId: messageId ?? this.messageId,
          inGameShare: inGameShare ?? this.inGameShare,
          copyOptions: copyOptions ?? this.copyOptions);
}

extension SearchMessagesFilterExtensions on SearchMessagesFilter {
  TResult map<TResult extends Object?>(
      {required TResult Function(SearchMessagesFilterEmpty value) empty,
      required TResult Function(SearchMessagesFilterAnimation value) animation,
      required TResult Function(SearchMessagesFilterAudio value) audio,
      required TResult Function(SearchMessagesFilterDocument value) document,
      required TResult Function(SearchMessagesFilterPhoto value) photo,
      required TResult Function(SearchMessagesFilterVideo value) video,
      required TResult Function(SearchMessagesFilterVoiceNote value) voiceNote,
      required TResult Function(SearchMessagesFilterPhotoAndVideo value)
          photoAndVideo,
      required TResult Function(SearchMessagesFilterUrl value) url,
      required TResult Function(SearchMessagesFilterChatPhoto value) chatPhoto,
      required TResult Function(SearchMessagesFilterCall value) call,
      required TResult Function(SearchMessagesFilterMissedCall value)
          missedCall,
      required TResult Function(SearchMessagesFilterVideoNote value) videoNote,
      required TResult Function(SearchMessagesFilterVoiceAndVideoNote value)
          voiceAndVideoNote,
      required TResult Function(SearchMessagesFilterMention value) mention,
      required TResult Function(SearchMessagesFilterUnreadMention value)
          unreadMention,
      required TResult Function(SearchMessagesFilterFailedToSend value)
          failedToSend,
      required TResult Function(SearchMessagesFilterPinned value) pinned}) {
    switch (this.getConstructor()) {
      case SearchMessagesFilterEmpty.CONSTRUCTOR:
        return empty.call(this as SearchMessagesFilterEmpty);
      case SearchMessagesFilterAnimation.CONSTRUCTOR:
        return animation.call(this as SearchMessagesFilterAnimation);
      case SearchMessagesFilterAudio.CONSTRUCTOR:
        return audio.call(this as SearchMessagesFilterAudio);
      case SearchMessagesFilterDocument.CONSTRUCTOR:
        return document.call(this as SearchMessagesFilterDocument);
      case SearchMessagesFilterPhoto.CONSTRUCTOR:
        return photo.call(this as SearchMessagesFilterPhoto);
      case SearchMessagesFilterVideo.CONSTRUCTOR:
        return video.call(this as SearchMessagesFilterVideo);
      case SearchMessagesFilterVoiceNote.CONSTRUCTOR:
        return voiceNote.call(this as SearchMessagesFilterVoiceNote);
      case SearchMessagesFilterPhotoAndVideo.CONSTRUCTOR:
        return photoAndVideo.call(this as SearchMessagesFilterPhotoAndVideo);
      case SearchMessagesFilterUrl.CONSTRUCTOR:
        return url.call(this as SearchMessagesFilterUrl);
      case SearchMessagesFilterChatPhoto.CONSTRUCTOR:
        return chatPhoto.call(this as SearchMessagesFilterChatPhoto);
      case SearchMessagesFilterCall.CONSTRUCTOR:
        return call.call(this as SearchMessagesFilterCall);
      case SearchMessagesFilterMissedCall.CONSTRUCTOR:
        return missedCall.call(this as SearchMessagesFilterMissedCall);
      case SearchMessagesFilterVideoNote.CONSTRUCTOR:
        return videoNote.call(this as SearchMessagesFilterVideoNote);
      case SearchMessagesFilterVoiceAndVideoNote.CONSTRUCTOR:
        return voiceAndVideoNote
            .call(this as SearchMessagesFilterVoiceAndVideoNote);
      case SearchMessagesFilterMention.CONSTRUCTOR:
        return mention.call(this as SearchMessagesFilterMention);
      case SearchMessagesFilterUnreadMention.CONSTRUCTOR:
        return unreadMention.call(this as SearchMessagesFilterUnreadMention);
      case SearchMessagesFilterFailedToSend.CONSTRUCTOR:
        return failedToSend.call(this as SearchMessagesFilterFailedToSend);
      case SearchMessagesFilterPinned.CONSTRUCTOR:
        return pinned.call(this as SearchMessagesFilterPinned);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension ChatActionExtensions on ChatAction {
  TResult map<TResult extends Object?>(
      {required TResult Function(ChatActionTyping value) typing,
      required TResult Function(ChatActionRecordingVideo value) recordingVideo,
      required TResult Function(ChatActionUploadingVideo value) uploadingVideo,
      required TResult Function(ChatActionRecordingVoiceNote value)
          recordingVoiceNote,
      required TResult Function(ChatActionUploadingVoiceNote value)
          uploadingVoiceNote,
      required TResult Function(ChatActionUploadingPhoto value) uploadingPhoto,
      required TResult Function(ChatActionUploadingDocument value)
          uploadingDocument,
      required TResult Function(ChatActionChoosingLocation value)
          choosingLocation,
      required TResult Function(ChatActionChoosingContact value)
          choosingContact,
      required TResult Function(ChatActionStartPlayingGame value)
          startPlayingGame,
      required TResult Function(ChatActionRecordingVideoNote value)
          recordingVideoNote,
      required TResult Function(ChatActionUploadingVideoNote value)
          uploadingVideoNote,
      required TResult Function(ChatActionCancel value) cancel}) {
    switch (this.getConstructor()) {
      case ChatActionTyping.CONSTRUCTOR:
        return typing.call(this as ChatActionTyping);
      case ChatActionRecordingVideo.CONSTRUCTOR:
        return recordingVideo.call(this as ChatActionRecordingVideo);
      case ChatActionUploadingVideo.CONSTRUCTOR:
        return uploadingVideo.call(this as ChatActionUploadingVideo);
      case ChatActionRecordingVoiceNote.CONSTRUCTOR:
        return recordingVoiceNote.call(this as ChatActionRecordingVoiceNote);
      case ChatActionUploadingVoiceNote.CONSTRUCTOR:
        return uploadingVoiceNote.call(this as ChatActionUploadingVoiceNote);
      case ChatActionUploadingPhoto.CONSTRUCTOR:
        return uploadingPhoto.call(this as ChatActionUploadingPhoto);
      case ChatActionUploadingDocument.CONSTRUCTOR:
        return uploadingDocument.call(this as ChatActionUploadingDocument);
      case ChatActionChoosingLocation.CONSTRUCTOR:
        return choosingLocation.call(this as ChatActionChoosingLocation);
      case ChatActionChoosingContact.CONSTRUCTOR:
        return choosingContact.call(this as ChatActionChoosingContact);
      case ChatActionStartPlayingGame.CONSTRUCTOR:
        return startPlayingGame.call(this as ChatActionStartPlayingGame);
      case ChatActionRecordingVideoNote.CONSTRUCTOR:
        return recordingVideoNote.call(this as ChatActionRecordingVideoNote);
      case ChatActionUploadingVideoNote.CONSTRUCTOR:
        return uploadingVideoNote.call(this as ChatActionUploadingVideoNote);
      case ChatActionCancel.CONSTRUCTOR:
        return cancel.call(this as ChatActionCancel);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension ChatActionUploadingVideoExtensions on ChatActionUploadingVideo {
  ChatActionUploadingVideo copy({int? progress}) =>
      ChatActionUploadingVideo(progress: progress ?? this.progress);
}

extension ChatActionUploadingVoiceNoteExtensions
    on ChatActionUploadingVoiceNote {
  ChatActionUploadingVoiceNote copy({int? progress}) =>
      ChatActionUploadingVoiceNote(progress: progress ?? this.progress);
}

extension ChatActionUploadingPhotoExtensions on ChatActionUploadingPhoto {
  ChatActionUploadingPhoto copy({int? progress}) =>
      ChatActionUploadingPhoto(progress: progress ?? this.progress);
}

extension ChatActionUploadingDocumentExtensions on ChatActionUploadingDocument {
  ChatActionUploadingDocument copy({int? progress}) =>
      ChatActionUploadingDocument(progress: progress ?? this.progress);
}

extension ChatActionUploadingVideoNoteExtensions
    on ChatActionUploadingVideoNote {
  ChatActionUploadingVideoNote copy({int? progress}) =>
      ChatActionUploadingVideoNote(progress: progress ?? this.progress);
}

extension UserStatusExtensions on UserStatus {
  TResult map<TResult extends Object?>(
      {required TResult Function(UserStatusEmpty value) empty,
      required TResult Function(UserStatusOnline value) online,
      required TResult Function(UserStatusOffline value) offline,
      required TResult Function(UserStatusRecently value) recently,
      required TResult Function(UserStatusLastWeek value) lastWeek,
      required TResult Function(UserStatusLastMonth value) lastMonth}) {
    switch (this.getConstructor()) {
      case UserStatusEmpty.CONSTRUCTOR:
        return empty.call(this as UserStatusEmpty);
      case UserStatusOnline.CONSTRUCTOR:
        return online.call(this as UserStatusOnline);
      case UserStatusOffline.CONSTRUCTOR:
        return offline.call(this as UserStatusOffline);
      case UserStatusRecently.CONSTRUCTOR:
        return recently.call(this as UserStatusRecently);
      case UserStatusLastWeek.CONSTRUCTOR:
        return lastWeek.call(this as UserStatusLastWeek);
      case UserStatusLastMonth.CONSTRUCTOR:
        return lastMonth.call(this as UserStatusLastMonth);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension UserStatusOnlineExtensions on UserStatusOnline {
  UserStatusOnline copy({int? expires}) =>
      UserStatusOnline(expires: expires ?? this.expires);
}

extension UserStatusOfflineExtensions on UserStatusOffline {
  UserStatusOffline copy({int? wasOnline}) =>
      UserStatusOffline(wasOnline: wasOnline ?? this.wasOnline);
}

extension StickersExtensions on Stickers {
  Stickers copy({List<Sticker>? stickers}) =>
      Stickers(stickers: stickers ?? this.stickers);
}

extension EmojisExtensions on Emojis {
  Emojis copy({List<String>? emojis}) => Emojis(emojis: emojis ?? this.emojis);
}

extension StickerSetExtensions on StickerSet {
  StickerSet copy(
          {int? id,
          String? title,
          String? name,
          Thumbnail? thumbnail,
          List<ClosedVectorPath>? thumbnailOutline,
          bool? isInstalled,
          bool? isArchived,
          bool? isOfficial,
          bool? isAnimated,
          bool? isMasks,
          bool? isViewed,
          List<Sticker>? stickers,
          List<Emojis>? emojis}) =>
      StickerSet(
          id: id ?? this.id,
          title: title ?? this.title,
          name: name ?? this.name,
          thumbnail: thumbnail ?? this.thumbnail,
          thumbnailOutline: thumbnailOutline ?? this.thumbnailOutline,
          isInstalled: isInstalled ?? this.isInstalled,
          isArchived: isArchived ?? this.isArchived,
          isOfficial: isOfficial ?? this.isOfficial,
          isAnimated: isAnimated ?? this.isAnimated,
          isMasks: isMasks ?? this.isMasks,
          isViewed: isViewed ?? this.isViewed,
          stickers: stickers ?? this.stickers,
          emojis: emojis ?? this.emojis);
}

extension StickerSetInfoExtensions on StickerSetInfo {
  StickerSetInfo copy(
          {int? id,
          String? title,
          String? name,
          Thumbnail? thumbnail,
          List<ClosedVectorPath>? thumbnailOutline,
          bool? isInstalled,
          bool? isArchived,
          bool? isOfficial,
          bool? isAnimated,
          bool? isMasks,
          bool? isViewed,
          int? size,
          List<Sticker>? covers}) =>
      StickerSetInfo(
          id: id ?? this.id,
          title: title ?? this.title,
          name: name ?? this.name,
          thumbnail: thumbnail ?? this.thumbnail,
          thumbnailOutline: thumbnailOutline ?? this.thumbnailOutline,
          isInstalled: isInstalled ?? this.isInstalled,
          isArchived: isArchived ?? this.isArchived,
          isOfficial: isOfficial ?? this.isOfficial,
          isAnimated: isAnimated ?? this.isAnimated,
          isMasks: isMasks ?? this.isMasks,
          isViewed: isViewed ?? this.isViewed,
          size: size ?? this.size,
          covers: covers ?? this.covers);
}

extension StickerSetsExtensions on StickerSets {
  StickerSets copy({int? totalCount, List<StickerSetInfo>? sets}) =>
      StickerSets(
          totalCount: totalCount ?? this.totalCount, sets: sets ?? this.sets);
}

extension CallDiscardReasonExtensions on CallDiscardReason {
  TResult map<TResult extends Object?>(
      {required TResult Function(CallDiscardReasonEmpty value) empty,
      required TResult Function(CallDiscardReasonMissed value) missed,
      required TResult Function(CallDiscardReasonDeclined value) declined,
      required TResult Function(CallDiscardReasonDisconnected value)
          disconnected,
      required TResult Function(CallDiscardReasonHungUp value) hungUp}) {
    switch (this.getConstructor()) {
      case CallDiscardReasonEmpty.CONSTRUCTOR:
        return empty.call(this as CallDiscardReasonEmpty);
      case CallDiscardReasonMissed.CONSTRUCTOR:
        return missed.call(this as CallDiscardReasonMissed);
      case CallDiscardReasonDeclined.CONSTRUCTOR:
        return declined.call(this as CallDiscardReasonDeclined);
      case CallDiscardReasonDisconnected.CONSTRUCTOR:
        return disconnected.call(this as CallDiscardReasonDisconnected);
      case CallDiscardReasonHungUp.CONSTRUCTOR:
        return hungUp.call(this as CallDiscardReasonHungUp);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension CallProtocolExtensions on CallProtocol {
  CallProtocol copy(
          {bool? udpP2p,
          bool? udpReflector,
          int? minLayer,
          int? maxLayer,
          List<String>? libraryVersions}) =>
      CallProtocol(
          udpP2p: udpP2p ?? this.udpP2p,
          udpReflector: udpReflector ?? this.udpReflector,
          minLayer: minLayer ?? this.minLayer,
          maxLayer: maxLayer ?? this.maxLayer,
          libraryVersions: libraryVersions ?? this.libraryVersions);
}

extension CallServerTypeExtensions on CallServerType {
  TResult map<TResult extends Object?>(
      {required TResult Function(CallServerTypeTelegramReflector value)
          telegramReflector,
      required TResult Function(CallServerTypeWebrtc value) webrtc}) {
    switch (this.getConstructor()) {
      case CallServerTypeTelegramReflector.CONSTRUCTOR:
        return telegramReflector.call(this as CallServerTypeTelegramReflector);
      case CallServerTypeWebrtc.CONSTRUCTOR:
        return webrtc.call(this as CallServerTypeWebrtc);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension CallServerTypeTelegramReflectorExtensions
    on CallServerTypeTelegramReflector {
  CallServerTypeTelegramReflector copy({String? peerTag}) =>
      CallServerTypeTelegramReflector(peerTag: peerTag ?? this.peerTag);
}

extension CallServerTypeWebrtcExtensions on CallServerTypeWebrtc {
  CallServerTypeWebrtc copy(
          {String? username,
          String? password,
          bool? supportsTurn,
          bool? supportsStun}) =>
      CallServerTypeWebrtc(
          username: username ?? this.username,
          password: password ?? this.password,
          supportsTurn: supportsTurn ?? this.supportsTurn,
          supportsStun: supportsStun ?? this.supportsStun);
}

extension CallServerExtensions on CallServer {
  CallServer copy(
          {int? id,
          String? ipAddress,
          String? ipv6Address,
          int? port,
          CallServerType? type}) =>
      CallServer(
          id: id ?? this.id,
          ipAddress: ipAddress ?? this.ipAddress,
          ipv6Address: ipv6Address ?? this.ipv6Address,
          port: port ?? this.port,
          type: type ?? this.type);
}

extension CallIdExtensions on CallId {
  CallId copy({int? id}) => CallId(id: id ?? this.id);
}

extension GroupCallIdExtensions on GroupCallId {
  GroupCallId copy({int? id}) => GroupCallId(id: id ?? this.id);
}

extension CallStateExtensions on CallState {
  TResult map<TResult extends Object?>(
      {required TResult Function(CallStatePending value) pending,
      required TResult Function(CallStateExchangingKeys value) exchangingKeys,
      required TResult Function(CallStateReady value) ready,
      required TResult Function(CallStateHangingUp value) hangingUp,
      required TResult Function(CallStateDiscarded value) discarded,
      required TResult Function(CallStateError value) error}) {
    switch (this.getConstructor()) {
      case CallStatePending.CONSTRUCTOR:
        return pending.call(this as CallStatePending);
      case CallStateExchangingKeys.CONSTRUCTOR:
        return exchangingKeys.call(this as CallStateExchangingKeys);
      case CallStateReady.CONSTRUCTOR:
        return ready.call(this as CallStateReady);
      case CallStateHangingUp.CONSTRUCTOR:
        return hangingUp.call(this as CallStateHangingUp);
      case CallStateDiscarded.CONSTRUCTOR:
        return discarded.call(this as CallStateDiscarded);
      case CallStateError.CONSTRUCTOR:
        return error.call(this as CallStateError);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension CallStatePendingExtensions on CallStatePending {
  CallStatePending copy({bool? isCreated, bool? isReceived}) =>
      CallStatePending(
          isCreated: isCreated ?? this.isCreated,
          isReceived: isReceived ?? this.isReceived);
}

extension CallStateReadyExtensions on CallStateReady {
  CallStateReady copy(
          {CallProtocol? protocol,
          List<CallServer>? servers,
          String? config,
          String? encryptionKey,
          List<String>? emojis,
          bool? allowP2p}) =>
      CallStateReady(
          protocol: protocol ?? this.protocol,
          servers: servers ?? this.servers,
          config: config ?? this.config,
          encryptionKey: encryptionKey ?? this.encryptionKey,
          emojis: emojis ?? this.emojis,
          allowP2p: allowP2p ?? this.allowP2p);
}

extension CallStateDiscardedExtensions on CallStateDiscarded {
  CallStateDiscarded copy(
          {CallDiscardReason? reason,
          bool? needRating,
          bool? needDebugInformation}) =>
      CallStateDiscarded(
          reason: reason ?? this.reason,
          needRating: needRating ?? this.needRating,
          needDebugInformation:
              needDebugInformation ?? this.needDebugInformation);
}

extension CallStateErrorExtensions on CallStateError {
  CallStateError copy({TdError? error}) =>
      CallStateError(error: error ?? this.error);
}

extension GroupCallRecentSpeakerExtensions on GroupCallRecentSpeaker {
  GroupCallRecentSpeaker copy({MessageSender? speaker, bool? isSpeaking}) =>
      GroupCallRecentSpeaker(
          speaker: speaker ?? this.speaker,
          isSpeaking: isSpeaking ?? this.isSpeaking);
}

extension GroupCallExtensions on GroupCall {
  GroupCall copy(
          {int? id,
          String? title,
          bool? isActive,
          bool? isJoined,
          bool? needRejoin,
          bool? canUnmuteSelf,
          bool? canBeManaged,
          int? participantCount,
          bool? loadedAllParticipants,
          List<GroupCallRecentSpeaker>? recentSpeakers,
          bool? muteNewParticipants,
          bool? canChangeMuteNewParticipants,
          int? recordDuration,
          int? duration}) =>
      GroupCall(
          id: id ?? this.id,
          title: title ?? this.title,
          isActive: isActive ?? this.isActive,
          isJoined: isJoined ?? this.isJoined,
          needRejoin: needRejoin ?? this.needRejoin,
          canUnmuteSelf: canUnmuteSelf ?? this.canUnmuteSelf,
          canBeManaged: canBeManaged ?? this.canBeManaged,
          participantCount: participantCount ?? this.participantCount,
          loadedAllParticipants:
              loadedAllParticipants ?? this.loadedAllParticipants,
          recentSpeakers: recentSpeakers ?? this.recentSpeakers,
          muteNewParticipants: muteNewParticipants ?? this.muteNewParticipants,
          canChangeMuteNewParticipants:
              canChangeMuteNewParticipants ?? this.canChangeMuteNewParticipants,
          recordDuration: recordDuration ?? this.recordDuration,
          duration: duration ?? this.duration);
}

extension GroupCallPayloadFingerprintExtensions on GroupCallPayloadFingerprint {
  GroupCallPayloadFingerprint copy(
          {String? hash, String? setup, String? fingerprint}) =>
      GroupCallPayloadFingerprint(
          hash: hash ?? this.hash,
          setup: setup ?? this.setup,
          fingerprint: fingerprint ?? this.fingerprint);
}

extension GroupCallPayloadExtensions on GroupCallPayload {
  GroupCallPayload copy(
          {String? ufrag,
          String? pwd,
          List<GroupCallPayloadFingerprint>? fingerprints}) =>
      GroupCallPayload(
          ufrag: ufrag ?? this.ufrag,
          pwd: pwd ?? this.pwd,
          fingerprints: fingerprints ?? this.fingerprints);
}

extension GroupCallJoinResponseCandidateExtensions
    on GroupCallJoinResponseCandidate {
  GroupCallJoinResponseCandidate copy(
          {String? port,
          String? protocol,
          String? network,
          String? generation,
          String? id,
          String? component,
          String? foundation,
          String? priority,
          String? ip,
          String? type,
          String? tcpType,
          String? relAddr,
          String? relPort}) =>
      GroupCallJoinResponseCandidate(
          port: port ?? this.port,
          protocol: protocol ?? this.protocol,
          network: network ?? this.network,
          generation: generation ?? this.generation,
          id: id ?? this.id,
          component: component ?? this.component,
          foundation: foundation ?? this.foundation,
          priority: priority ?? this.priority,
          ip: ip ?? this.ip,
          type: type ?? this.type,
          tcpType: tcpType ?? this.tcpType,
          relAddr: relAddr ?? this.relAddr,
          relPort: relPort ?? this.relPort);
}

extension GroupCallJoinResponseExtensions on GroupCallJoinResponse {
  TResult map<TResult extends Object?>(
      {required TResult Function(GroupCallJoinResponseWebrtc value) webrtc,
      required TResult Function(GroupCallJoinResponseStream value) stream}) {
    switch (this.getConstructor()) {
      case GroupCallJoinResponseWebrtc.CONSTRUCTOR:
        return webrtc.call(this as GroupCallJoinResponseWebrtc);
      case GroupCallJoinResponseStream.CONSTRUCTOR:
        return stream.call(this as GroupCallJoinResponseStream);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension GroupCallJoinResponseWebrtcExtensions on GroupCallJoinResponseWebrtc {
  GroupCallJoinResponseWebrtc copy(
          {GroupCallPayload? payload,
          List<GroupCallJoinResponseCandidate>? candidates}) =>
      GroupCallJoinResponseWebrtc(
          payload: payload ?? this.payload,
          candidates: candidates ?? this.candidates);
}

extension GroupCallParticipantExtensions on GroupCallParticipant {
  GroupCallParticipant copy(
          {MessageSender? participant,
          int? source,
          String? bio,
          bool? isCurrentUser,
          bool? isSpeaking,
          bool? isHandRaised,
          bool? canBeMutedForAllUsers,
          bool? canBeUnmutedForAllUsers,
          bool? canBeMutedForCurrentUser,
          bool? canBeUnmutedForCurrentUser,
          bool? isMutedForAllUsers,
          bool? isMutedForCurrentUser,
          bool? canUnmuteSelf,
          int? volumeLevel,
          String? order}) =>
      GroupCallParticipant(
          participant: participant ?? this.participant,
          source: source ?? this.source,
          bio: bio ?? this.bio,
          isCurrentUser: isCurrentUser ?? this.isCurrentUser,
          isSpeaking: isSpeaking ?? this.isSpeaking,
          isHandRaised: isHandRaised ?? this.isHandRaised,
          canBeMutedForAllUsers:
              canBeMutedForAllUsers ?? this.canBeMutedForAllUsers,
          canBeUnmutedForAllUsers:
              canBeUnmutedForAllUsers ?? this.canBeUnmutedForAllUsers,
          canBeMutedForCurrentUser:
              canBeMutedForCurrentUser ?? this.canBeMutedForCurrentUser,
          canBeUnmutedForCurrentUser:
              canBeUnmutedForCurrentUser ?? this.canBeUnmutedForCurrentUser,
          isMutedForAllUsers: isMutedForAllUsers ?? this.isMutedForAllUsers,
          isMutedForCurrentUser:
              isMutedForCurrentUser ?? this.isMutedForCurrentUser,
          canUnmuteSelf: canUnmuteSelf ?? this.canUnmuteSelf,
          volumeLevel: volumeLevel ?? this.volumeLevel,
          order: order ?? this.order);
}

extension CallProblemExtensions on CallProblem {
  TResult map<TResult extends Object?>(
      {required TResult Function(CallProblemEcho value) echo,
      required TResult Function(CallProblemNoise value) noise,
      required TResult Function(CallProblemInterruptions value) interruptions,
      required TResult Function(CallProblemDistortedSpeech value)
          distortedSpeech,
      required TResult Function(CallProblemSilentLocal value) silentLocal,
      required TResult Function(CallProblemSilentRemote value) silentRemote,
      required TResult Function(CallProblemDropped value) dropped,
      required TResult Function(CallProblemDistortedVideo value) distortedVideo,
      required TResult Function(CallProblemPixelatedVideo value)
          pixelatedVideo}) {
    switch (this.getConstructor()) {
      case CallProblemEcho.CONSTRUCTOR:
        return echo.call(this as CallProblemEcho);
      case CallProblemNoise.CONSTRUCTOR:
        return noise.call(this as CallProblemNoise);
      case CallProblemInterruptions.CONSTRUCTOR:
        return interruptions.call(this as CallProblemInterruptions);
      case CallProblemDistortedSpeech.CONSTRUCTOR:
        return distortedSpeech.call(this as CallProblemDistortedSpeech);
      case CallProblemSilentLocal.CONSTRUCTOR:
        return silentLocal.call(this as CallProblemSilentLocal);
      case CallProblemSilentRemote.CONSTRUCTOR:
        return silentRemote.call(this as CallProblemSilentRemote);
      case CallProblemDropped.CONSTRUCTOR:
        return dropped.call(this as CallProblemDropped);
      case CallProblemDistortedVideo.CONSTRUCTOR:
        return distortedVideo.call(this as CallProblemDistortedVideo);
      case CallProblemPixelatedVideo.CONSTRUCTOR:
        return pixelatedVideo.call(this as CallProblemPixelatedVideo);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension CallExtensions on Call {
  Call copy(
          {int? id,
          int? userId,
          bool? isOutgoing,
          bool? isVideo,
          CallState? state}) =>
      Call(
          id: id ?? this.id,
          userId: userId ?? this.userId,
          isOutgoing: isOutgoing ?? this.isOutgoing,
          isVideo: isVideo ?? this.isVideo,
          state: state ?? this.state);
}

extension PhoneNumberAuthenticationSettingsExtensions
    on PhoneNumberAuthenticationSettings {
  PhoneNumberAuthenticationSettings copy(
          {bool? allowFlashCall,
          bool? isCurrentPhoneNumber,
          bool? allowSmsRetrieverApi}) =>
      PhoneNumberAuthenticationSettings(
          allowFlashCall: allowFlashCall ?? this.allowFlashCall,
          isCurrentPhoneNumber:
              isCurrentPhoneNumber ?? this.isCurrentPhoneNumber,
          allowSmsRetrieverApi:
              allowSmsRetrieverApi ?? this.allowSmsRetrieverApi);
}

extension AnimationsExtensions on Animations {
  Animations copy({List<Animation>? animations}) =>
      Animations(animations: animations ?? this.animations);
}

extension DiceStickersExtensions on DiceStickers {
  TResult map<TResult extends Object?>(
      {required TResult Function(DiceStickersRegular value) regular,
      required TResult Function(DiceStickersSlotMachine value) slotMachine}) {
    switch (this.getConstructor()) {
      case DiceStickersRegular.CONSTRUCTOR:
        return regular.call(this as DiceStickersRegular);
      case DiceStickersSlotMachine.CONSTRUCTOR:
        return slotMachine.call(this as DiceStickersSlotMachine);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension DiceStickersRegularExtensions on DiceStickersRegular {
  DiceStickersRegular copy({Sticker? sticker}) =>
      DiceStickersRegular(sticker: sticker ?? this.sticker);
}

extension DiceStickersSlotMachineExtensions on DiceStickersSlotMachine {
  DiceStickersSlotMachine copy(
          {Sticker? background,
          Sticker? lever,
          Sticker? leftReel,
          Sticker? centerReel,
          Sticker? rightReel}) =>
      DiceStickersSlotMachine(
          background: background ?? this.background,
          lever: lever ?? this.lever,
          leftReel: leftReel ?? this.leftReel,
          centerReel: centerReel ?? this.centerReel,
          rightReel: rightReel ?? this.rightReel);
}

extension ImportedContactsExtensions on ImportedContacts {
  ImportedContacts copy({List<int>? userIds, List<int>? importerCount}) =>
      ImportedContacts(
          userIds: userIds ?? this.userIds,
          importerCount: importerCount ?? this.importerCount);
}

extension HttpUrlExtensions on HttpUrl {
  HttpUrl copy({String? url}) => HttpUrl(url: url ?? this.url);
}

extension InputInlineQueryResultExtensions on InputInlineQueryResult {
  TResult map<TResult extends Object?>(
      {required TResult Function(InputInlineQueryResultAnimation value)
          animation,
      required TResult Function(InputInlineQueryResultArticle value) article,
      required TResult Function(InputInlineQueryResultAudio value) audio,
      required TResult Function(InputInlineQueryResultContact value) contact,
      required TResult Function(InputInlineQueryResultDocument value) document,
      required TResult Function(InputInlineQueryResultGame value) game,
      required TResult Function(InputInlineQueryResultLocation value) location,
      required TResult Function(InputInlineQueryResultPhoto value) photo,
      required TResult Function(InputInlineQueryResultSticker value) sticker,
      required TResult Function(InputInlineQueryResultVenue value) venue,
      required TResult Function(InputInlineQueryResultVideo value) video,
      required TResult Function(InputInlineQueryResultVoiceNote value)
          voiceNote}) {
    switch (this.getConstructor()) {
      case InputInlineQueryResultAnimation.CONSTRUCTOR:
        return animation.call(this as InputInlineQueryResultAnimation);
      case InputInlineQueryResultArticle.CONSTRUCTOR:
        return article.call(this as InputInlineQueryResultArticle);
      case InputInlineQueryResultAudio.CONSTRUCTOR:
        return audio.call(this as InputInlineQueryResultAudio);
      case InputInlineQueryResultContact.CONSTRUCTOR:
        return contact.call(this as InputInlineQueryResultContact);
      case InputInlineQueryResultDocument.CONSTRUCTOR:
        return document.call(this as InputInlineQueryResultDocument);
      case InputInlineQueryResultGame.CONSTRUCTOR:
        return game.call(this as InputInlineQueryResultGame);
      case InputInlineQueryResultLocation.CONSTRUCTOR:
        return location.call(this as InputInlineQueryResultLocation);
      case InputInlineQueryResultPhoto.CONSTRUCTOR:
        return photo.call(this as InputInlineQueryResultPhoto);
      case InputInlineQueryResultSticker.CONSTRUCTOR:
        return sticker.call(this as InputInlineQueryResultSticker);
      case InputInlineQueryResultVenue.CONSTRUCTOR:
        return venue.call(this as InputInlineQueryResultVenue);
      case InputInlineQueryResultVideo.CONSTRUCTOR:
        return video.call(this as InputInlineQueryResultVideo);
      case InputInlineQueryResultVoiceNote.CONSTRUCTOR:
        return voiceNote.call(this as InputInlineQueryResultVoiceNote);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension InputInlineQueryResultAnimationExtensions
    on InputInlineQueryResultAnimation {
  InputInlineQueryResultAnimation copy(
          {String? id,
          String? title,
          String? thumbnailUrl,
          String? thumbnailMimeType,
          String? videoUrl,
          String? videoMimeType,
          int? videoDuration,
          int? videoWidth,
          int? videoHeight,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultAnimation(
          id: id ?? this.id,
          title: title ?? this.title,
          thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
          thumbnailMimeType: thumbnailMimeType ?? this.thumbnailMimeType,
          videoUrl: videoUrl ?? this.videoUrl,
          videoMimeType: videoMimeType ?? this.videoMimeType,
          videoDuration: videoDuration ?? this.videoDuration,
          videoWidth: videoWidth ?? this.videoWidth,
          videoHeight: videoHeight ?? this.videoHeight,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InputInlineQueryResultArticleExtensions
    on InputInlineQueryResultArticle {
  InputInlineQueryResultArticle copy(
          {String? id,
          String? url,
          bool? hideUrl,
          String? title,
          String? description,
          String? thumbnailUrl,
          int? thumbnailWidth,
          int? thumbnailHeight,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultArticle(
          id: id ?? this.id,
          url: url ?? this.url,
          hideUrl: hideUrl ?? this.hideUrl,
          title: title ?? this.title,
          description: description ?? this.description,
          thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
          thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
          thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InputInlineQueryResultAudioExtensions on InputInlineQueryResultAudio {
  InputInlineQueryResultAudio copy(
          {String? id,
          String? title,
          String? performer,
          String? audioUrl,
          int? audioDuration,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultAudio(
          id: id ?? this.id,
          title: title ?? this.title,
          performer: performer ?? this.performer,
          audioUrl: audioUrl ?? this.audioUrl,
          audioDuration: audioDuration ?? this.audioDuration,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InputInlineQueryResultContactExtensions
    on InputInlineQueryResultContact {
  InputInlineQueryResultContact copy(
          {String? id,
          Contact? contact,
          String? thumbnailUrl,
          int? thumbnailWidth,
          int? thumbnailHeight,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultContact(
          id: id ?? this.id,
          contact: contact ?? this.contact,
          thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
          thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
          thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InputInlineQueryResultDocumentExtensions
    on InputInlineQueryResultDocument {
  InputInlineQueryResultDocument copy(
          {String? id,
          String? title,
          String? description,
          String? documentUrl,
          String? mimeType,
          String? thumbnailUrl,
          int? thumbnailWidth,
          int? thumbnailHeight,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultDocument(
          id: id ?? this.id,
          title: title ?? this.title,
          description: description ?? this.description,
          documentUrl: documentUrl ?? this.documentUrl,
          mimeType: mimeType ?? this.mimeType,
          thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
          thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
          thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InputInlineQueryResultGameExtensions on InputInlineQueryResultGame {
  InputInlineQueryResultGame copy(
          {String? id, String? gameShortName, ReplyMarkup? replyMarkup}) =>
      InputInlineQueryResultGame(
          id: id ?? this.id,
          gameShortName: gameShortName ?? this.gameShortName,
          replyMarkup: replyMarkup ?? this.replyMarkup);
}

extension InputInlineQueryResultLocationExtensions
    on InputInlineQueryResultLocation {
  InputInlineQueryResultLocation copy(
          {String? id,
          Location? location,
          int? livePeriod,
          String? title,
          String? thumbnailUrl,
          int? thumbnailWidth,
          int? thumbnailHeight,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultLocation(
          id: id ?? this.id,
          location: location ?? this.location,
          livePeriod: livePeriod ?? this.livePeriod,
          title: title ?? this.title,
          thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
          thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
          thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InputInlineQueryResultPhotoExtensions on InputInlineQueryResultPhoto {
  InputInlineQueryResultPhoto copy(
          {String? id,
          String? title,
          String? description,
          String? thumbnailUrl,
          String? photoUrl,
          int? photoWidth,
          int? photoHeight,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultPhoto(
          id: id ?? this.id,
          title: title ?? this.title,
          description: description ?? this.description,
          thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
          photoUrl: photoUrl ?? this.photoUrl,
          photoWidth: photoWidth ?? this.photoWidth,
          photoHeight: photoHeight ?? this.photoHeight,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InputInlineQueryResultStickerExtensions
    on InputInlineQueryResultSticker {
  InputInlineQueryResultSticker copy(
          {String? id,
          String? thumbnailUrl,
          String? stickerUrl,
          int? stickerWidth,
          int? stickerHeight,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultSticker(
          id: id ?? this.id,
          thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
          stickerUrl: stickerUrl ?? this.stickerUrl,
          stickerWidth: stickerWidth ?? this.stickerWidth,
          stickerHeight: stickerHeight ?? this.stickerHeight,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InputInlineQueryResultVenueExtensions on InputInlineQueryResultVenue {
  InputInlineQueryResultVenue copy(
          {String? id,
          Venue? venue,
          String? thumbnailUrl,
          int? thumbnailWidth,
          int? thumbnailHeight,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultVenue(
          id: id ?? this.id,
          venue: venue ?? this.venue,
          thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
          thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
          thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InputInlineQueryResultVideoExtensions on InputInlineQueryResultVideo {
  InputInlineQueryResultVideo copy(
          {String? id,
          String? title,
          String? description,
          String? thumbnailUrl,
          String? videoUrl,
          String? mimeType,
          int? videoWidth,
          int? videoHeight,
          int? videoDuration,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultVideo(
          id: id ?? this.id,
          title: title ?? this.title,
          description: description ?? this.description,
          thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
          videoUrl: videoUrl ?? this.videoUrl,
          mimeType: mimeType ?? this.mimeType,
          videoWidth: videoWidth ?? this.videoWidth,
          videoHeight: videoHeight ?? this.videoHeight,
          videoDuration: videoDuration ?? this.videoDuration,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InputInlineQueryResultVoiceNoteExtensions
    on InputInlineQueryResultVoiceNote {
  InputInlineQueryResultVoiceNote copy(
          {String? id,
          String? title,
          String? voiceNoteUrl,
          int? voiceNoteDuration,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultVoiceNote(
          id: id ?? this.id,
          title: title ?? this.title,
          voiceNoteUrl: voiceNoteUrl ?? this.voiceNoteUrl,
          voiceNoteDuration: voiceNoteDuration ?? this.voiceNoteDuration,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InlineQueryResultExtensions on InlineQueryResult {
  TResult map<TResult extends Object?>(
      {required TResult Function(InlineQueryResultArticle value) article,
      required TResult Function(InlineQueryResultContact value) contact,
      required TResult Function(InlineQueryResultLocation value) location,
      required TResult Function(InlineQueryResultVenue value) venue,
      required TResult Function(InlineQueryResultGame value) game,
      required TResult Function(InlineQueryResultAnimation value) animation,
      required TResult Function(InlineQueryResultAudio value) audio,
      required TResult Function(InlineQueryResultDocument value) document,
      required TResult Function(InlineQueryResultPhoto value) photo,
      required TResult Function(InlineQueryResultSticker value) sticker,
      required TResult Function(InlineQueryResultVideo value) video,
      required TResult Function(InlineQueryResultVoiceNote value) voiceNote}) {
    switch (this.getConstructor()) {
      case InlineQueryResultArticle.CONSTRUCTOR:
        return article.call(this as InlineQueryResultArticle);
      case InlineQueryResultContact.CONSTRUCTOR:
        return contact.call(this as InlineQueryResultContact);
      case InlineQueryResultLocation.CONSTRUCTOR:
        return location.call(this as InlineQueryResultLocation);
      case InlineQueryResultVenue.CONSTRUCTOR:
        return venue.call(this as InlineQueryResultVenue);
      case InlineQueryResultGame.CONSTRUCTOR:
        return game.call(this as InlineQueryResultGame);
      case InlineQueryResultAnimation.CONSTRUCTOR:
        return animation.call(this as InlineQueryResultAnimation);
      case InlineQueryResultAudio.CONSTRUCTOR:
        return audio.call(this as InlineQueryResultAudio);
      case InlineQueryResultDocument.CONSTRUCTOR:
        return document.call(this as InlineQueryResultDocument);
      case InlineQueryResultPhoto.CONSTRUCTOR:
        return photo.call(this as InlineQueryResultPhoto);
      case InlineQueryResultSticker.CONSTRUCTOR:
        return sticker.call(this as InlineQueryResultSticker);
      case InlineQueryResultVideo.CONSTRUCTOR:
        return video.call(this as InlineQueryResultVideo);
      case InlineQueryResultVoiceNote.CONSTRUCTOR:
        return voiceNote.call(this as InlineQueryResultVoiceNote);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension InlineQueryResultArticleExtensions on InlineQueryResultArticle {
  InlineQueryResultArticle copy(
          {String? id,
          String? url,
          bool? hideUrl,
          String? title,
          String? description,
          Thumbnail? thumbnail}) =>
      InlineQueryResultArticle(
          id: id ?? this.id,
          url: url ?? this.url,
          hideUrl: hideUrl ?? this.hideUrl,
          title: title ?? this.title,
          description: description ?? this.description,
          thumbnail: thumbnail ?? this.thumbnail);
}

extension InlineQueryResultContactExtensions on InlineQueryResultContact {
  InlineQueryResultContact copy(
          {String? id, Contact? contact, Thumbnail? thumbnail}) =>
      InlineQueryResultContact(
          id: id ?? this.id,
          contact: contact ?? this.contact,
          thumbnail: thumbnail ?? this.thumbnail);
}

extension InlineQueryResultLocationExtensions on InlineQueryResultLocation {
  InlineQueryResultLocation copy(
          {String? id,
          Location? location,
          String? title,
          Thumbnail? thumbnail}) =>
      InlineQueryResultLocation(
          id: id ?? this.id,
          location: location ?? this.location,
          title: title ?? this.title,
          thumbnail: thumbnail ?? this.thumbnail);
}

extension InlineQueryResultVenueExtensions on InlineQueryResultVenue {
  InlineQueryResultVenue copy(
          {String? id, Venue? venue, Thumbnail? thumbnail}) =>
      InlineQueryResultVenue(
          id: id ?? this.id,
          venue: venue ?? this.venue,
          thumbnail: thumbnail ?? this.thumbnail);
}

extension InlineQueryResultGameExtensions on InlineQueryResultGame {
  InlineQueryResultGame copy({String? id, Game? game}) =>
      InlineQueryResultGame(id: id ?? this.id, game: game ?? this.game);
}

extension InlineQueryResultAnimationExtensions on InlineQueryResultAnimation {
  InlineQueryResultAnimation copy(
          {String? id, Animation? animation, String? title}) =>
      InlineQueryResultAnimation(
          id: id ?? this.id,
          animation: animation ?? this.animation,
          title: title ?? this.title);
}

extension InlineQueryResultAudioExtensions on InlineQueryResultAudio {
  InlineQueryResultAudio copy({String? id, Audio? audio}) =>
      InlineQueryResultAudio(id: id ?? this.id, audio: audio ?? this.audio);
}

extension InlineQueryResultDocumentExtensions on InlineQueryResultDocument {
  InlineQueryResultDocument copy(
          {String? id,
          Document? document,
          String? title,
          String? description}) =>
      InlineQueryResultDocument(
          id: id ?? this.id,
          document: document ?? this.document,
          title: title ?? this.title,
          description: description ?? this.description);
}

extension InlineQueryResultPhotoExtensions on InlineQueryResultPhoto {
  InlineQueryResultPhoto copy(
          {String? id, Photo? photo, String? title, String? description}) =>
      InlineQueryResultPhoto(
          id: id ?? this.id,
          photo: photo ?? this.photo,
          title: title ?? this.title,
          description: description ?? this.description);
}

extension InlineQueryResultStickerExtensions on InlineQueryResultSticker {
  InlineQueryResultSticker copy({String? id, Sticker? sticker}) =>
      InlineQueryResultSticker(
          id: id ?? this.id, sticker: sticker ?? this.sticker);
}

extension InlineQueryResultVideoExtensions on InlineQueryResultVideo {
  InlineQueryResultVideo copy(
          {String? id, Video? video, String? title, String? description}) =>
      InlineQueryResultVideo(
          id: id ?? this.id,
          video: video ?? this.video,
          title: title ?? this.title,
          description: description ?? this.description);
}

extension InlineQueryResultVoiceNoteExtensions on InlineQueryResultVoiceNote {
  InlineQueryResultVoiceNote copy(
          {String? id, VoiceNote? voiceNote, String? title}) =>
      InlineQueryResultVoiceNote(
          id: id ?? this.id,
          voiceNote: voiceNote ?? this.voiceNote,
          title: title ?? this.title);
}

extension InlineQueryResultsExtensions on InlineQueryResults {
  InlineQueryResults copy(
          {int? inlineQueryId,
          String? nextOffset,
          List<InlineQueryResult>? results,
          String? switchPmText,
          String? switchPmParameter}) =>
      InlineQueryResults(
          inlineQueryId: inlineQueryId ?? this.inlineQueryId,
          nextOffset: nextOffset ?? this.nextOffset,
          results: results ?? this.results,
          switchPmText: switchPmText ?? this.switchPmText,
          switchPmParameter: switchPmParameter ?? this.switchPmParameter);
}

extension CallbackQueryPayloadExtensions on CallbackQueryPayload {
  TResult map<TResult extends Object?>(
      {required TResult Function(CallbackQueryPayloadData value) data,
      required TResult Function(CallbackQueryPayloadDataWithPassword value)
          dataWithPassword,
      required TResult Function(CallbackQueryPayloadGame value) game}) {
    switch (this.getConstructor()) {
      case CallbackQueryPayloadData.CONSTRUCTOR:
        return data.call(this as CallbackQueryPayloadData);
      case CallbackQueryPayloadDataWithPassword.CONSTRUCTOR:
        return dataWithPassword
            .call(this as CallbackQueryPayloadDataWithPassword);
      case CallbackQueryPayloadGame.CONSTRUCTOR:
        return game.call(this as CallbackQueryPayloadGame);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension CallbackQueryPayloadDataExtensions on CallbackQueryPayloadData {
  CallbackQueryPayloadData copy({String? data}) =>
      CallbackQueryPayloadData(data: data ?? this.data);
}

extension CallbackQueryPayloadDataWithPasswordExtensions
    on CallbackQueryPayloadDataWithPassword {
  CallbackQueryPayloadDataWithPassword copy({String? password, String? data}) =>
      CallbackQueryPayloadDataWithPassword(
          password: password ?? this.password, data: data ?? this.data);
}

extension CallbackQueryPayloadGameExtensions on CallbackQueryPayloadGame {
  CallbackQueryPayloadGame copy({String? gameShortName}) =>
      CallbackQueryPayloadGame(
          gameShortName: gameShortName ?? this.gameShortName);
}

extension CallbackQueryAnswerExtensions on CallbackQueryAnswer {
  CallbackQueryAnswer copy({String? text, bool? showAlert, String? url}) =>
      CallbackQueryAnswer(
          text: text ?? this.text,
          showAlert: showAlert ?? this.showAlert,
          url: url ?? this.url);
}

extension CustomRequestResultExtensions on CustomRequestResult {
  CustomRequestResult copy({String? result}) =>
      CustomRequestResult(result: result ?? this.result);
}

extension GameHighScoreExtensions on GameHighScore {
  GameHighScore copy({int? position, int? userId, int? score}) => GameHighScore(
      position: position ?? this.position,
      userId: userId ?? this.userId,
      score: score ?? this.score);
}

extension GameHighScoresExtensions on GameHighScores {
  GameHighScores copy({List<GameHighScore>? scores}) =>
      GameHighScores(scores: scores ?? this.scores);
}

extension ChatEventActionExtensions on ChatEventAction {
  TResult map<TResult extends Object?>(
      {required TResult Function(ChatEventMessageEdited value)
          chatEventMessageEdited,
      required TResult Function(ChatEventMessageDeleted value)
          chatEventMessageDeleted,
      required TResult Function(ChatEventPollStopped value)
          chatEventPollStopped,
      required TResult Function(ChatEventMessagePinned value)
          chatEventMessagePinned,
      required TResult Function(ChatEventMessageUnpinned value)
          chatEventMessageUnpinned,
      required TResult Function(ChatEventMemberJoined value)
          chatEventMemberJoined,
      required TResult Function(ChatEventMemberJoinedByInviteLink value)
          chatEventMemberJoinedByInviteLink,
      required TResult Function(ChatEventMemberLeft value) chatEventMemberLeft,
      required TResult Function(ChatEventMemberInvited value)
          chatEventMemberInvited,
      required TResult Function(ChatEventMemberPromoted value)
          chatEventMemberPromoted,
      required TResult Function(ChatEventMemberRestricted value)
          chatEventMemberRestricted,
      required TResult Function(ChatEventTitleChanged value)
          chatEventTitleChanged,
      required TResult Function(ChatEventPermissionsChanged value)
          chatEventPermissionsChanged,
      required TResult Function(ChatEventDescriptionChanged value)
          chatEventDescriptionChanged,
      required TResult Function(ChatEventUsernameChanged value)
          chatEventUsernameChanged,
      required TResult Function(ChatEventPhotoChanged value)
          chatEventPhotoChanged,
      required TResult Function(ChatEventInvitesToggled value)
          chatEventInvitesToggled,
      required TResult Function(ChatEventLinkedChatChanged value)
          chatEventLinkedChatChanged,
      required TResult Function(ChatEventSlowModeDelayChanged value)
          chatEventSlowModeDelayChanged,
      required TResult Function(ChatEventMessageTtlSettingChanged value)
          chatEventMessageTtlSettingChanged,
      required TResult Function(ChatEventSignMessagesToggled value)
          chatEventSignMessagesToggled,
      required TResult Function(ChatEventStickerSetChanged value)
          chatEventStickerSetChanged,
      required TResult Function(ChatEventLocationChanged value)
          chatEventLocationChanged,
      required TResult Function(ChatEventIsAllHistoryAvailableToggled value)
          chatEventIsAllHistoryAvailableToggled,
      required TResult Function(ChatEventInviteLinkEdited value)
          chatEventInviteLinkEdited,
      required TResult Function(ChatEventInviteLinkRevoked value)
          chatEventInviteLinkRevoked,
      required TResult Function(ChatEventInviteLinkDeleted value)
          chatEventInviteLinkDeleted,
      required TResult Function(ChatEventVoiceChatCreated value)
          chatEventVoiceChatCreated,
      required TResult Function(ChatEventVoiceChatDiscarded value)
          chatEventVoiceChatDiscarded,
      required TResult Function(
              ChatEventVoiceChatParticipantIsMutedToggled value)
          chatEventVoiceChatParticipantIsMutedToggled,
      required TResult Function(
              ChatEventVoiceChatParticipantVolumeLevelChanged value)
          chatEventVoiceChatParticipantVolumeLevelChanged,
      required TResult Function(
              ChatEventVoiceChatMuteNewParticipantsToggled value)
          chatEventVoiceChatMuteNewParticipantsToggled}) {
    switch (this.getConstructor()) {
      case ChatEventMessageEdited.CONSTRUCTOR:
        return chatEventMessageEdited.call(this as ChatEventMessageEdited);
      case ChatEventMessageDeleted.CONSTRUCTOR:
        return chatEventMessageDeleted.call(this as ChatEventMessageDeleted);
      case ChatEventPollStopped.CONSTRUCTOR:
        return chatEventPollStopped.call(this as ChatEventPollStopped);
      case ChatEventMessagePinned.CONSTRUCTOR:
        return chatEventMessagePinned.call(this as ChatEventMessagePinned);
      case ChatEventMessageUnpinned.CONSTRUCTOR:
        return chatEventMessageUnpinned.call(this as ChatEventMessageUnpinned);
      case ChatEventMemberJoined.CONSTRUCTOR:
        return chatEventMemberJoined.call(this as ChatEventMemberJoined);
      case ChatEventMemberJoinedByInviteLink.CONSTRUCTOR:
        return chatEventMemberJoinedByInviteLink
            .call(this as ChatEventMemberJoinedByInviteLink);
      case ChatEventMemberLeft.CONSTRUCTOR:
        return chatEventMemberLeft.call(this as ChatEventMemberLeft);
      case ChatEventMemberInvited.CONSTRUCTOR:
        return chatEventMemberInvited.call(this as ChatEventMemberInvited);
      case ChatEventMemberPromoted.CONSTRUCTOR:
        return chatEventMemberPromoted.call(this as ChatEventMemberPromoted);
      case ChatEventMemberRestricted.CONSTRUCTOR:
        return chatEventMemberRestricted
            .call(this as ChatEventMemberRestricted);
      case ChatEventTitleChanged.CONSTRUCTOR:
        return chatEventTitleChanged.call(this as ChatEventTitleChanged);
      case ChatEventPermissionsChanged.CONSTRUCTOR:
        return chatEventPermissionsChanged
            .call(this as ChatEventPermissionsChanged);
      case ChatEventDescriptionChanged.CONSTRUCTOR:
        return chatEventDescriptionChanged
            .call(this as ChatEventDescriptionChanged);
      case ChatEventUsernameChanged.CONSTRUCTOR:
        return chatEventUsernameChanged.call(this as ChatEventUsernameChanged);
      case ChatEventPhotoChanged.CONSTRUCTOR:
        return chatEventPhotoChanged.call(this as ChatEventPhotoChanged);
      case ChatEventInvitesToggled.CONSTRUCTOR:
        return chatEventInvitesToggled.call(this as ChatEventInvitesToggled);
      case ChatEventLinkedChatChanged.CONSTRUCTOR:
        return chatEventLinkedChatChanged
            .call(this as ChatEventLinkedChatChanged);
      case ChatEventSlowModeDelayChanged.CONSTRUCTOR:
        return chatEventSlowModeDelayChanged
            .call(this as ChatEventSlowModeDelayChanged);
      case ChatEventMessageTtlSettingChanged.CONSTRUCTOR:
        return chatEventMessageTtlSettingChanged
            .call(this as ChatEventMessageTtlSettingChanged);
      case ChatEventSignMessagesToggled.CONSTRUCTOR:
        return chatEventSignMessagesToggled
            .call(this as ChatEventSignMessagesToggled);
      case ChatEventStickerSetChanged.CONSTRUCTOR:
        return chatEventStickerSetChanged
            .call(this as ChatEventStickerSetChanged);
      case ChatEventLocationChanged.CONSTRUCTOR:
        return chatEventLocationChanged.call(this as ChatEventLocationChanged);
      case ChatEventIsAllHistoryAvailableToggled.CONSTRUCTOR:
        return chatEventIsAllHistoryAvailableToggled
            .call(this as ChatEventIsAllHistoryAvailableToggled);
      case ChatEventInviteLinkEdited.CONSTRUCTOR:
        return chatEventInviteLinkEdited
            .call(this as ChatEventInviteLinkEdited);
      case ChatEventInviteLinkRevoked.CONSTRUCTOR:
        return chatEventInviteLinkRevoked
            .call(this as ChatEventInviteLinkRevoked);
      case ChatEventInviteLinkDeleted.CONSTRUCTOR:
        return chatEventInviteLinkDeleted
            .call(this as ChatEventInviteLinkDeleted);
      case ChatEventVoiceChatCreated.CONSTRUCTOR:
        return chatEventVoiceChatCreated
            .call(this as ChatEventVoiceChatCreated);
      case ChatEventVoiceChatDiscarded.CONSTRUCTOR:
        return chatEventVoiceChatDiscarded
            .call(this as ChatEventVoiceChatDiscarded);
      case ChatEventVoiceChatParticipantIsMutedToggled.CONSTRUCTOR:
        return chatEventVoiceChatParticipantIsMutedToggled
            .call(this as ChatEventVoiceChatParticipantIsMutedToggled);
      case ChatEventVoiceChatParticipantVolumeLevelChanged.CONSTRUCTOR:
        return chatEventVoiceChatParticipantVolumeLevelChanged
            .call(this as ChatEventVoiceChatParticipantVolumeLevelChanged);
      case ChatEventVoiceChatMuteNewParticipantsToggled.CONSTRUCTOR:
        return chatEventVoiceChatMuteNewParticipantsToggled
            .call(this as ChatEventVoiceChatMuteNewParticipantsToggled);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension ChatEventMessageEditedExtensions on ChatEventMessageEdited {
  ChatEventMessageEdited copy({Message? oldMessage, Message? newMessage}) =>
      ChatEventMessageEdited(
          oldMessage: oldMessage ?? this.oldMessage,
          newMessage: newMessage ?? this.newMessage);
}

extension ChatEventMessageDeletedExtensions on ChatEventMessageDeleted {
  ChatEventMessageDeleted copy({Message? message}) =>
      ChatEventMessageDeleted(message: message ?? this.message);
}

extension ChatEventPollStoppedExtensions on ChatEventPollStopped {
  ChatEventPollStopped copy({Message? message}) =>
      ChatEventPollStopped(message: message ?? this.message);
}

extension ChatEventMessagePinnedExtensions on ChatEventMessagePinned {
  ChatEventMessagePinned copy({Message? message}) =>
      ChatEventMessagePinned(message: message ?? this.message);
}

extension ChatEventMessageUnpinnedExtensions on ChatEventMessageUnpinned {
  ChatEventMessageUnpinned copy({Message? message}) =>
      ChatEventMessageUnpinned(message: message ?? this.message);
}

extension ChatEventMemberJoinedByInviteLinkExtensions
    on ChatEventMemberJoinedByInviteLink {
  ChatEventMemberJoinedByInviteLink copy({ChatInviteLink? inviteLink}) =>
      ChatEventMemberJoinedByInviteLink(
          inviteLink: inviteLink ?? this.inviteLink);
}

extension ChatEventMemberInvitedExtensions on ChatEventMemberInvited {
  ChatEventMemberInvited copy({int? userId, ChatMemberStatus? status}) =>
      ChatEventMemberInvited(
          userId: userId ?? this.userId, status: status ?? this.status);
}

extension ChatEventMemberPromotedExtensions on ChatEventMemberPromoted {
  ChatEventMemberPromoted copy(
          {int? userId,
          ChatMemberStatus? oldStatus,
          ChatMemberStatus? newStatus}) =>
      ChatEventMemberPromoted(
          userId: userId ?? this.userId,
          oldStatus: oldStatus ?? this.oldStatus,
          newStatus: newStatus ?? this.newStatus);
}

extension ChatEventMemberRestrictedExtensions on ChatEventMemberRestricted {
  ChatEventMemberRestricted copy(
          {int? userId,
          ChatMemberStatus? oldStatus,
          ChatMemberStatus? newStatus}) =>
      ChatEventMemberRestricted(
          userId: userId ?? this.userId,
          oldStatus: oldStatus ?? this.oldStatus,
          newStatus: newStatus ?? this.newStatus);
}

extension ChatEventTitleChangedExtensions on ChatEventTitleChanged {
  ChatEventTitleChanged copy({String? oldTitle, String? newTitle}) =>
      ChatEventTitleChanged(
          oldTitle: oldTitle ?? this.oldTitle,
          newTitle: newTitle ?? this.newTitle);
}

extension ChatEventPermissionsChangedExtensions on ChatEventPermissionsChanged {
  ChatEventPermissionsChanged copy(
          {ChatPermissions? oldPermissions, ChatPermissions? newPermissions}) =>
      ChatEventPermissionsChanged(
          oldPermissions: oldPermissions ?? this.oldPermissions,
          newPermissions: newPermissions ?? this.newPermissions);
}

extension ChatEventDescriptionChangedExtensions on ChatEventDescriptionChanged {
  ChatEventDescriptionChanged copy(
          {String? oldDescription, String? newDescription}) =>
      ChatEventDescriptionChanged(
          oldDescription: oldDescription ?? this.oldDescription,
          newDescription: newDescription ?? this.newDescription);
}

extension ChatEventUsernameChangedExtensions on ChatEventUsernameChanged {
  ChatEventUsernameChanged copy({String? oldUsername, String? newUsername}) =>
      ChatEventUsernameChanged(
          oldUsername: oldUsername ?? this.oldUsername,
          newUsername: newUsername ?? this.newUsername);
}

extension ChatEventPhotoChangedExtensions on ChatEventPhotoChanged {
  ChatEventPhotoChanged copy({ChatPhoto? oldPhoto, ChatPhoto? newPhoto}) =>
      ChatEventPhotoChanged(
          oldPhoto: oldPhoto ?? this.oldPhoto,
          newPhoto: newPhoto ?? this.newPhoto);
}

extension ChatEventInvitesToggledExtensions on ChatEventInvitesToggled {
  ChatEventInvitesToggled copy({bool? canInviteUsers}) =>
      ChatEventInvitesToggled(
          canInviteUsers: canInviteUsers ?? this.canInviteUsers);
}

extension ChatEventLinkedChatChangedExtensions on ChatEventLinkedChatChanged {
  ChatEventLinkedChatChanged copy(
          {int? oldLinkedChatId, int? newLinkedChatId}) =>
      ChatEventLinkedChatChanged(
          oldLinkedChatId: oldLinkedChatId ?? this.oldLinkedChatId,
          newLinkedChatId: newLinkedChatId ?? this.newLinkedChatId);
}

extension ChatEventSlowModeDelayChangedExtensions
    on ChatEventSlowModeDelayChanged {
  ChatEventSlowModeDelayChanged copy(
          {int? oldSlowModeDelay, int? newSlowModeDelay}) =>
      ChatEventSlowModeDelayChanged(
          oldSlowModeDelay: oldSlowModeDelay ?? this.oldSlowModeDelay,
          newSlowModeDelay: newSlowModeDelay ?? this.newSlowModeDelay);
}

extension ChatEventMessageTtlSettingChangedExtensions
    on ChatEventMessageTtlSettingChanged {
  ChatEventMessageTtlSettingChanged copy(
          {int? oldMessageTtlSetting, int? newMessageTtlSetting}) =>
      ChatEventMessageTtlSettingChanged(
          oldMessageTtlSetting:
              oldMessageTtlSetting ?? this.oldMessageTtlSetting,
          newMessageTtlSetting:
              newMessageTtlSetting ?? this.newMessageTtlSetting);
}

extension ChatEventSignMessagesToggledExtensions
    on ChatEventSignMessagesToggled {
  ChatEventSignMessagesToggled copy({bool? signMessages}) =>
      ChatEventSignMessagesToggled(
          signMessages: signMessages ?? this.signMessages);
}

extension ChatEventStickerSetChangedExtensions on ChatEventStickerSetChanged {
  ChatEventStickerSetChanged copy(
          {int? oldStickerSetId, int? newStickerSetId}) =>
      ChatEventStickerSetChanged(
          oldStickerSetId: oldStickerSetId ?? this.oldStickerSetId,
          newStickerSetId: newStickerSetId ?? this.newStickerSetId);
}

extension ChatEventLocationChangedExtensions on ChatEventLocationChanged {
  ChatEventLocationChanged copy(
          {ChatLocation? oldLocation, ChatLocation? newLocation}) =>
      ChatEventLocationChanged(
          oldLocation: oldLocation ?? this.oldLocation,
          newLocation: newLocation ?? this.newLocation);
}

extension ChatEventIsAllHistoryAvailableToggledExtensions
    on ChatEventIsAllHistoryAvailableToggled {
  ChatEventIsAllHistoryAvailableToggled copy({bool? isAllHistoryAvailable}) =>
      ChatEventIsAllHistoryAvailableToggled(
          isAllHistoryAvailable:
              isAllHistoryAvailable ?? this.isAllHistoryAvailable);
}

extension ChatEventInviteLinkEditedExtensions on ChatEventInviteLinkEdited {
  ChatEventInviteLinkEdited copy(
          {ChatInviteLink? oldInviteLink, ChatInviteLink? newInviteLink}) =>
      ChatEventInviteLinkEdited(
          oldInviteLink: oldInviteLink ?? this.oldInviteLink,
          newInviteLink: newInviteLink ?? this.newInviteLink);
}

extension ChatEventInviteLinkRevokedExtensions on ChatEventInviteLinkRevoked {
  ChatEventInviteLinkRevoked copy({ChatInviteLink? inviteLink}) =>
      ChatEventInviteLinkRevoked(inviteLink: inviteLink ?? this.inviteLink);
}

extension ChatEventInviteLinkDeletedExtensions on ChatEventInviteLinkDeleted {
  ChatEventInviteLinkDeleted copy({ChatInviteLink? inviteLink}) =>
      ChatEventInviteLinkDeleted(inviteLink: inviteLink ?? this.inviteLink);
}

extension ChatEventVoiceChatCreatedExtensions on ChatEventVoiceChatCreated {
  ChatEventVoiceChatCreated copy({int? groupCallId}) =>
      ChatEventVoiceChatCreated(groupCallId: groupCallId ?? this.groupCallId);
}

extension ChatEventVoiceChatDiscardedExtensions on ChatEventVoiceChatDiscarded {
  ChatEventVoiceChatDiscarded copy({int? groupCallId}) =>
      ChatEventVoiceChatDiscarded(groupCallId: groupCallId ?? this.groupCallId);
}

extension ChatEventVoiceChatParticipantIsMutedToggledExtensions
    on ChatEventVoiceChatParticipantIsMutedToggled {
  ChatEventVoiceChatParticipantIsMutedToggled copy(
          {MessageSender? participant, bool? isMuted}) =>
      ChatEventVoiceChatParticipantIsMutedToggled(
          participant: participant ?? this.participant,
          isMuted: isMuted ?? this.isMuted);
}

extension ChatEventVoiceChatParticipantVolumeLevelChangedExtensions
    on ChatEventVoiceChatParticipantVolumeLevelChanged {
  ChatEventVoiceChatParticipantVolumeLevelChanged copy(
          {MessageSender? participant, int? volumeLevel}) =>
      ChatEventVoiceChatParticipantVolumeLevelChanged(
          participant: participant ?? this.participant,
          volumeLevel: volumeLevel ?? this.volumeLevel);
}

extension ChatEventVoiceChatMuteNewParticipantsToggledExtensions
    on ChatEventVoiceChatMuteNewParticipantsToggled {
  ChatEventVoiceChatMuteNewParticipantsToggled copy(
          {bool? muteNewParticipants}) =>
      ChatEventVoiceChatMuteNewParticipantsToggled(
          muteNewParticipants: muteNewParticipants ?? this.muteNewParticipants);
}

extension ChatEventExtensions on ChatEvent {
  ChatEvent copy({int? id, int? date, int? userId, ChatEventAction? action}) =>
      ChatEvent(
          id: id ?? this.id,
          date: date ?? this.date,
          userId: userId ?? this.userId,
          action: action ?? this.action);
}

extension ChatEventsExtensions on ChatEvents {
  ChatEvents copy({List<ChatEvent>? events}) =>
      ChatEvents(events: events ?? this.events);
}

extension ChatEventLogFiltersExtensions on ChatEventLogFilters {
  ChatEventLogFilters copy(
          {bool? messageEdits,
          bool? messageDeletions,
          bool? messagePins,
          bool? memberJoins,
          bool? memberLeaves,
          bool? memberInvites,
          bool? memberPromotions,
          bool? memberRestrictions,
          bool? infoChanges,
          bool? settingChanges,
          bool? inviteLinkChanges,
          bool? voiceChatChanges}) =>
      ChatEventLogFilters(
          messageEdits: messageEdits ?? this.messageEdits,
          messageDeletions: messageDeletions ?? this.messageDeletions,
          messagePins: messagePins ?? this.messagePins,
          memberJoins: memberJoins ?? this.memberJoins,
          memberLeaves: memberLeaves ?? this.memberLeaves,
          memberInvites: memberInvites ?? this.memberInvites,
          memberPromotions: memberPromotions ?? this.memberPromotions,
          memberRestrictions: memberRestrictions ?? this.memberRestrictions,
          infoChanges: infoChanges ?? this.infoChanges,
          settingChanges: settingChanges ?? this.settingChanges,
          inviteLinkChanges: inviteLinkChanges ?? this.inviteLinkChanges,
          voiceChatChanges: voiceChatChanges ?? this.voiceChatChanges);
}

extension LanguagePackStringValueExtensions on LanguagePackStringValue {
  TResult map<TResult extends Object?>(
      {required TResult Function(LanguagePackStringValueOrdinary value)
          ordinary,
      required TResult Function(LanguagePackStringValuePluralized value)
          pluralized,
      required TResult Function(LanguagePackStringValueDeleted value)
          deleted}) {
    switch (this.getConstructor()) {
      case LanguagePackStringValueOrdinary.CONSTRUCTOR:
        return ordinary.call(this as LanguagePackStringValueOrdinary);
      case LanguagePackStringValuePluralized.CONSTRUCTOR:
        return pluralized.call(this as LanguagePackStringValuePluralized);
      case LanguagePackStringValueDeleted.CONSTRUCTOR:
        return deleted.call(this as LanguagePackStringValueDeleted);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension LanguagePackStringValueOrdinaryExtensions
    on LanguagePackStringValueOrdinary {
  LanguagePackStringValueOrdinary copy({String? value}) =>
      LanguagePackStringValueOrdinary(value: value ?? this.value);
}

extension LanguagePackStringValuePluralizedExtensions
    on LanguagePackStringValuePluralized {
  LanguagePackStringValuePluralized copy(
          {String? zeroValue,
          String? oneValue,
          String? twoValue,
          String? fewValue,
          String? manyValue,
          String? otherValue}) =>
      LanguagePackStringValuePluralized(
          zeroValue: zeroValue ?? this.zeroValue,
          oneValue: oneValue ?? this.oneValue,
          twoValue: twoValue ?? this.twoValue,
          fewValue: fewValue ?? this.fewValue,
          manyValue: manyValue ?? this.manyValue,
          otherValue: otherValue ?? this.otherValue);
}

extension LanguagePackStringExtensions on LanguagePackString {
  LanguagePackString copy({String? key, LanguagePackStringValue? value}) =>
      LanguagePackString(key: key ?? this.key, value: value ?? this.value);
}

extension LanguagePackStringsExtensions on LanguagePackStrings {
  LanguagePackStrings copy({List<LanguagePackString>? strings}) =>
      LanguagePackStrings(strings: strings ?? this.strings);
}

extension LanguagePackInfoExtensions on LanguagePackInfo {
  LanguagePackInfo copy(
          {String? id,
          String? baseLanguagePackId,
          String? name,
          String? nativeName,
          String? pluralCode,
          bool? isOfficial,
          bool? isRtl,
          bool? isBeta,
          bool? isInstalled,
          int? totalStringCount,
          int? translatedStringCount,
          int? localStringCount,
          String? translationUrl}) =>
      LanguagePackInfo(
          id: id ?? this.id,
          baseLanguagePackId: baseLanguagePackId ?? this.baseLanguagePackId,
          name: name ?? this.name,
          nativeName: nativeName ?? this.nativeName,
          pluralCode: pluralCode ?? this.pluralCode,
          isOfficial: isOfficial ?? this.isOfficial,
          isRtl: isRtl ?? this.isRtl,
          isBeta: isBeta ?? this.isBeta,
          isInstalled: isInstalled ?? this.isInstalled,
          totalStringCount: totalStringCount ?? this.totalStringCount,
          translatedStringCount:
              translatedStringCount ?? this.translatedStringCount,
          localStringCount: localStringCount ?? this.localStringCount,
          translationUrl: translationUrl ?? this.translationUrl);
}

extension LocalizationTargetInfoExtensions on LocalizationTargetInfo {
  LocalizationTargetInfo copy({List<LanguagePackInfo>? languagePacks}) =>
      LocalizationTargetInfo(
          languagePacks: languagePacks ?? this.languagePacks);
}

extension DeviceTokenExtensions on DeviceToken {
  TResult map<TResult extends Object?>(
      {required TResult Function(DeviceTokenFirebaseCloudMessaging value)
          firebaseCloudMessaging,
      required TResult Function(DeviceTokenApplePush value) applePush,
      required TResult Function(DeviceTokenApplePushVoIP value) applePushVoIP,
      required TResult Function(DeviceTokenWindowsPush value) windowsPush,
      required TResult Function(DeviceTokenMicrosoftPush value) microsoftPush,
      required TResult Function(DeviceTokenMicrosoftPushVoIP value)
          microsoftPushVoIP,
      required TResult Function(DeviceTokenWebPush value) webPush,
      required TResult Function(DeviceTokenSimplePush value) simplePush,
      required TResult Function(DeviceTokenUbuntuPush value) ubuntuPush,
      required TResult Function(DeviceTokenBlackBerryPush value) blackBerryPush,
      required TResult Function(DeviceTokenTizenPush value) tizenPush}) {
    switch (this.getConstructor()) {
      case DeviceTokenFirebaseCloudMessaging.CONSTRUCTOR:
        return firebaseCloudMessaging
            .call(this as DeviceTokenFirebaseCloudMessaging);
      case DeviceTokenApplePush.CONSTRUCTOR:
        return applePush.call(this as DeviceTokenApplePush);
      case DeviceTokenApplePushVoIP.CONSTRUCTOR:
        return applePushVoIP.call(this as DeviceTokenApplePushVoIP);
      case DeviceTokenWindowsPush.CONSTRUCTOR:
        return windowsPush.call(this as DeviceTokenWindowsPush);
      case DeviceTokenMicrosoftPush.CONSTRUCTOR:
        return microsoftPush.call(this as DeviceTokenMicrosoftPush);
      case DeviceTokenMicrosoftPushVoIP.CONSTRUCTOR:
        return microsoftPushVoIP.call(this as DeviceTokenMicrosoftPushVoIP);
      case DeviceTokenWebPush.CONSTRUCTOR:
        return webPush.call(this as DeviceTokenWebPush);
      case DeviceTokenSimplePush.CONSTRUCTOR:
        return simplePush.call(this as DeviceTokenSimplePush);
      case DeviceTokenUbuntuPush.CONSTRUCTOR:
        return ubuntuPush.call(this as DeviceTokenUbuntuPush);
      case DeviceTokenBlackBerryPush.CONSTRUCTOR:
        return blackBerryPush.call(this as DeviceTokenBlackBerryPush);
      case DeviceTokenTizenPush.CONSTRUCTOR:
        return tizenPush.call(this as DeviceTokenTizenPush);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension DeviceTokenFirebaseCloudMessagingExtensions
    on DeviceTokenFirebaseCloudMessaging {
  DeviceTokenFirebaseCloudMessaging copy({String? token, bool? encrypt}) =>
      DeviceTokenFirebaseCloudMessaging(
          token: token ?? this.token, encrypt: encrypt ?? this.encrypt);
}

extension DeviceTokenApplePushExtensions on DeviceTokenApplePush {
  DeviceTokenApplePush copy({String? deviceToken, bool? isAppSandbox}) =>
      DeviceTokenApplePush(
          deviceToken: deviceToken ?? this.deviceToken,
          isAppSandbox: isAppSandbox ?? this.isAppSandbox);
}

extension DeviceTokenApplePushVoIPExtensions on DeviceTokenApplePushVoIP {
  DeviceTokenApplePushVoIP copy(
          {String? deviceToken, bool? isAppSandbox, bool? encrypt}) =>
      DeviceTokenApplePushVoIP(
          deviceToken: deviceToken ?? this.deviceToken,
          isAppSandbox: isAppSandbox ?? this.isAppSandbox,
          encrypt: encrypt ?? this.encrypt);
}

extension DeviceTokenWindowsPushExtensions on DeviceTokenWindowsPush {
  DeviceTokenWindowsPush copy({String? accessToken}) =>
      DeviceTokenWindowsPush(accessToken: accessToken ?? this.accessToken);
}

extension DeviceTokenMicrosoftPushExtensions on DeviceTokenMicrosoftPush {
  DeviceTokenMicrosoftPush copy({String? channelUri}) =>
      DeviceTokenMicrosoftPush(channelUri: channelUri ?? this.channelUri);
}

extension DeviceTokenMicrosoftPushVoIPExtensions
    on DeviceTokenMicrosoftPushVoIP {
  DeviceTokenMicrosoftPushVoIP copy({String? channelUri}) =>
      DeviceTokenMicrosoftPushVoIP(channelUri: channelUri ?? this.channelUri);
}

extension DeviceTokenWebPushExtensions on DeviceTokenWebPush {
  DeviceTokenWebPush copy(
          {String? endpoint, String? p256dhBase64url, String? authBase64url}) =>
      DeviceTokenWebPush(
          endpoint: endpoint ?? this.endpoint,
          p256dhBase64url: p256dhBase64url ?? this.p256dhBase64url,
          authBase64url: authBase64url ?? this.authBase64url);
}

extension DeviceTokenSimplePushExtensions on DeviceTokenSimplePush {
  DeviceTokenSimplePush copy({String? endpoint}) =>
      DeviceTokenSimplePush(endpoint: endpoint ?? this.endpoint);
}

extension DeviceTokenUbuntuPushExtensions on DeviceTokenUbuntuPush {
  DeviceTokenUbuntuPush copy({String? token}) =>
      DeviceTokenUbuntuPush(token: token ?? this.token);
}

extension DeviceTokenBlackBerryPushExtensions on DeviceTokenBlackBerryPush {
  DeviceTokenBlackBerryPush copy({String? token}) =>
      DeviceTokenBlackBerryPush(token: token ?? this.token);
}

extension DeviceTokenTizenPushExtensions on DeviceTokenTizenPush {
  DeviceTokenTizenPush copy({String? regId}) =>
      DeviceTokenTizenPush(regId: regId ?? this.regId);
}

extension PushReceiverIdExtensions on PushReceiverId {
  PushReceiverId copy({int? id}) => PushReceiverId(id: id ?? this.id);
}

extension BackgroundFillExtensions on BackgroundFill {
  TResult map<TResult extends Object?>(
      {required TResult Function(BackgroundFillSolid value) solid,
      required TResult Function(BackgroundFillGradient value) gradient}) {
    switch (this.getConstructor()) {
      case BackgroundFillSolid.CONSTRUCTOR:
        return solid.call(this as BackgroundFillSolid);
      case BackgroundFillGradient.CONSTRUCTOR:
        return gradient.call(this as BackgroundFillGradient);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension BackgroundFillSolidExtensions on BackgroundFillSolid {
  BackgroundFillSolid copy({int? color}) =>
      BackgroundFillSolid(color: color ?? this.color);
}

extension BackgroundFillGradientExtensions on BackgroundFillGradient {
  BackgroundFillGradient copy(
          {int? topColor, int? bottomColor, int? rotationAngle}) =>
      BackgroundFillGradient(
          topColor: topColor ?? this.topColor,
          bottomColor: bottomColor ?? this.bottomColor,
          rotationAngle: rotationAngle ?? this.rotationAngle);
}

extension BackgroundTypeExtensions on BackgroundType {
  TResult map<TResult extends Object?>(
      {required TResult Function(BackgroundTypeWallpaper value) wallpaper,
      required TResult Function(BackgroundTypePattern value) pattern,
      required TResult Function(BackgroundTypeFill value) fill}) {
    switch (this.getConstructor()) {
      case BackgroundTypeWallpaper.CONSTRUCTOR:
        return wallpaper.call(this as BackgroundTypeWallpaper);
      case BackgroundTypePattern.CONSTRUCTOR:
        return pattern.call(this as BackgroundTypePattern);
      case BackgroundTypeFill.CONSTRUCTOR:
        return fill.call(this as BackgroundTypeFill);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension BackgroundTypeWallpaperExtensions on BackgroundTypeWallpaper {
  BackgroundTypeWallpaper copy({bool? isBlurred, bool? isMoving}) =>
      BackgroundTypeWallpaper(
          isBlurred: isBlurred ?? this.isBlurred,
          isMoving: isMoving ?? this.isMoving);
}

extension BackgroundTypePatternExtensions on BackgroundTypePattern {
  BackgroundTypePattern copy(
          {BackgroundFill? fill, int? intensity, bool? isMoving}) =>
      BackgroundTypePattern(
          fill: fill ?? this.fill,
          intensity: intensity ?? this.intensity,
          isMoving: isMoving ?? this.isMoving);
}

extension BackgroundTypeFillExtensions on BackgroundTypeFill {
  BackgroundTypeFill copy({BackgroundFill? fill}) =>
      BackgroundTypeFill(fill: fill ?? this.fill);
}

extension BackgroundExtensions on Background {
  Background copy(
          {int? id,
          bool? isDefault,
          bool? isDark,
          String? name,
          Document? document,
          BackgroundType? type}) =>
      Background(
          id: id ?? this.id,
          isDefault: isDefault ?? this.isDefault,
          isDark: isDark ?? this.isDark,
          name: name ?? this.name,
          document: document ?? this.document,
          type: type ?? this.type);
}

extension BackgroundsExtensions on Backgrounds {
  Backgrounds copy({List<Background>? backgrounds}) =>
      Backgrounds(backgrounds: backgrounds ?? this.backgrounds);
}

extension InputBackgroundExtensions on InputBackground {
  TResult map<TResult extends Object?>(
      {required TResult Function(InputBackgroundLocal value) local,
      required TResult Function(InputBackgroundRemote value) remote}) {
    switch (this.getConstructor()) {
      case InputBackgroundLocal.CONSTRUCTOR:
        return local.call(this as InputBackgroundLocal);
      case InputBackgroundRemote.CONSTRUCTOR:
        return remote.call(this as InputBackgroundRemote);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension InputBackgroundLocalExtensions on InputBackgroundLocal {
  InputBackgroundLocal copy({InputFile? background}) =>
      InputBackgroundLocal(background: background ?? this.background);
}

extension InputBackgroundRemoteExtensions on InputBackgroundRemote {
  InputBackgroundRemote copy({int? backgroundId}) =>
      InputBackgroundRemote(backgroundId: backgroundId ?? this.backgroundId);
}

extension HashtagsExtensions on Hashtags {
  Hashtags copy({List<String>? hashtags}) =>
      Hashtags(hashtags: hashtags ?? this.hashtags);
}

extension CanTransferOwnershipResultExtensions on CanTransferOwnershipResult {
  TResult map<TResult extends Object?>(
      {required TResult Function(CanTransferOwnershipResultOk value) ok,
      required TResult Function(CanTransferOwnershipResultPasswordNeeded value)
          passwordNeeded,
      required TResult Function(
              CanTransferOwnershipResultPasswordTooFresh value)
          passwordTooFresh,
      required TResult Function(CanTransferOwnershipResultSessionTooFresh value)
          sessionTooFresh}) {
    switch (this.getConstructor()) {
      case CanTransferOwnershipResultOk.CONSTRUCTOR:
        return ok.call(this as CanTransferOwnershipResultOk);
      case CanTransferOwnershipResultPasswordNeeded.CONSTRUCTOR:
        return passwordNeeded
            .call(this as CanTransferOwnershipResultPasswordNeeded);
      case CanTransferOwnershipResultPasswordTooFresh.CONSTRUCTOR:
        return passwordTooFresh
            .call(this as CanTransferOwnershipResultPasswordTooFresh);
      case CanTransferOwnershipResultSessionTooFresh.CONSTRUCTOR:
        return sessionTooFresh
            .call(this as CanTransferOwnershipResultSessionTooFresh);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension CanTransferOwnershipResultPasswordTooFreshExtensions
    on CanTransferOwnershipResultPasswordTooFresh {
  CanTransferOwnershipResultPasswordTooFresh copy({int? retryAfter}) =>
      CanTransferOwnershipResultPasswordTooFresh(
          retryAfter: retryAfter ?? this.retryAfter);
}

extension CanTransferOwnershipResultSessionTooFreshExtensions
    on CanTransferOwnershipResultSessionTooFresh {
  CanTransferOwnershipResultSessionTooFresh copy({int? retryAfter}) =>
      CanTransferOwnershipResultSessionTooFresh(
          retryAfter: retryAfter ?? this.retryAfter);
}

extension CheckChatUsernameResultExtensions on CheckChatUsernameResult {
  TResult map<TResult extends Object?>(
      {required TResult Function(CheckChatUsernameResultOk value) ok,
      required TResult Function(CheckChatUsernameResultUsernameInvalid value)
          usernameInvalid,
      required TResult Function(CheckChatUsernameResultUsernameOccupied value)
          usernameOccupied,
      required TResult Function(CheckChatUsernameResultPublicChatsTooMuch value)
          publicChatsTooMuch,
      required TResult Function(
              CheckChatUsernameResultPublicGroupsUnavailable value)
          publicGroupsUnavailable}) {
    switch (this.getConstructor()) {
      case CheckChatUsernameResultOk.CONSTRUCTOR:
        return ok.call(this as CheckChatUsernameResultOk);
      case CheckChatUsernameResultUsernameInvalid.CONSTRUCTOR:
        return usernameInvalid
            .call(this as CheckChatUsernameResultUsernameInvalid);
      case CheckChatUsernameResultUsernameOccupied.CONSTRUCTOR:
        return usernameOccupied
            .call(this as CheckChatUsernameResultUsernameOccupied);
      case CheckChatUsernameResultPublicChatsTooMuch.CONSTRUCTOR:
        return publicChatsTooMuch
            .call(this as CheckChatUsernameResultPublicChatsTooMuch);
      case CheckChatUsernameResultPublicGroupsUnavailable.CONSTRUCTOR:
        return publicGroupsUnavailable
            .call(this as CheckChatUsernameResultPublicGroupsUnavailable);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension MessageFileTypeExtensions on MessageFileType {
  TResult map<TResult extends Object?>(
      {required TResult Function(MessageFileTypePrivate value) private,
      required TResult Function(MessageFileTypeGroup value) group,
      required TResult Function(MessageFileTypeUnknown value) unknown}) {
    switch (this.getConstructor()) {
      case MessageFileTypePrivate.CONSTRUCTOR:
        return private.call(this as MessageFileTypePrivate);
      case MessageFileTypeGroup.CONSTRUCTOR:
        return group.call(this as MessageFileTypeGroup);
      case MessageFileTypeUnknown.CONSTRUCTOR:
        return unknown.call(this as MessageFileTypeUnknown);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension MessageFileTypePrivateExtensions on MessageFileTypePrivate {
  MessageFileTypePrivate copy({String? name}) =>
      MessageFileTypePrivate(name: name ?? this.name);
}

extension MessageFileTypeGroupExtensions on MessageFileTypeGroup {
  MessageFileTypeGroup copy({String? title}) =>
      MessageFileTypeGroup(title: title ?? this.title);
}

extension PushMessageContentExtensions on PushMessageContent {
  TResult map<TResult extends Object?>(
      {required TResult Function(PushMessageContentHidden value) hidden,
      required TResult Function(PushMessageContentAnimation value) animation,
      required TResult Function(PushMessageContentAudio value) audio,
      required TResult Function(PushMessageContentContact value) contact,
      required TResult Function(PushMessageContentContactRegistered value)
          contactRegistered,
      required TResult Function(PushMessageContentDocument value) document,
      required TResult Function(PushMessageContentGame value) game,
      required TResult Function(PushMessageContentGameScore value) gameScore,
      required TResult Function(PushMessageContentInvoice value) invoice,
      required TResult Function(PushMessageContentLocation value) location,
      required TResult Function(PushMessageContentPhoto value) photo,
      required TResult Function(PushMessageContentPoll value) poll,
      required TResult Function(PushMessageContentScreenshotTaken value)
          screenshotTaken,
      required TResult Function(PushMessageContentSticker value) sticker,
      required TResult Function(PushMessageContentText value) text,
      required TResult Function(PushMessageContentVideo value) video,
      required TResult Function(PushMessageContentVideoNote value) videoNote,
      required TResult Function(PushMessageContentVoiceNote value) voiceNote,
      required TResult Function(PushMessageContentBasicGroupChatCreate value)
          basicGroupChatCreate,
      required TResult Function(PushMessageContentChatAddMembers value)
          chatAddMembers,
      required TResult Function(PushMessageContentChatChangePhoto value)
          chatChangePhoto,
      required TResult Function(PushMessageContentChatChangeTitle value)
          chatChangeTitle,
      required TResult Function(PushMessageContentChatDeleteMember value)
          chatDeleteMember,
      required TResult Function(PushMessageContentChatJoinByLink value)
          chatJoinByLink,
      required TResult Function(PushMessageContentMessageForwards value)
          messageForwards,
      required TResult Function(PushMessageContentMediaAlbum value)
          mediaAlbum}) {
    switch (this.getConstructor()) {
      case PushMessageContentHidden.CONSTRUCTOR:
        return hidden.call(this as PushMessageContentHidden);
      case PushMessageContentAnimation.CONSTRUCTOR:
        return animation.call(this as PushMessageContentAnimation);
      case PushMessageContentAudio.CONSTRUCTOR:
        return audio.call(this as PushMessageContentAudio);
      case PushMessageContentContact.CONSTRUCTOR:
        return contact.call(this as PushMessageContentContact);
      case PushMessageContentContactRegistered.CONSTRUCTOR:
        return contactRegistered
            .call(this as PushMessageContentContactRegistered);
      case PushMessageContentDocument.CONSTRUCTOR:
        return document.call(this as PushMessageContentDocument);
      case PushMessageContentGame.CONSTRUCTOR:
        return game.call(this as PushMessageContentGame);
      case PushMessageContentGameScore.CONSTRUCTOR:
        return gameScore.call(this as PushMessageContentGameScore);
      case PushMessageContentInvoice.CONSTRUCTOR:
        return invoice.call(this as PushMessageContentInvoice);
      case PushMessageContentLocation.CONSTRUCTOR:
        return location.call(this as PushMessageContentLocation);
      case PushMessageContentPhoto.CONSTRUCTOR:
        return photo.call(this as PushMessageContentPhoto);
      case PushMessageContentPoll.CONSTRUCTOR:
        return poll.call(this as PushMessageContentPoll);
      case PushMessageContentScreenshotTaken.CONSTRUCTOR:
        return screenshotTaken.call(this as PushMessageContentScreenshotTaken);
      case PushMessageContentSticker.CONSTRUCTOR:
        return sticker.call(this as PushMessageContentSticker);
      case PushMessageContentText.CONSTRUCTOR:
        return text.call(this as PushMessageContentText);
      case PushMessageContentVideo.CONSTRUCTOR:
        return video.call(this as PushMessageContentVideo);
      case PushMessageContentVideoNote.CONSTRUCTOR:
        return videoNote.call(this as PushMessageContentVideoNote);
      case PushMessageContentVoiceNote.CONSTRUCTOR:
        return voiceNote.call(this as PushMessageContentVoiceNote);
      case PushMessageContentBasicGroupChatCreate.CONSTRUCTOR:
        return basicGroupChatCreate
            .call(this as PushMessageContentBasicGroupChatCreate);
      case PushMessageContentChatAddMembers.CONSTRUCTOR:
        return chatAddMembers.call(this as PushMessageContentChatAddMembers);
      case PushMessageContentChatChangePhoto.CONSTRUCTOR:
        return chatChangePhoto.call(this as PushMessageContentChatChangePhoto);
      case PushMessageContentChatChangeTitle.CONSTRUCTOR:
        return chatChangeTitle.call(this as PushMessageContentChatChangeTitle);
      case PushMessageContentChatDeleteMember.CONSTRUCTOR:
        return chatDeleteMember
            .call(this as PushMessageContentChatDeleteMember);
      case PushMessageContentChatJoinByLink.CONSTRUCTOR:
        return chatJoinByLink.call(this as PushMessageContentChatJoinByLink);
      case PushMessageContentMessageForwards.CONSTRUCTOR:
        return messageForwards.call(this as PushMessageContentMessageForwards);
      case PushMessageContentMediaAlbum.CONSTRUCTOR:
        return mediaAlbum.call(this as PushMessageContentMediaAlbum);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension PushMessageContentHiddenExtensions on PushMessageContentHidden {
  PushMessageContentHidden copy({bool? isPinned}) =>
      PushMessageContentHidden(isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentAnimationExtensions on PushMessageContentAnimation {
  PushMessageContentAnimation copy(
          {Animation? animation, String? caption, bool? isPinned}) =>
      PushMessageContentAnimation(
          animation: animation ?? this.animation,
          caption: caption ?? this.caption,
          isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentAudioExtensions on PushMessageContentAudio {
  PushMessageContentAudio copy({Audio? audio, bool? isPinned}) =>
      PushMessageContentAudio(
          audio: audio ?? this.audio, isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentContactExtensions on PushMessageContentContact {
  PushMessageContentContact copy({String? name, bool? isPinned}) =>
      PushMessageContentContact(
          name: name ?? this.name, isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentDocumentExtensions on PushMessageContentDocument {
  PushMessageContentDocument copy({Document? document, bool? isPinned}) =>
      PushMessageContentDocument(
          document: document ?? this.document,
          isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentGameExtensions on PushMessageContentGame {
  PushMessageContentGame copy({String? title, bool? isPinned}) =>
      PushMessageContentGame(
          title: title ?? this.title, isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentGameScoreExtensions on PushMessageContentGameScore {
  PushMessageContentGameScore copy(
          {String? title, int? score, bool? isPinned}) =>
      PushMessageContentGameScore(
          title: title ?? this.title,
          score: score ?? this.score,
          isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentInvoiceExtensions on PushMessageContentInvoice {
  PushMessageContentInvoice copy({String? price, bool? isPinned}) =>
      PushMessageContentInvoice(
          price: price ?? this.price, isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentLocationExtensions on PushMessageContentLocation {
  PushMessageContentLocation copy({bool? isLive, bool? isPinned}) =>
      PushMessageContentLocation(
          isLive: isLive ?? this.isLive, isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentPhotoExtensions on PushMessageContentPhoto {
  PushMessageContentPhoto copy(
          {Photo? photo, String? caption, bool? isSecret, bool? isPinned}) =>
      PushMessageContentPhoto(
          photo: photo ?? this.photo,
          caption: caption ?? this.caption,
          isSecret: isSecret ?? this.isSecret,
          isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentPollExtensions on PushMessageContentPoll {
  PushMessageContentPoll copy(
          {String? question, bool? isRegular, bool? isPinned}) =>
      PushMessageContentPoll(
          question: question ?? this.question,
          isRegular: isRegular ?? this.isRegular,
          isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentStickerExtensions on PushMessageContentSticker {
  PushMessageContentSticker copy(
          {Sticker? sticker, String? emoji, bool? isPinned}) =>
      PushMessageContentSticker(
          sticker: sticker ?? this.sticker,
          emoji: emoji ?? this.emoji,
          isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentTextExtensions on PushMessageContentText {
  PushMessageContentText copy({String? text, bool? isPinned}) =>
      PushMessageContentText(
          text: text ?? this.text, isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentVideoExtensions on PushMessageContentVideo {
  PushMessageContentVideo copy(
          {Video? video, String? caption, bool? isSecret, bool? isPinned}) =>
      PushMessageContentVideo(
          video: video ?? this.video,
          caption: caption ?? this.caption,
          isSecret: isSecret ?? this.isSecret,
          isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentVideoNoteExtensions on PushMessageContentVideoNote {
  PushMessageContentVideoNote copy({VideoNote? videoNote, bool? isPinned}) =>
      PushMessageContentVideoNote(
          videoNote: videoNote ?? this.videoNote,
          isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentVoiceNoteExtensions on PushMessageContentVoiceNote {
  PushMessageContentVoiceNote copy({VoiceNote? voiceNote, bool? isPinned}) =>
      PushMessageContentVoiceNote(
          voiceNote: voiceNote ?? this.voiceNote,
          isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentChatAddMembersExtensions
    on PushMessageContentChatAddMembers {
  PushMessageContentChatAddMembers copy(
          {String? memberName, bool? isCurrentUser, bool? isReturned}) =>
      PushMessageContentChatAddMembers(
          memberName: memberName ?? this.memberName,
          isCurrentUser: isCurrentUser ?? this.isCurrentUser,
          isReturned: isReturned ?? this.isReturned);
}

extension PushMessageContentChatChangeTitleExtensions
    on PushMessageContentChatChangeTitle {
  PushMessageContentChatChangeTitle copy({String? title}) =>
      PushMessageContentChatChangeTitle(title: title ?? this.title);
}

extension PushMessageContentChatDeleteMemberExtensions
    on PushMessageContentChatDeleteMember {
  PushMessageContentChatDeleteMember copy(
          {String? memberName, bool? isCurrentUser, bool? isLeft}) =>
      PushMessageContentChatDeleteMember(
          memberName: memberName ?? this.memberName,
          isCurrentUser: isCurrentUser ?? this.isCurrentUser,
          isLeft: isLeft ?? this.isLeft);
}

extension PushMessageContentMessageForwardsExtensions
    on PushMessageContentMessageForwards {
  PushMessageContentMessageForwards copy({int? totalCount}) =>
      PushMessageContentMessageForwards(
          totalCount: totalCount ?? this.totalCount);
}

extension PushMessageContentMediaAlbumExtensions
    on PushMessageContentMediaAlbum {
  PushMessageContentMediaAlbum copy(
          {int? totalCount,
          bool? hasPhotos,
          bool? hasVideos,
          bool? hasAudios,
          bool? hasDocuments}) =>
      PushMessageContentMediaAlbum(
          totalCount: totalCount ?? this.totalCount,
          hasPhotos: hasPhotos ?? this.hasPhotos,
          hasVideos: hasVideos ?? this.hasVideos,
          hasAudios: hasAudios ?? this.hasAudios,
          hasDocuments: hasDocuments ?? this.hasDocuments);
}

extension NotificationTypeExtensions on NotificationType {
  TResult map<TResult extends Object?>(
      {required TResult Function(NotificationTypeNewMessage value) newMessage,
      required TResult Function(NotificationTypeNewSecretChat value)
          newSecretChat,
      required TResult Function(NotificationTypeNewCall value) newCall,
      required TResult Function(NotificationTypeNewPushMessage value)
          newPushMessage}) {
    switch (this.getConstructor()) {
      case NotificationTypeNewMessage.CONSTRUCTOR:
        return newMessage.call(this as NotificationTypeNewMessage);
      case NotificationTypeNewSecretChat.CONSTRUCTOR:
        return newSecretChat.call(this as NotificationTypeNewSecretChat);
      case NotificationTypeNewCall.CONSTRUCTOR:
        return newCall.call(this as NotificationTypeNewCall);
      case NotificationTypeNewPushMessage.CONSTRUCTOR:
        return newPushMessage.call(this as NotificationTypeNewPushMessage);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension NotificationTypeNewMessageExtensions on NotificationTypeNewMessage {
  NotificationTypeNewMessage copy({Message? message}) =>
      NotificationTypeNewMessage(message: message ?? this.message);
}

extension NotificationTypeNewCallExtensions on NotificationTypeNewCall {
  NotificationTypeNewCall copy({int? callId}) =>
      NotificationTypeNewCall(callId: callId ?? this.callId);
}

extension NotificationTypeNewPushMessageExtensions
    on NotificationTypeNewPushMessage {
  NotificationTypeNewPushMessage copy(
          {int? messageId,
          MessageSender? sender,
          String? senderName,
          bool? isOutgoing,
          PushMessageContent? content}) =>
      NotificationTypeNewPushMessage(
          messageId: messageId ?? this.messageId,
          sender: sender ?? this.sender,
          senderName: senderName ?? this.senderName,
          isOutgoing: isOutgoing ?? this.isOutgoing,
          content: content ?? this.content);
}

extension NotificationGroupTypeExtensions on NotificationGroupType {
  TResult map<TResult extends Object?>(
      {required TResult Function(NotificationGroupTypeMessages value) messages,
      required TResult Function(NotificationGroupTypeMentions value) mentions,
      required TResult Function(NotificationGroupTypeSecretChat value)
          secretChat,
      required TResult Function(NotificationGroupTypeCalls value) calls}) {
    switch (this.getConstructor()) {
      case NotificationGroupTypeMessages.CONSTRUCTOR:
        return messages.call(this as NotificationGroupTypeMessages);
      case NotificationGroupTypeMentions.CONSTRUCTOR:
        return mentions.call(this as NotificationGroupTypeMentions);
      case NotificationGroupTypeSecretChat.CONSTRUCTOR:
        return secretChat.call(this as NotificationGroupTypeSecretChat);
      case NotificationGroupTypeCalls.CONSTRUCTOR:
        return calls.call(this as NotificationGroupTypeCalls);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension NotificationExtensions on Notification {
  Notification copy(
          {int? id, int? date, bool? isSilent, NotificationType? type}) =>
      Notification(
          id: id ?? this.id,
          date: date ?? this.date,
          isSilent: isSilent ?? this.isSilent,
          type: type ?? this.type);
}

extension NotificationGroupExtensions on NotificationGroup {
  NotificationGroup copy(
          {int? id,
          NotificationGroupType? type,
          int? chatId,
          int? totalCount,
          List<Notification>? notifications}) =>
      NotificationGroup(
          id: id ?? this.id,
          type: type ?? this.type,
          chatId: chatId ?? this.chatId,
          totalCount: totalCount ?? this.totalCount,
          notifications: notifications ?? this.notifications);
}

extension OptionValueExtensions on OptionValue {
  TResult map<TResult extends Object?>(
      {required TResult Function(OptionValueBoolean value) $boolean,
      required TResult Function(OptionValueEmpty value) empty,
      required TResult Function(OptionValueInteger value) integer,
      required TResult Function(OptionValueString value) $string}) {
    switch (this.getConstructor()) {
      case OptionValueBoolean.CONSTRUCTOR:
        return $boolean.call(this as OptionValueBoolean);
      case OptionValueEmpty.CONSTRUCTOR:
        return empty.call(this as OptionValueEmpty);
      case OptionValueInteger.CONSTRUCTOR:
        return integer.call(this as OptionValueInteger);
      case OptionValueString.CONSTRUCTOR:
        return $string.call(this as OptionValueString);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension OptionValueBooleanExtensions on OptionValueBoolean {
  OptionValueBoolean copy({bool? value}) =>
      OptionValueBoolean(value: value ?? this.value);
}

extension OptionValueIntegerExtensions on OptionValueInteger {
  OptionValueInteger copy({int? value}) =>
      OptionValueInteger(value: value ?? this.value);
}

extension OptionValueStringExtensions on OptionValueString {
  OptionValueString copy({String? value}) =>
      OptionValueString(value: value ?? this.value);
}

extension JsonObjectMemberExtensions on JsonObjectMember {
  JsonObjectMember copy({String? key, JsonValue? value}) =>
      JsonObjectMember(key: key ?? this.key, value: value ?? this.value);
}

extension JsonValueExtensions on JsonValue {
  TResult map<TResult extends Object?>(
      {required TResult Function(JsonValueNull value) $null,
      required TResult Function(JsonValueBoolean value) $boolean,
      required TResult Function(JsonValueNumber value) number,
      required TResult Function(JsonValueString value) $string,
      required TResult Function(JsonValueArray value) array,
      required TResult Function(JsonValueObject value) $object}) {
    switch (this.getConstructor()) {
      case JsonValueNull.CONSTRUCTOR:
        return $null.call(this as JsonValueNull);
      case JsonValueBoolean.CONSTRUCTOR:
        return $boolean.call(this as JsonValueBoolean);
      case JsonValueNumber.CONSTRUCTOR:
        return number.call(this as JsonValueNumber);
      case JsonValueString.CONSTRUCTOR:
        return $string.call(this as JsonValueString);
      case JsonValueArray.CONSTRUCTOR:
        return array.call(this as JsonValueArray);
      case JsonValueObject.CONSTRUCTOR:
        return $object.call(this as JsonValueObject);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension JsonValueBooleanExtensions on JsonValueBoolean {
  JsonValueBoolean copy({bool? value}) =>
      JsonValueBoolean(value: value ?? this.value);
}

extension JsonValueNumberExtensions on JsonValueNumber {
  JsonValueNumber copy({double? value}) =>
      JsonValueNumber(value: value ?? this.value);
}

extension JsonValueStringExtensions on JsonValueString {
  JsonValueString copy({String? value}) =>
      JsonValueString(value: value ?? this.value);
}

extension JsonValueArrayExtensions on JsonValueArray {
  JsonValueArray copy({List<JsonValue>? values}) =>
      JsonValueArray(values: values ?? this.values);
}

extension JsonValueObjectExtensions on JsonValueObject {
  JsonValueObject copy({List<JsonObjectMember>? members}) =>
      JsonValueObject(members: members ?? this.members);
}

extension UserPrivacySettingRuleExtensions on UserPrivacySettingRule {
  TResult map<TResult extends Object?>(
      {required TResult Function(UserPrivacySettingRuleAllowAll value) allowAll,
      required TResult Function(UserPrivacySettingRuleAllowContacts value)
          allowContacts,
      required TResult Function(UserPrivacySettingRuleAllowUsers value)
          allowUsers,
      required TResult Function(UserPrivacySettingRuleAllowChatMembers value)
          allowChatMembers,
      required TResult Function(UserPrivacySettingRuleRestrictAll value)
          restrictAll,
      required TResult Function(UserPrivacySettingRuleRestrictContacts value)
          restrictContacts,
      required TResult Function(UserPrivacySettingRuleRestrictUsers value)
          restrictUsers,
      required TResult Function(UserPrivacySettingRuleRestrictChatMembers value)
          restrictChatMembers}) {
    switch (this.getConstructor()) {
      case UserPrivacySettingRuleAllowAll.CONSTRUCTOR:
        return allowAll.call(this as UserPrivacySettingRuleAllowAll);
      case UserPrivacySettingRuleAllowContacts.CONSTRUCTOR:
        return allowContacts.call(this as UserPrivacySettingRuleAllowContacts);
      case UserPrivacySettingRuleAllowUsers.CONSTRUCTOR:
        return allowUsers.call(this as UserPrivacySettingRuleAllowUsers);
      case UserPrivacySettingRuleAllowChatMembers.CONSTRUCTOR:
        return allowChatMembers
            .call(this as UserPrivacySettingRuleAllowChatMembers);
      case UserPrivacySettingRuleRestrictAll.CONSTRUCTOR:
        return restrictAll.call(this as UserPrivacySettingRuleRestrictAll);
      case UserPrivacySettingRuleRestrictContacts.CONSTRUCTOR:
        return restrictContacts
            .call(this as UserPrivacySettingRuleRestrictContacts);
      case UserPrivacySettingRuleRestrictUsers.CONSTRUCTOR:
        return restrictUsers.call(this as UserPrivacySettingRuleRestrictUsers);
      case UserPrivacySettingRuleRestrictChatMembers.CONSTRUCTOR:
        return restrictChatMembers
            .call(this as UserPrivacySettingRuleRestrictChatMembers);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension UserPrivacySettingRuleAllowUsersExtensions
    on UserPrivacySettingRuleAllowUsers {
  UserPrivacySettingRuleAllowUsers copy({List<int>? userIds}) =>
      UserPrivacySettingRuleAllowUsers(userIds: userIds ?? this.userIds);
}

extension UserPrivacySettingRuleAllowChatMembersExtensions
    on UserPrivacySettingRuleAllowChatMembers {
  UserPrivacySettingRuleAllowChatMembers copy({List<int>? chatIds}) =>
      UserPrivacySettingRuleAllowChatMembers(chatIds: chatIds ?? this.chatIds);
}

extension UserPrivacySettingRuleRestrictUsersExtensions
    on UserPrivacySettingRuleRestrictUsers {
  UserPrivacySettingRuleRestrictUsers copy({List<int>? userIds}) =>
      UserPrivacySettingRuleRestrictUsers(userIds: userIds ?? this.userIds);
}

extension UserPrivacySettingRuleRestrictChatMembersExtensions
    on UserPrivacySettingRuleRestrictChatMembers {
  UserPrivacySettingRuleRestrictChatMembers copy({List<int>? chatIds}) =>
      UserPrivacySettingRuleRestrictChatMembers(
          chatIds: chatIds ?? this.chatIds);
}

extension UserPrivacySettingRulesExtensions on UserPrivacySettingRules {
  UserPrivacySettingRules copy({List<UserPrivacySettingRule>? rules}) =>
      UserPrivacySettingRules(rules: rules ?? this.rules);
}

extension UserPrivacySettingExtensions on UserPrivacySetting {
  TResult map<TResult extends Object?>(
      {required TResult Function(UserPrivacySettingShowStatus value) showStatus,
      required TResult Function(UserPrivacySettingShowProfilePhoto value)
          showProfilePhoto,
      required TResult Function(
              UserPrivacySettingShowLinkInForwardedMessages value)
          showLinkInForwardedMessages,
      required TResult Function(UserPrivacySettingShowPhoneNumber value)
          showPhoneNumber,
      required TResult Function(UserPrivacySettingAllowChatInvites value)
          allowChatInvites,
      required TResult Function(UserPrivacySettingAllowCalls value) allowCalls,
      required TResult Function(UserPrivacySettingAllowPeerToPeerCalls value)
          allowPeerToPeerCalls,
      required TResult Function(
              UserPrivacySettingAllowFindingByPhoneNumber value)
          allowFindingByPhoneNumber}) {
    switch (this.getConstructor()) {
      case UserPrivacySettingShowStatus.CONSTRUCTOR:
        return showStatus.call(this as UserPrivacySettingShowStatus);
      case UserPrivacySettingShowProfilePhoto.CONSTRUCTOR:
        return showProfilePhoto
            .call(this as UserPrivacySettingShowProfilePhoto);
      case UserPrivacySettingShowLinkInForwardedMessages.CONSTRUCTOR:
        return showLinkInForwardedMessages
            .call(this as UserPrivacySettingShowLinkInForwardedMessages);
      case UserPrivacySettingShowPhoneNumber.CONSTRUCTOR:
        return showPhoneNumber.call(this as UserPrivacySettingShowPhoneNumber);
      case UserPrivacySettingAllowChatInvites.CONSTRUCTOR:
        return allowChatInvites
            .call(this as UserPrivacySettingAllowChatInvites);
      case UserPrivacySettingAllowCalls.CONSTRUCTOR:
        return allowCalls.call(this as UserPrivacySettingAllowCalls);
      case UserPrivacySettingAllowPeerToPeerCalls.CONSTRUCTOR:
        return allowPeerToPeerCalls
            .call(this as UserPrivacySettingAllowPeerToPeerCalls);
      case UserPrivacySettingAllowFindingByPhoneNumber.CONSTRUCTOR:
        return allowFindingByPhoneNumber
            .call(this as UserPrivacySettingAllowFindingByPhoneNumber);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension AccountTtlExtensions on AccountTtl {
  AccountTtl copy({int? days}) => AccountTtl(days: days ?? this.days);
}

extension SessionExtensions on Session {
  Session copy(
          {int? id,
          bool? isCurrent,
          bool? isPasswordPending,
          int? apiId,
          String? applicationName,
          String? applicationVersion,
          bool? isOfficialApplication,
          String? deviceModel,
          String? platform,
          String? systemVersion,
          int? logInDate,
          int? lastActiveDate,
          String? ip,
          String? country,
          String? region}) =>
      Session(
          id: id ?? this.id,
          isCurrent: isCurrent ?? this.isCurrent,
          isPasswordPending: isPasswordPending ?? this.isPasswordPending,
          apiId: apiId ?? this.apiId,
          applicationName: applicationName ?? this.applicationName,
          applicationVersion: applicationVersion ?? this.applicationVersion,
          isOfficialApplication:
              isOfficialApplication ?? this.isOfficialApplication,
          deviceModel: deviceModel ?? this.deviceModel,
          platform: platform ?? this.platform,
          systemVersion: systemVersion ?? this.systemVersion,
          logInDate: logInDate ?? this.logInDate,
          lastActiveDate: lastActiveDate ?? this.lastActiveDate,
          ip: ip ?? this.ip,
          country: country ?? this.country,
          region: region ?? this.region);
}

extension SessionsExtensions on Sessions {
  Sessions copy({List<Session>? sessions}) =>
      Sessions(sessions: sessions ?? this.sessions);
}

extension ConnectedWebsiteExtensions on ConnectedWebsite {
  ConnectedWebsite copy(
          {int? id,
          String? domainName,
          int? botUserId,
          String? browser,
          String? platform,
          int? logInDate,
          int? lastActiveDate,
          String? ip,
          String? location}) =>
      ConnectedWebsite(
          id: id ?? this.id,
          domainName: domainName ?? this.domainName,
          botUserId: botUserId ?? this.botUserId,
          browser: browser ?? this.browser,
          platform: platform ?? this.platform,
          logInDate: logInDate ?? this.logInDate,
          lastActiveDate: lastActiveDate ?? this.lastActiveDate,
          ip: ip ?? this.ip,
          location: location ?? this.location);
}

extension ConnectedWebsitesExtensions on ConnectedWebsites {
  ConnectedWebsites copy({List<ConnectedWebsite>? websites}) =>
      ConnectedWebsites(websites: websites ?? this.websites);
}

extension ChatReportReasonExtensions on ChatReportReason {
  TResult map<TResult extends Object?>(
      {required TResult Function(ChatReportReasonSpam value) spam,
      required TResult Function(ChatReportReasonViolence value) violence,
      required TResult Function(ChatReportReasonPornography value) pornography,
      required TResult Function(ChatReportReasonChildAbuse value) childAbuse,
      required TResult Function(ChatReportReasonCopyright value) copyright,
      required TResult Function(ChatReportReasonUnrelatedLocation value)
          unrelatedLocation,
      required TResult Function(ChatReportReasonFake value) fake,
      required TResult Function(ChatReportReasonCustom value) custom}) {
    switch (this.getConstructor()) {
      case ChatReportReasonSpam.CONSTRUCTOR:
        return spam.call(this as ChatReportReasonSpam);
      case ChatReportReasonViolence.CONSTRUCTOR:
        return violence.call(this as ChatReportReasonViolence);
      case ChatReportReasonPornography.CONSTRUCTOR:
        return pornography.call(this as ChatReportReasonPornography);
      case ChatReportReasonChildAbuse.CONSTRUCTOR:
        return childAbuse.call(this as ChatReportReasonChildAbuse);
      case ChatReportReasonCopyright.CONSTRUCTOR:
        return copyright.call(this as ChatReportReasonCopyright);
      case ChatReportReasonUnrelatedLocation.CONSTRUCTOR:
        return unrelatedLocation
            .call(this as ChatReportReasonUnrelatedLocation);
      case ChatReportReasonFake.CONSTRUCTOR:
        return fake.call(this as ChatReportReasonFake);
      case ChatReportReasonCustom.CONSTRUCTOR:
        return custom.call(this as ChatReportReasonCustom);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension MessageLinkExtensions on MessageLink {
  MessageLink copy({String? link, bool? isPublic}) =>
      MessageLink(link: link ?? this.link, isPublic: isPublic ?? this.isPublic);
}

extension MessageLinkInfoExtensions on MessageLinkInfo {
  MessageLinkInfo copy(
          {bool? isPublic,
          int? chatId,
          Message? message,
          bool? forAlbum,
          bool? forComment}) =>
      MessageLinkInfo(
          isPublic: isPublic ?? this.isPublic,
          chatId: chatId ?? this.chatId,
          message: message ?? this.message,
          forAlbum: forAlbum ?? this.forAlbum,
          forComment: forComment ?? this.forComment);
}

extension FilePartExtensions on FilePart {
  FilePart copy({String? data}) => FilePart(data: data ?? this.data);
}

extension FileTypeExtensions on FileType {
  TResult map<TResult extends Object?>(
      {required TResult Function(FileTypeNone value) none,
      required TResult Function(FileTypeAnimation value) animation,
      required TResult Function(FileTypeAudio value) audio,
      required TResult Function(FileTypeDocument value) document,
      required TResult Function(FileTypePhoto value) photo,
      required TResult Function(FileTypeProfilePhoto value) profilePhoto,
      required TResult Function(FileTypeSecret value) secret,
      required TResult Function(FileTypeSecretThumbnail value) secretThumbnail,
      required TResult Function(FileTypeSecure value) secure,
      required TResult Function(FileTypeSticker value) sticker,
      required TResult Function(FileTypeThumbnail value) thumbnail,
      required TResult Function(FileTypeUnknown value) unknown,
      required TResult Function(FileTypeVideo value) video,
      required TResult Function(FileTypeVideoNote value) videoNote,
      required TResult Function(FileTypeVoiceNote value) voiceNote,
      required TResult Function(FileTypeWallpaper value) wallpaper}) {
    switch (this.getConstructor()) {
      case FileTypeNone.CONSTRUCTOR:
        return none.call(this as FileTypeNone);
      case FileTypeAnimation.CONSTRUCTOR:
        return animation.call(this as FileTypeAnimation);
      case FileTypeAudio.CONSTRUCTOR:
        return audio.call(this as FileTypeAudio);
      case FileTypeDocument.CONSTRUCTOR:
        return document.call(this as FileTypeDocument);
      case FileTypePhoto.CONSTRUCTOR:
        return photo.call(this as FileTypePhoto);
      case FileTypeProfilePhoto.CONSTRUCTOR:
        return profilePhoto.call(this as FileTypeProfilePhoto);
      case FileTypeSecret.CONSTRUCTOR:
        return secret.call(this as FileTypeSecret);
      case FileTypeSecretThumbnail.CONSTRUCTOR:
        return secretThumbnail.call(this as FileTypeSecretThumbnail);
      case FileTypeSecure.CONSTRUCTOR:
        return secure.call(this as FileTypeSecure);
      case FileTypeSticker.CONSTRUCTOR:
        return sticker.call(this as FileTypeSticker);
      case FileTypeThumbnail.CONSTRUCTOR:
        return thumbnail.call(this as FileTypeThumbnail);
      case FileTypeUnknown.CONSTRUCTOR:
        return unknown.call(this as FileTypeUnknown);
      case FileTypeVideo.CONSTRUCTOR:
        return video.call(this as FileTypeVideo);
      case FileTypeVideoNote.CONSTRUCTOR:
        return videoNote.call(this as FileTypeVideoNote);
      case FileTypeVoiceNote.CONSTRUCTOR:
        return voiceNote.call(this as FileTypeVoiceNote);
      case FileTypeWallpaper.CONSTRUCTOR:
        return wallpaper.call(this as FileTypeWallpaper);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension StorageStatisticsByFileTypeExtensions on StorageStatisticsByFileType {
  StorageStatisticsByFileType copy(
          {FileType? fileType, int? size, int? count}) =>
      StorageStatisticsByFileType(
          fileType: fileType ?? this.fileType,
          size: size ?? this.size,
          count: count ?? this.count);
}

extension StorageStatisticsByChatExtensions on StorageStatisticsByChat {
  StorageStatisticsByChat copy(
          {int? chatId,
          int? size,
          int? count,
          List<StorageStatisticsByFileType>? byFileType}) =>
      StorageStatisticsByChat(
          chatId: chatId ?? this.chatId,
          size: size ?? this.size,
          count: count ?? this.count,
          byFileType: byFileType ?? this.byFileType);
}

extension StorageStatisticsExtensions on StorageStatistics {
  StorageStatistics copy(
          {int? size, int? count, List<StorageStatisticsByChat>? byChat}) =>
      StorageStatistics(
          size: size ?? this.size,
          count: count ?? this.count,
          byChat: byChat ?? this.byChat);
}

extension StorageStatisticsFastExtensions on StorageStatisticsFast {
  StorageStatisticsFast copy(
          {int? filesSize,
          int? fileCount,
          int? databaseSize,
          int? languagePackDatabaseSize,
          int? logSize}) =>
      StorageStatisticsFast(
          filesSize: filesSize ?? this.filesSize,
          fileCount: fileCount ?? this.fileCount,
          databaseSize: databaseSize ?? this.databaseSize,
          languagePackDatabaseSize:
              languagePackDatabaseSize ?? this.languagePackDatabaseSize,
          logSize: logSize ?? this.logSize);
}

extension DatabaseStatisticsExtensions on DatabaseStatistics {
  DatabaseStatistics copy({String? statistics}) =>
      DatabaseStatistics(statistics: statistics ?? this.statistics);
}

extension NetworkTypeExtensions on NetworkType {
  TResult map<TResult extends Object?>(
      {required TResult Function(NetworkTypeNone value) none,
      required TResult Function(NetworkTypeMobile value) mobile,
      required TResult Function(NetworkTypeMobileRoaming value) mobileRoaming,
      required TResult Function(NetworkTypeWiFi value) wiFi,
      required TResult Function(NetworkTypeOther value) other}) {
    switch (this.getConstructor()) {
      case NetworkTypeNone.CONSTRUCTOR:
        return none.call(this as NetworkTypeNone);
      case NetworkTypeMobile.CONSTRUCTOR:
        return mobile.call(this as NetworkTypeMobile);
      case NetworkTypeMobileRoaming.CONSTRUCTOR:
        return mobileRoaming.call(this as NetworkTypeMobileRoaming);
      case NetworkTypeWiFi.CONSTRUCTOR:
        return wiFi.call(this as NetworkTypeWiFi);
      case NetworkTypeOther.CONSTRUCTOR:
        return other.call(this as NetworkTypeOther);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension NetworkStatisticsEntryExtensions on NetworkStatisticsEntry {
  TResult map<TResult extends Object?>(
      {required TResult Function(NetworkStatisticsEntryFile value) file,
      required TResult Function(NetworkStatisticsEntryCall value) call}) {
    switch (this.getConstructor()) {
      case NetworkStatisticsEntryFile.CONSTRUCTOR:
        return file.call(this as NetworkStatisticsEntryFile);
      case NetworkStatisticsEntryCall.CONSTRUCTOR:
        return call.call(this as NetworkStatisticsEntryCall);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension NetworkStatisticsEntryFileExtensions on NetworkStatisticsEntryFile {
  NetworkStatisticsEntryFile copy(
          {FileType? fileType,
          NetworkType? networkType,
          int? sentBytes,
          int? receivedBytes}) =>
      NetworkStatisticsEntryFile(
          fileType: fileType ?? this.fileType,
          networkType: networkType ?? this.networkType,
          sentBytes: sentBytes ?? this.sentBytes,
          receivedBytes: receivedBytes ?? this.receivedBytes);
}

extension NetworkStatisticsEntryCallExtensions on NetworkStatisticsEntryCall {
  NetworkStatisticsEntryCall copy(
          {NetworkType? networkType,
          int? sentBytes,
          int? receivedBytes,
          double? duration}) =>
      NetworkStatisticsEntryCall(
          networkType: networkType ?? this.networkType,
          sentBytes: sentBytes ?? this.sentBytes,
          receivedBytes: receivedBytes ?? this.receivedBytes,
          duration: duration ?? this.duration);
}

extension NetworkStatisticsExtensions on NetworkStatistics {
  NetworkStatistics copy(
          {int? sinceDate, List<NetworkStatisticsEntry>? entries}) =>
      NetworkStatistics(
          sinceDate: sinceDate ?? this.sinceDate,
          entries: entries ?? this.entries);
}

extension AutoDownloadSettingsExtensions on AutoDownloadSettings {
  AutoDownloadSettings copy(
          {bool? isAutoDownloadEnabled,
          int? maxPhotoFileSize,
          int? maxVideoFileSize,
          int? maxOtherFileSize,
          int? videoUploadBitrate,
          bool? preloadLargeVideos,
          bool? preloadNextAudio,
          bool? useLessDataForCalls}) =>
      AutoDownloadSettings(
          isAutoDownloadEnabled:
              isAutoDownloadEnabled ?? this.isAutoDownloadEnabled,
          maxPhotoFileSize: maxPhotoFileSize ?? this.maxPhotoFileSize,
          maxVideoFileSize: maxVideoFileSize ?? this.maxVideoFileSize,
          maxOtherFileSize: maxOtherFileSize ?? this.maxOtherFileSize,
          videoUploadBitrate: videoUploadBitrate ?? this.videoUploadBitrate,
          preloadLargeVideos: preloadLargeVideos ?? this.preloadLargeVideos,
          preloadNextAudio: preloadNextAudio ?? this.preloadNextAudio,
          useLessDataForCalls: useLessDataForCalls ?? this.useLessDataForCalls);
}

extension AutoDownloadSettingsPresetsExtensions on AutoDownloadSettingsPresets {
  AutoDownloadSettingsPresets copy(
          {AutoDownloadSettings? low,
          AutoDownloadSettings? medium,
          AutoDownloadSettings? high}) =>
      AutoDownloadSettingsPresets(
          low: low ?? this.low,
          medium: medium ?? this.medium,
          high: high ?? this.high);
}

extension ConnectionStateExtensions on ConnectionState {
  TResult map<TResult extends Object?>(
      {required TResult Function(ConnectionStateWaitingForNetwork value)
          waitingForNetwork,
      required TResult Function(ConnectionStateConnectingToProxy value)
          connectingToProxy,
      required TResult Function(ConnectionStateConnecting value) connecting,
      required TResult Function(ConnectionStateUpdating value) updating,
      required TResult Function(ConnectionStateReady value) ready}) {
    switch (this.getConstructor()) {
      case ConnectionStateWaitingForNetwork.CONSTRUCTOR:
        return waitingForNetwork.call(this as ConnectionStateWaitingForNetwork);
      case ConnectionStateConnectingToProxy.CONSTRUCTOR:
        return connectingToProxy.call(this as ConnectionStateConnectingToProxy);
      case ConnectionStateConnecting.CONSTRUCTOR:
        return connecting.call(this as ConnectionStateConnecting);
      case ConnectionStateUpdating.CONSTRUCTOR:
        return updating.call(this as ConnectionStateUpdating);
      case ConnectionStateReady.CONSTRUCTOR:
        return ready.call(this as ConnectionStateReady);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension TopChatCategoryExtensions on TopChatCategory {
  TResult map<TResult extends Object?>(
      {required TResult Function(TopChatCategoryUsers value) users,
      required TResult Function(TopChatCategoryBots value) bots,
      required TResult Function(TopChatCategoryGroups value) groups,
      required TResult Function(TopChatCategoryChannels value) channels,
      required TResult Function(TopChatCategoryInlineBots value) inlineBots,
      required TResult Function(TopChatCategoryCalls value) calls,
      required TResult Function(TopChatCategoryForwardChats value)
          forwardChats}) {
    switch (this.getConstructor()) {
      case TopChatCategoryUsers.CONSTRUCTOR:
        return users.call(this as TopChatCategoryUsers);
      case TopChatCategoryBots.CONSTRUCTOR:
        return bots.call(this as TopChatCategoryBots);
      case TopChatCategoryGroups.CONSTRUCTOR:
        return groups.call(this as TopChatCategoryGroups);
      case TopChatCategoryChannels.CONSTRUCTOR:
        return channels.call(this as TopChatCategoryChannels);
      case TopChatCategoryInlineBots.CONSTRUCTOR:
        return inlineBots.call(this as TopChatCategoryInlineBots);
      case TopChatCategoryCalls.CONSTRUCTOR:
        return calls.call(this as TopChatCategoryCalls);
      case TopChatCategoryForwardChats.CONSTRUCTOR:
        return forwardChats.call(this as TopChatCategoryForwardChats);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension TMeUrlTypeExtensions on TMeUrlType {
  TResult map<TResult extends Object?>(
      {required TResult Function(TMeUrlTypeUser value) user,
      required TResult Function(TMeUrlTypeSupergroup value) supergroup,
      required TResult Function(TMeUrlTypeChatInvite value) chatInvite,
      required TResult Function(TMeUrlTypeStickerSet value) stickerSet}) {
    switch (this.getConstructor()) {
      case TMeUrlTypeUser.CONSTRUCTOR:
        return user.call(this as TMeUrlTypeUser);
      case TMeUrlTypeSupergroup.CONSTRUCTOR:
        return supergroup.call(this as TMeUrlTypeSupergroup);
      case TMeUrlTypeChatInvite.CONSTRUCTOR:
        return chatInvite.call(this as TMeUrlTypeChatInvite);
      case TMeUrlTypeStickerSet.CONSTRUCTOR:
        return stickerSet.call(this as TMeUrlTypeStickerSet);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension TMeUrlTypeUserExtensions on TMeUrlTypeUser {
  TMeUrlTypeUser copy({int? userId}) =>
      TMeUrlTypeUser(userId: userId ?? this.userId);
}

extension TMeUrlTypeSupergroupExtensions on TMeUrlTypeSupergroup {
  TMeUrlTypeSupergroup copy({int? supergroupId}) =>
      TMeUrlTypeSupergroup(supergroupId: supergroupId ?? this.supergroupId);
}

extension TMeUrlTypeChatInviteExtensions on TMeUrlTypeChatInvite {
  TMeUrlTypeChatInvite copy({ChatInviteLinkInfo? info}) =>
      TMeUrlTypeChatInvite(info: info ?? this.info);
}

extension TMeUrlTypeStickerSetExtensions on TMeUrlTypeStickerSet {
  TMeUrlTypeStickerSet copy({int? stickerSetId}) =>
      TMeUrlTypeStickerSet(stickerSetId: stickerSetId ?? this.stickerSetId);
}

extension TMeUrlExtensions on TMeUrl {
  TMeUrl copy({String? url, TMeUrlType? type}) =>
      TMeUrl(url: url ?? this.url, type: type ?? this.type);
}

extension TMeUrlsExtensions on TMeUrls {
  TMeUrls copy({List<TMeUrl>? urls}) => TMeUrls(urls: urls ?? this.urls);
}

extension SuggestedActionExtensions on SuggestedAction {
  TResult map<TResult extends Object?>(
      {required TResult Function(
              SuggestedActionEnableArchiveAndMuteNewChats value)
          enableArchiveAndMuteNewChats,
      required TResult Function(SuggestedActionCheckPhoneNumber value)
          checkPhoneNumber,
      required TResult Function(SuggestedActionSeeTicksHint value) seeTicksHint,
      required TResult Function(SuggestedActionConvertToBroadcastGroup value)
          convertToBroadcastGroup}) {
    switch (this.getConstructor()) {
      case SuggestedActionEnableArchiveAndMuteNewChats.CONSTRUCTOR:
        return enableArchiveAndMuteNewChats
            .call(this as SuggestedActionEnableArchiveAndMuteNewChats);
      case SuggestedActionCheckPhoneNumber.CONSTRUCTOR:
        return checkPhoneNumber.call(this as SuggestedActionCheckPhoneNumber);
      case SuggestedActionSeeTicksHint.CONSTRUCTOR:
        return seeTicksHint.call(this as SuggestedActionSeeTicksHint);
      case SuggestedActionConvertToBroadcastGroup.CONSTRUCTOR:
        return convertToBroadcastGroup
            .call(this as SuggestedActionConvertToBroadcastGroup);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension SuggestedActionConvertToBroadcastGroupExtensions
    on SuggestedActionConvertToBroadcastGroup {
  SuggestedActionConvertToBroadcastGroup copy({int? supergroupId}) =>
      SuggestedActionConvertToBroadcastGroup(
          supergroupId: supergroupId ?? this.supergroupId);
}

extension CountExtensions on Count {
  Count copy({int? count}) => Count(count: count ?? this.count);
}

extension TextExtensions on Text {
  Text copy({String? text}) => Text(text: text ?? this.text);
}

extension SecondsExtensions on Seconds {
  Seconds copy({double? seconds}) => Seconds(seconds: seconds ?? this.seconds);
}

extension DeepLinkInfoExtensions on DeepLinkInfo {
  DeepLinkInfo copy({FormattedText? text, bool? needUpdateApplication}) =>
      DeepLinkInfo(
          text: text ?? this.text,
          needUpdateApplication:
              needUpdateApplication ?? this.needUpdateApplication);
}

extension TextParseModeExtensions on TextParseMode {
  TResult map<TResult extends Object?>(
      {required TResult Function(TextParseModeMarkdown value) markdown,
      required TResult Function(TextParseModeHTML value) hTML}) {
    switch (this.getConstructor()) {
      case TextParseModeMarkdown.CONSTRUCTOR:
        return markdown.call(this as TextParseModeMarkdown);
      case TextParseModeHTML.CONSTRUCTOR:
        return hTML.call(this as TextParseModeHTML);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension TextParseModeMarkdownExtensions on TextParseModeMarkdown {
  TextParseModeMarkdown copy({int? version}) =>
      TextParseModeMarkdown(version: version ?? this.version);
}

extension ProxyTypeExtensions on ProxyType {
  TResult map<TResult extends Object?>(
      {required TResult Function(ProxyTypeSocks5 value) socks5,
      required TResult Function(ProxyTypeHttp value) http,
      required TResult Function(ProxyTypeMtproto value) mtproto}) {
    switch (this.getConstructor()) {
      case ProxyTypeSocks5.CONSTRUCTOR:
        return socks5.call(this as ProxyTypeSocks5);
      case ProxyTypeHttp.CONSTRUCTOR:
        return http.call(this as ProxyTypeHttp);
      case ProxyTypeMtproto.CONSTRUCTOR:
        return mtproto.call(this as ProxyTypeMtproto);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension ProxyTypeSocks5Extensions on ProxyTypeSocks5 {
  ProxyTypeSocks5 copy({String? username, String? password}) => ProxyTypeSocks5(
      username: username ?? this.username, password: password ?? this.password);
}

extension ProxyTypeHttpExtensions on ProxyTypeHttp {
  ProxyTypeHttp copy({String? username, String? password, bool? httpOnly}) =>
      ProxyTypeHttp(
          username: username ?? this.username,
          password: password ?? this.password,
          httpOnly: httpOnly ?? this.httpOnly);
}

extension ProxyTypeMtprotoExtensions on ProxyTypeMtproto {
  ProxyTypeMtproto copy({String? secret}) =>
      ProxyTypeMtproto(secret: secret ?? this.secret);
}

extension ProxyExtensions on Proxy {
  Proxy copy(
          {int? id,
          String? server,
          int? port,
          int? lastUsedDate,
          bool? isEnabled,
          ProxyType? type}) =>
      Proxy(
          id: id ?? this.id,
          server: server ?? this.server,
          port: port ?? this.port,
          lastUsedDate: lastUsedDate ?? this.lastUsedDate,
          isEnabled: isEnabled ?? this.isEnabled,
          type: type ?? this.type);
}

extension ProxiesExtensions on Proxies {
  Proxies copy({List<Proxy>? proxies}) =>
      Proxies(proxies: proxies ?? this.proxies);
}

extension InputStickerExtensions on InputSticker {
  TResult map<TResult extends Object?>(
      {required TResult Function(InputStickerStatic value) static,
      required TResult Function(InputStickerAnimated value) animated}) {
    switch (this.getConstructor()) {
      case InputStickerStatic.CONSTRUCTOR:
        return static.call(this as InputStickerStatic);
      case InputStickerAnimated.CONSTRUCTOR:
        return animated.call(this as InputStickerAnimated);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension InputStickerStaticExtensions on InputStickerStatic {
  InputStickerStatic copy(
          {InputFile? sticker, String? emojis, MaskPosition? maskPosition}) =>
      InputStickerStatic(
          sticker: sticker ?? this.sticker,
          emojis: emojis ?? this.emojis,
          maskPosition: maskPosition ?? this.maskPosition);
}

extension InputStickerAnimatedExtensions on InputStickerAnimated {
  InputStickerAnimated copy({InputFile? sticker, String? emojis}) =>
      InputStickerAnimated(
          sticker: sticker ?? this.sticker, emojis: emojis ?? this.emojis);
}

extension DateRangeExtensions on DateRange {
  DateRange copy({int? startDate, int? endDate}) => DateRange(
      startDate: startDate ?? this.startDate, endDate: endDate ?? this.endDate);
}

extension StatisticalValueExtensions on StatisticalValue {
  StatisticalValue copy(
          {double? value,
          double? previousValue,
          double? growthRatePercentage}) =>
      StatisticalValue(
          value: value ?? this.value,
          previousValue: previousValue ?? this.previousValue,
          growthRatePercentage:
              growthRatePercentage ?? this.growthRatePercentage);
}

extension StatisticalGraphExtensions on StatisticalGraph {
  TResult map<TResult extends Object?>(
      {required TResult Function(StatisticalGraphData value) data,
      required TResult Function(StatisticalGraphAsync value) async,
      required TResult Function(StatisticalGraphError value) error}) {
    switch (this.getConstructor()) {
      case StatisticalGraphData.CONSTRUCTOR:
        return data.call(this as StatisticalGraphData);
      case StatisticalGraphAsync.CONSTRUCTOR:
        return async.call(this as StatisticalGraphAsync);
      case StatisticalGraphError.CONSTRUCTOR:
        return error.call(this as StatisticalGraphError);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension StatisticalGraphDataExtensions on StatisticalGraphData {
  StatisticalGraphData copy({String? jsonData, String? zoomToken}) =>
      StatisticalGraphData(
          jsonData: jsonData ?? this.jsonData,
          zoomToken: zoomToken ?? this.zoomToken);
}

extension StatisticalGraphAsyncExtensions on StatisticalGraphAsync {
  StatisticalGraphAsync copy({String? token}) =>
      StatisticalGraphAsync(token: token ?? this.token);
}

extension StatisticalGraphErrorExtensions on StatisticalGraphError {
  StatisticalGraphError copy({String? errorMessage}) =>
      StatisticalGraphError(errorMessage: errorMessage ?? this.errorMessage);
}

extension ChatStatisticsMessageInteractionInfoExtensions
    on ChatStatisticsMessageInteractionInfo {
  ChatStatisticsMessageInteractionInfo copy(
          {int? messageId, int? viewCount, int? forwardCount}) =>
      ChatStatisticsMessageInteractionInfo(
          messageId: messageId ?? this.messageId,
          viewCount: viewCount ?? this.viewCount,
          forwardCount: forwardCount ?? this.forwardCount);
}

extension ChatStatisticsMessageSenderInfoExtensions
    on ChatStatisticsMessageSenderInfo {
  ChatStatisticsMessageSenderInfo copy(
          {int? userId, int? sentMessageCount, int? averageCharacterCount}) =>
      ChatStatisticsMessageSenderInfo(
          userId: userId ?? this.userId,
          sentMessageCount: sentMessageCount ?? this.sentMessageCount,
          averageCharacterCount:
              averageCharacterCount ?? this.averageCharacterCount);
}

extension ChatStatisticsAdministratorActionsInfoExtensions
    on ChatStatisticsAdministratorActionsInfo {
  ChatStatisticsAdministratorActionsInfo copy(
          {int? userId,
          int? deletedMessageCount,
          int? bannedUserCount,
          int? restrictedUserCount}) =>
      ChatStatisticsAdministratorActionsInfo(
          userId: userId ?? this.userId,
          deletedMessageCount: deletedMessageCount ?? this.deletedMessageCount,
          bannedUserCount: bannedUserCount ?? this.bannedUserCount,
          restrictedUserCount: restrictedUserCount ?? this.restrictedUserCount);
}

extension ChatStatisticsInviterInfoExtensions on ChatStatisticsInviterInfo {
  ChatStatisticsInviterInfo copy({int? userId, int? addedMemberCount}) =>
      ChatStatisticsInviterInfo(
          userId: userId ?? this.userId,
          addedMemberCount: addedMemberCount ?? this.addedMemberCount);
}

extension ChatStatisticsExtensions on ChatStatistics {
  TResult map<TResult extends Object?>(
      {required TResult Function(ChatStatisticsSupergroup value) supergroup,
      required TResult Function(ChatStatisticsChannel value) channel}) {
    switch (this.getConstructor()) {
      case ChatStatisticsSupergroup.CONSTRUCTOR:
        return supergroup.call(this as ChatStatisticsSupergroup);
      case ChatStatisticsChannel.CONSTRUCTOR:
        return channel.call(this as ChatStatisticsChannel);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension ChatStatisticsSupergroupExtensions on ChatStatisticsSupergroup {
  ChatStatisticsSupergroup copy(
          {DateRange? period,
          StatisticalValue? memberCount,
          StatisticalValue? messageCount,
          StatisticalValue? viewerCount,
          StatisticalValue? senderCount,
          StatisticalGraph? memberCountGraph,
          StatisticalGraph? joinGraph,
          StatisticalGraph? joinBySourceGraph,
          StatisticalGraph? languageGraph,
          StatisticalGraph? messageContentGraph,
          StatisticalGraph? actionGraph,
          StatisticalGraph? dayGraph,
          StatisticalGraph? weekGraph,
          List<ChatStatisticsMessageSenderInfo>? topSenders,
          List<ChatStatisticsAdministratorActionsInfo>? topAdministrators,
          List<ChatStatisticsInviterInfo>? topInviters}) =>
      ChatStatisticsSupergroup(
          period: period ?? this.period,
          memberCount: memberCount ?? this.memberCount,
          messageCount: messageCount ?? this.messageCount,
          viewerCount: viewerCount ?? this.viewerCount,
          senderCount: senderCount ?? this.senderCount,
          memberCountGraph: memberCountGraph ?? this.memberCountGraph,
          joinGraph: joinGraph ?? this.joinGraph,
          joinBySourceGraph: joinBySourceGraph ?? this.joinBySourceGraph,
          languageGraph: languageGraph ?? this.languageGraph,
          messageContentGraph: messageContentGraph ?? this.messageContentGraph,
          actionGraph: actionGraph ?? this.actionGraph,
          dayGraph: dayGraph ?? this.dayGraph,
          weekGraph: weekGraph ?? this.weekGraph,
          topSenders: topSenders ?? this.topSenders,
          topAdministrators: topAdministrators ?? this.topAdministrators,
          topInviters: topInviters ?? this.topInviters);
}

extension ChatStatisticsChannelExtensions on ChatStatisticsChannel {
  ChatStatisticsChannel copy(
          {DateRange? period,
          StatisticalValue? memberCount,
          StatisticalValue? meanViewCount,
          StatisticalValue? meanShareCount,
          double? enabledNotificationsPercentage,
          StatisticalGraph? memberCountGraph,
          StatisticalGraph? joinGraph,
          StatisticalGraph? muteGraph,
          StatisticalGraph? viewCountByHourGraph,
          StatisticalGraph? viewCountBySourceGraph,
          StatisticalGraph? joinBySourceGraph,
          StatisticalGraph? languageGraph,
          StatisticalGraph? messageInteractionGraph,
          StatisticalGraph? instantViewInteractionGraph,
          List<ChatStatisticsMessageInteractionInfo>?
              recentMessageInteractions}) =>
      ChatStatisticsChannel(
          period: period ?? this.period,
          memberCount: memberCount ?? this.memberCount,
          meanViewCount: meanViewCount ?? this.meanViewCount,
          meanShareCount: meanShareCount ?? this.meanShareCount,
          enabledNotificationsPercentage: enabledNotificationsPercentage ??
              this.enabledNotificationsPercentage,
          memberCountGraph: memberCountGraph ?? this.memberCountGraph,
          joinGraph: joinGraph ?? this.joinGraph,
          muteGraph: muteGraph ?? this.muteGraph,
          viewCountByHourGraph:
              viewCountByHourGraph ?? this.viewCountByHourGraph,
          viewCountBySourceGraph:
              viewCountBySourceGraph ?? this.viewCountBySourceGraph,
          joinBySourceGraph: joinBySourceGraph ?? this.joinBySourceGraph,
          languageGraph: languageGraph ?? this.languageGraph,
          messageInteractionGraph:
              messageInteractionGraph ?? this.messageInteractionGraph,
          instantViewInteractionGraph:
              instantViewInteractionGraph ?? this.instantViewInteractionGraph,
          recentMessageInteractions:
              recentMessageInteractions ?? this.recentMessageInteractions);
}

extension MessageStatisticsExtensions on MessageStatistics {
  MessageStatistics copy({StatisticalGraph? messageInteractionGraph}) =>
      MessageStatistics(
          messageInteractionGraph:
              messageInteractionGraph ?? this.messageInteractionGraph);
}

extension PointExtensions on Point {
  Point copy({double? x, double? y}) => Point(x: x ?? this.x, y: y ?? this.y);
}

extension VectorPathCommandExtensions on VectorPathCommand {
  TResult map<TResult extends Object?>(
      {required TResult Function(VectorPathCommandLine value) line,
      required TResult Function(VectorPathCommandCubicBezierCurve value)
          cubicBezierCurve}) {
    switch (this.getConstructor()) {
      case VectorPathCommandLine.CONSTRUCTOR:
        return line.call(this as VectorPathCommandLine);
      case VectorPathCommandCubicBezierCurve.CONSTRUCTOR:
        return cubicBezierCurve.call(this as VectorPathCommandCubicBezierCurve);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension VectorPathCommandLineExtensions on VectorPathCommandLine {
  VectorPathCommandLine copy({Point? endPoint}) =>
      VectorPathCommandLine(endPoint: endPoint ?? this.endPoint);
}

extension VectorPathCommandCubicBezierCurveExtensions
    on VectorPathCommandCubicBezierCurve {
  VectorPathCommandCubicBezierCurve copy(
          {Point? startControlPoint,
          Point? endControlPoint,
          Point? endPoint}) =>
      VectorPathCommandCubicBezierCurve(
          startControlPoint: startControlPoint ?? this.startControlPoint,
          endControlPoint: endControlPoint ?? this.endControlPoint,
          endPoint: endPoint ?? this.endPoint);
}

extension UpdateExtensions on Update {
  TResult map<TResult extends Object?>(
      {required TResult Function(UpdateAuthorizationState value)
          authorizationState,
      required TResult Function(UpdateNewMessage value) newMessage,
      required TResult Function(UpdateMessageSendAcknowledged value)
          messageSendAcknowledged,
      required TResult Function(UpdateMessageSendSucceeded value)
          messageSendSucceeded,
      required TResult Function(UpdateMessageSendFailed value)
          messageSendFailed,
      required TResult Function(UpdateMessageContent value) messageContent,
      required TResult Function(UpdateMessageEdited value) messageEdited,
      required TResult Function(UpdateMessageIsPinned value) messageIsPinned,
      required TResult Function(UpdateMessageInteractionInfo value)
          messageInteractionInfo,
      required TResult Function(UpdateMessageContentOpened value)
          messageContentOpened,
      required TResult Function(UpdateMessageMentionRead value)
          messageMentionRead,
      required TResult Function(UpdateMessageLiveLocationViewed value)
          messageLiveLocationViewed,
      required TResult Function(UpdateNewChat value) newChat,
      required TResult Function(UpdateChatTitle value) chatTitle,
      required TResult Function(UpdateChatPhoto value) chatPhoto,
      required TResult Function(UpdateChatPermissions value) chatPermissions,
      required TResult Function(UpdateChatLastMessage value) chatLastMessage,
      required TResult Function(UpdateChatPosition value) chatPosition,
      required TResult Function(UpdateChatIsMarkedAsUnread value)
          chatIsMarkedAsUnread,
      required TResult Function(UpdateChatIsBlocked value) chatIsBlocked,
      required TResult Function(UpdateChatHasScheduledMessages value)
          chatHasScheduledMessages,
      required TResult Function(UpdateChatVoiceChat value) chatVoiceChat,
      required TResult Function(UpdateChatDefaultDisableNotification value)
          chatDefaultDisableNotification,
      required TResult Function(UpdateChatReadInbox value) chatReadInbox,
      required TResult Function(UpdateChatReadOutbox value) chatReadOutbox,
      required TResult Function(UpdateChatUnreadMentionCount value)
          chatUnreadMentionCount,
      required TResult Function(UpdateChatNotificationSettings value)
          chatNotificationSettings,
      required TResult Function(UpdateScopeNotificationSettings value)
          scopeNotificationSettings,
      required TResult Function(UpdateChatMessageTtlSetting value)
          chatMessageTtlSetting,
      required TResult Function(UpdateChatActionBar value) chatActionBar,
      required TResult Function(UpdateChatReplyMarkup value) chatReplyMarkup,
      required TResult Function(UpdateChatDraftMessage value) chatDraftMessage,
      required TResult Function(UpdateChatFilters value) chatFilters,
      required TResult Function(UpdateChatOnlineMemberCount value)
          chatOnlineMemberCount,
      required TResult Function(UpdateNotification value) notification,
      required TResult Function(UpdateNotificationGroup value)
          notificationGroup,
      required TResult Function(UpdateActiveNotifications value)
          activeNotifications,
      required TResult Function(UpdateHavePendingNotifications value)
          havePendingNotifications,
      required TResult Function(UpdateDeleteMessages value) deleteMessages,
      required TResult Function(UpdateUserChatAction value) userChatAction,
      required TResult Function(UpdateUserStatus value) userStatus,
      required TResult Function(UpdateUser value) user,
      required TResult Function(UpdateBasicGroup value) basicGroup,
      required TResult Function(UpdateSupergroup value) supergroup,
      required TResult Function(UpdateSecretChat value) secretChat,
      required TResult Function(UpdateUserFullInfo value) userFullInfo,
      required TResult Function(UpdateBasicGroupFullInfo value)
          basicGroupFullInfo,
      required TResult Function(UpdateSupergroupFullInfo value)
          supergroupFullInfo,
      required TResult Function(UpdateServiceNotification value)
          serviceNotification,
      required TResult Function(UpdateFile value) file,
      required TResult Function(UpdateFileGenerationStart value)
          fileGenerationStart,
      required TResult Function(UpdateFileGenerationStop value)
          fileGenerationStop,
      required TResult Function(UpdateCall value) call,
      required TResult Function(UpdateGroupCall value) groupCall,
      required TResult Function(UpdateGroupCallParticipant value)
          groupCallParticipant,
      required TResult Function(UpdateNewCallSignalingData value)
          newCallSignalingData,
      required TResult Function(UpdateUserPrivacySettingRules value)
          userPrivacySettingRules,
      required TResult Function(UpdateUnreadMessageCount value)
          unreadMessageCount,
      required TResult Function(UpdateUnreadChatCount value) unreadChatCount,
      required TResult Function(UpdateOption value) option,
      required TResult Function(UpdateStickerSet value) stickerSet,
      required TResult Function(UpdateInstalledStickerSets value)
          installedStickerSets,
      required TResult Function(UpdateTrendingStickerSets value)
          trendingStickerSets,
      required TResult Function(UpdateRecentStickers value) recentStickers,
      required TResult Function(UpdateFavoriteStickers value) favoriteStickers,
      required TResult Function(UpdateSavedAnimations value) savedAnimations,
      required TResult Function(UpdateSelectedBackground value)
          selectedBackground,
      required TResult Function(UpdateLanguagePackStrings value)
          languagePackStrings,
      required TResult Function(UpdateConnectionState value) connectionState,
      required TResult Function(UpdateTermsOfService value) termsOfService,
      required TResult Function(UpdateUsersNearby value) usersNearby,
      required TResult Function(UpdateDiceEmojis value) diceEmojis,
      required TResult Function(UpdateAnimationSearchParameters value)
          animationSearchParameters,
      required TResult Function(UpdateSuggestedActions value) suggestedActions,
      required TResult Function(UpdateNewInlineQuery value) newInlineQuery,
      required TResult Function(UpdateNewChosenInlineResult value)
          newChosenInlineResult,
      required TResult Function(UpdateNewCallbackQuery value) newCallbackQuery,
      required TResult Function(UpdateNewInlineCallbackQuery value)
          newInlineCallbackQuery,
      required TResult Function(UpdateNewShippingQuery value) newShippingQuery,
      required TResult Function(UpdateNewPreCheckoutQuery value)
          newPreCheckoutQuery,
      required TResult Function(UpdateNewCustomEvent value) newCustomEvent,
      required TResult Function(UpdateNewCustomQuery value) newCustomQuery,
      required TResult Function(UpdatePoll value) poll,
      required TResult Function(UpdatePollAnswer value) pollAnswer,
      required TResult Function(UpdateChatMember value) chatMember}) {
    switch (this.getConstructor()) {
      case UpdateAuthorizationState.CONSTRUCTOR:
        return authorizationState.call(this as UpdateAuthorizationState);
      case UpdateNewMessage.CONSTRUCTOR:
        return newMessage.call(this as UpdateNewMessage);
      case UpdateMessageSendAcknowledged.CONSTRUCTOR:
        return messageSendAcknowledged
            .call(this as UpdateMessageSendAcknowledged);
      case UpdateMessageSendSucceeded.CONSTRUCTOR:
        return messageSendSucceeded.call(this as UpdateMessageSendSucceeded);
      case UpdateMessageSendFailed.CONSTRUCTOR:
        return messageSendFailed.call(this as UpdateMessageSendFailed);
      case UpdateMessageContent.CONSTRUCTOR:
        return messageContent.call(this as UpdateMessageContent);
      case UpdateMessageEdited.CONSTRUCTOR:
        return messageEdited.call(this as UpdateMessageEdited);
      case UpdateMessageIsPinned.CONSTRUCTOR:
        return messageIsPinned.call(this as UpdateMessageIsPinned);
      case UpdateMessageInteractionInfo.CONSTRUCTOR:
        return messageInteractionInfo
            .call(this as UpdateMessageInteractionInfo);
      case UpdateMessageContentOpened.CONSTRUCTOR:
        return messageContentOpened.call(this as UpdateMessageContentOpened);
      case UpdateMessageMentionRead.CONSTRUCTOR:
        return messageMentionRead.call(this as UpdateMessageMentionRead);
      case UpdateMessageLiveLocationViewed.CONSTRUCTOR:
        return messageLiveLocationViewed
            .call(this as UpdateMessageLiveLocationViewed);
      case UpdateNewChat.CONSTRUCTOR:
        return newChat.call(this as UpdateNewChat);
      case UpdateChatTitle.CONSTRUCTOR:
        return chatTitle.call(this as UpdateChatTitle);
      case UpdateChatPhoto.CONSTRUCTOR:
        return chatPhoto.call(this as UpdateChatPhoto);
      case UpdateChatPermissions.CONSTRUCTOR:
        return chatPermissions.call(this as UpdateChatPermissions);
      case UpdateChatLastMessage.CONSTRUCTOR:
        return chatLastMessage.call(this as UpdateChatLastMessage);
      case UpdateChatPosition.CONSTRUCTOR:
        return chatPosition.call(this as UpdateChatPosition);
      case UpdateChatIsMarkedAsUnread.CONSTRUCTOR:
        return chatIsMarkedAsUnread.call(this as UpdateChatIsMarkedAsUnread);
      case UpdateChatIsBlocked.CONSTRUCTOR:
        return chatIsBlocked.call(this as UpdateChatIsBlocked);
      case UpdateChatHasScheduledMessages.CONSTRUCTOR:
        return chatHasScheduledMessages
            .call(this as UpdateChatHasScheduledMessages);
      case UpdateChatVoiceChat.CONSTRUCTOR:
        return chatVoiceChat.call(this as UpdateChatVoiceChat);
      case UpdateChatDefaultDisableNotification.CONSTRUCTOR:
        return chatDefaultDisableNotification
            .call(this as UpdateChatDefaultDisableNotification);
      case UpdateChatReadInbox.CONSTRUCTOR:
        return chatReadInbox.call(this as UpdateChatReadInbox);
      case UpdateChatReadOutbox.CONSTRUCTOR:
        return chatReadOutbox.call(this as UpdateChatReadOutbox);
      case UpdateChatUnreadMentionCount.CONSTRUCTOR:
        return chatUnreadMentionCount
            .call(this as UpdateChatUnreadMentionCount);
      case UpdateChatNotificationSettings.CONSTRUCTOR:
        return chatNotificationSettings
            .call(this as UpdateChatNotificationSettings);
      case UpdateScopeNotificationSettings.CONSTRUCTOR:
        return scopeNotificationSettings
            .call(this as UpdateScopeNotificationSettings);
      case UpdateChatMessageTtlSetting.CONSTRUCTOR:
        return chatMessageTtlSetting.call(this as UpdateChatMessageTtlSetting);
      case UpdateChatActionBar.CONSTRUCTOR:
        return chatActionBar.call(this as UpdateChatActionBar);
      case UpdateChatReplyMarkup.CONSTRUCTOR:
        return chatReplyMarkup.call(this as UpdateChatReplyMarkup);
      case UpdateChatDraftMessage.CONSTRUCTOR:
        return chatDraftMessage.call(this as UpdateChatDraftMessage);
      case UpdateChatFilters.CONSTRUCTOR:
        return chatFilters.call(this as UpdateChatFilters);
      case UpdateChatOnlineMemberCount.CONSTRUCTOR:
        return chatOnlineMemberCount.call(this as UpdateChatOnlineMemberCount);
      case UpdateNotification.CONSTRUCTOR:
        return notification.call(this as UpdateNotification);
      case UpdateNotificationGroup.CONSTRUCTOR:
        return notificationGroup.call(this as UpdateNotificationGroup);
      case UpdateActiveNotifications.CONSTRUCTOR:
        return activeNotifications.call(this as UpdateActiveNotifications);
      case UpdateHavePendingNotifications.CONSTRUCTOR:
        return havePendingNotifications
            .call(this as UpdateHavePendingNotifications);
      case UpdateDeleteMessages.CONSTRUCTOR:
        return deleteMessages.call(this as UpdateDeleteMessages);
      case UpdateUserChatAction.CONSTRUCTOR:
        return userChatAction.call(this as UpdateUserChatAction);
      case UpdateUserStatus.CONSTRUCTOR:
        return userStatus.call(this as UpdateUserStatus);
      case UpdateUser.CONSTRUCTOR:
        return user.call(this as UpdateUser);
      case UpdateBasicGroup.CONSTRUCTOR:
        return basicGroup.call(this as UpdateBasicGroup);
      case UpdateSupergroup.CONSTRUCTOR:
        return supergroup.call(this as UpdateSupergroup);
      case UpdateSecretChat.CONSTRUCTOR:
        return secretChat.call(this as UpdateSecretChat);
      case UpdateUserFullInfo.CONSTRUCTOR:
        return userFullInfo.call(this as UpdateUserFullInfo);
      case UpdateBasicGroupFullInfo.CONSTRUCTOR:
        return basicGroupFullInfo.call(this as UpdateBasicGroupFullInfo);
      case UpdateSupergroupFullInfo.CONSTRUCTOR:
        return supergroupFullInfo.call(this as UpdateSupergroupFullInfo);
      case UpdateServiceNotification.CONSTRUCTOR:
        return serviceNotification.call(this as UpdateServiceNotification);
      case UpdateFile.CONSTRUCTOR:
        return file.call(this as UpdateFile);
      case UpdateFileGenerationStart.CONSTRUCTOR:
        return fileGenerationStart.call(this as UpdateFileGenerationStart);
      case UpdateFileGenerationStop.CONSTRUCTOR:
        return fileGenerationStop.call(this as UpdateFileGenerationStop);
      case UpdateCall.CONSTRUCTOR:
        return call.call(this as UpdateCall);
      case UpdateGroupCall.CONSTRUCTOR:
        return groupCall.call(this as UpdateGroupCall);
      case UpdateGroupCallParticipant.CONSTRUCTOR:
        return groupCallParticipant.call(this as UpdateGroupCallParticipant);
      case UpdateNewCallSignalingData.CONSTRUCTOR:
        return newCallSignalingData.call(this as UpdateNewCallSignalingData);
      case UpdateUserPrivacySettingRules.CONSTRUCTOR:
        return userPrivacySettingRules
            .call(this as UpdateUserPrivacySettingRules);
      case UpdateUnreadMessageCount.CONSTRUCTOR:
        return unreadMessageCount.call(this as UpdateUnreadMessageCount);
      case UpdateUnreadChatCount.CONSTRUCTOR:
        return unreadChatCount.call(this as UpdateUnreadChatCount);
      case UpdateOption.CONSTRUCTOR:
        return option.call(this as UpdateOption);
      case UpdateStickerSet.CONSTRUCTOR:
        return stickerSet.call(this as UpdateStickerSet);
      case UpdateInstalledStickerSets.CONSTRUCTOR:
        return installedStickerSets.call(this as UpdateInstalledStickerSets);
      case UpdateTrendingStickerSets.CONSTRUCTOR:
        return trendingStickerSets.call(this as UpdateTrendingStickerSets);
      case UpdateRecentStickers.CONSTRUCTOR:
        return recentStickers.call(this as UpdateRecentStickers);
      case UpdateFavoriteStickers.CONSTRUCTOR:
        return favoriteStickers.call(this as UpdateFavoriteStickers);
      case UpdateSavedAnimations.CONSTRUCTOR:
        return savedAnimations.call(this as UpdateSavedAnimations);
      case UpdateSelectedBackground.CONSTRUCTOR:
        return selectedBackground.call(this as UpdateSelectedBackground);
      case UpdateLanguagePackStrings.CONSTRUCTOR:
        return languagePackStrings.call(this as UpdateLanguagePackStrings);
      case UpdateConnectionState.CONSTRUCTOR:
        return connectionState.call(this as UpdateConnectionState);
      case UpdateTermsOfService.CONSTRUCTOR:
        return termsOfService.call(this as UpdateTermsOfService);
      case UpdateUsersNearby.CONSTRUCTOR:
        return usersNearby.call(this as UpdateUsersNearby);
      case UpdateDiceEmojis.CONSTRUCTOR:
        return diceEmojis.call(this as UpdateDiceEmojis);
      case UpdateAnimationSearchParameters.CONSTRUCTOR:
        return animationSearchParameters
            .call(this as UpdateAnimationSearchParameters);
      case UpdateSuggestedActions.CONSTRUCTOR:
        return suggestedActions.call(this as UpdateSuggestedActions);
      case UpdateNewInlineQuery.CONSTRUCTOR:
        return newInlineQuery.call(this as UpdateNewInlineQuery);
      case UpdateNewChosenInlineResult.CONSTRUCTOR:
        return newChosenInlineResult.call(this as UpdateNewChosenInlineResult);
      case UpdateNewCallbackQuery.CONSTRUCTOR:
        return newCallbackQuery.call(this as UpdateNewCallbackQuery);
      case UpdateNewInlineCallbackQuery.CONSTRUCTOR:
        return newInlineCallbackQuery
            .call(this as UpdateNewInlineCallbackQuery);
      case UpdateNewShippingQuery.CONSTRUCTOR:
        return newShippingQuery.call(this as UpdateNewShippingQuery);
      case UpdateNewPreCheckoutQuery.CONSTRUCTOR:
        return newPreCheckoutQuery.call(this as UpdateNewPreCheckoutQuery);
      case UpdateNewCustomEvent.CONSTRUCTOR:
        return newCustomEvent.call(this as UpdateNewCustomEvent);
      case UpdateNewCustomQuery.CONSTRUCTOR:
        return newCustomQuery.call(this as UpdateNewCustomQuery);
      case UpdatePoll.CONSTRUCTOR:
        return poll.call(this as UpdatePoll);
      case UpdatePollAnswer.CONSTRUCTOR:
        return pollAnswer.call(this as UpdatePollAnswer);
      case UpdateChatMember.CONSTRUCTOR:
        return chatMember.call(this as UpdateChatMember);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension UpdateAuthorizationStateExtensions on UpdateAuthorizationState {
  UpdateAuthorizationState copy({AuthorizationState? authorizationState}) =>
      UpdateAuthorizationState(
          authorizationState: authorizationState ?? this.authorizationState);
}

extension UpdateNewMessageExtensions on UpdateNewMessage {
  UpdateNewMessage copy({Message? message}) =>
      UpdateNewMessage(message: message ?? this.message);
}

extension UpdateMessageSendAcknowledgedExtensions
    on UpdateMessageSendAcknowledged {
  UpdateMessageSendAcknowledged copy({int? chatId, int? messageId}) =>
      UpdateMessageSendAcknowledged(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId);
}

extension UpdateMessageSendSucceededExtensions on UpdateMessageSendSucceeded {
  UpdateMessageSendSucceeded copy({Message? message, int? oldMessageId}) =>
      UpdateMessageSendSucceeded(
          message: message ?? this.message,
          oldMessageId: oldMessageId ?? this.oldMessageId);
}

extension UpdateMessageSendFailedExtensions on UpdateMessageSendFailed {
  UpdateMessageSendFailed copy(
          {Message? message,
          int? oldMessageId,
          int? errorCode,
          String? errorMessage}) =>
      UpdateMessageSendFailed(
          message: message ?? this.message,
          oldMessageId: oldMessageId ?? this.oldMessageId,
          errorCode: errorCode ?? this.errorCode,
          errorMessage: errorMessage ?? this.errorMessage);
}

extension UpdateMessageContentExtensions on UpdateMessageContent {
  UpdateMessageContent copy(
          {int? chatId, int? messageId, MessageContent? newContent}) =>
      UpdateMessageContent(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          newContent: newContent ?? this.newContent);
}

extension UpdateMessageEditedExtensions on UpdateMessageEdited {
  UpdateMessageEdited copy(
          {int? chatId,
          int? messageId,
          int? editDate,
          ReplyMarkup? replyMarkup}) =>
      UpdateMessageEdited(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          editDate: editDate ?? this.editDate,
          replyMarkup: replyMarkup ?? this.replyMarkup);
}

extension UpdateMessageIsPinnedExtensions on UpdateMessageIsPinned {
  UpdateMessageIsPinned copy({int? chatId, int? messageId, bool? isPinned}) =>
      UpdateMessageIsPinned(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          isPinned: isPinned ?? this.isPinned);
}

extension UpdateMessageInteractionInfoExtensions
    on UpdateMessageInteractionInfo {
  UpdateMessageInteractionInfo copy(
          {int? chatId,
          int? messageId,
          MessageInteractionInfo? interactionInfo}) =>
      UpdateMessageInteractionInfo(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          interactionInfo: interactionInfo ?? this.interactionInfo);
}

extension UpdateMessageContentOpenedExtensions on UpdateMessageContentOpened {
  UpdateMessageContentOpened copy({int? chatId, int? messageId}) =>
      UpdateMessageContentOpened(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId);
}

extension UpdateMessageMentionReadExtensions on UpdateMessageMentionRead {
  UpdateMessageMentionRead copy(
          {int? chatId, int? messageId, int? unreadMentionCount}) =>
      UpdateMessageMentionRead(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          unreadMentionCount: unreadMentionCount ?? this.unreadMentionCount);
}

extension UpdateMessageLiveLocationViewedExtensions
    on UpdateMessageLiveLocationViewed {
  UpdateMessageLiveLocationViewed copy({int? chatId, int? messageId}) =>
      UpdateMessageLiveLocationViewed(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId);
}

extension UpdateNewChatExtensions on UpdateNewChat {
  UpdateNewChat copy({Chat? chat}) => UpdateNewChat(chat: chat ?? this.chat);
}

extension UpdateChatTitleExtensions on UpdateChatTitle {
  UpdateChatTitle copy({int? chatId, String? title}) => UpdateChatTitle(
      chatId: chatId ?? this.chatId, title: title ?? this.title);
}

extension UpdateChatPhotoExtensions on UpdateChatPhoto {
  UpdateChatPhoto copy({int? chatId, ChatPhotoInfo? photo}) => UpdateChatPhoto(
      chatId: chatId ?? this.chatId, photo: photo ?? this.photo);
}

extension UpdateChatPermissionsExtensions on UpdateChatPermissions {
  UpdateChatPermissions copy({int? chatId, ChatPermissions? permissions}) =>
      UpdateChatPermissions(
          chatId: chatId ?? this.chatId,
          permissions: permissions ?? this.permissions);
}

extension UpdateChatLastMessageExtensions on UpdateChatLastMessage {
  UpdateChatLastMessage copy(
          {int? chatId, Message? lastMessage, List<ChatPosition>? positions}) =>
      UpdateChatLastMessage(
          chatId: chatId ?? this.chatId,
          lastMessage: lastMessage ?? this.lastMessage,
          positions: positions ?? this.positions);
}

extension UpdateChatPositionExtensions on UpdateChatPosition {
  UpdateChatPosition copy({int? chatId, ChatPosition? position}) =>
      UpdateChatPosition(
          chatId: chatId ?? this.chatId, position: position ?? this.position);
}

extension UpdateChatIsMarkedAsUnreadExtensions on UpdateChatIsMarkedAsUnread {
  UpdateChatIsMarkedAsUnread copy({int? chatId, bool? isMarkedAsUnread}) =>
      UpdateChatIsMarkedAsUnread(
          chatId: chatId ?? this.chatId,
          isMarkedAsUnread: isMarkedAsUnread ?? this.isMarkedAsUnread);
}

extension UpdateChatIsBlockedExtensions on UpdateChatIsBlocked {
  UpdateChatIsBlocked copy({int? chatId, bool? isBlocked}) =>
      UpdateChatIsBlocked(
          chatId: chatId ?? this.chatId,
          isBlocked: isBlocked ?? this.isBlocked);
}

extension UpdateChatHasScheduledMessagesExtensions
    on UpdateChatHasScheduledMessages {
  UpdateChatHasScheduledMessages copy(
          {int? chatId, bool? hasScheduledMessages}) =>
      UpdateChatHasScheduledMessages(
          chatId: chatId ?? this.chatId,
          hasScheduledMessages:
              hasScheduledMessages ?? this.hasScheduledMessages);
}

extension UpdateChatVoiceChatExtensions on UpdateChatVoiceChat {
  UpdateChatVoiceChat copy({int? chatId, VoiceChat? voiceChat}) =>
      UpdateChatVoiceChat(
          chatId: chatId ?? this.chatId,
          voiceChat: voiceChat ?? this.voiceChat);
}

extension UpdateChatDefaultDisableNotificationExtensions
    on UpdateChatDefaultDisableNotification {
  UpdateChatDefaultDisableNotification copy(
          {int? chatId, bool? defaultDisableNotification}) =>
      UpdateChatDefaultDisableNotification(
          chatId: chatId ?? this.chatId,
          defaultDisableNotification:
              defaultDisableNotification ?? this.defaultDisableNotification);
}

extension UpdateChatReadInboxExtensions on UpdateChatReadInbox {
  UpdateChatReadInbox copy(
          {int? chatId, int? lastReadInboxMessageId, int? unreadCount}) =>
      UpdateChatReadInbox(
          chatId: chatId ?? this.chatId,
          lastReadInboxMessageId:
              lastReadInboxMessageId ?? this.lastReadInboxMessageId,
          unreadCount: unreadCount ?? this.unreadCount);
}

extension UpdateChatReadOutboxExtensions on UpdateChatReadOutbox {
  UpdateChatReadOutbox copy({int? chatId, int? lastReadOutboxMessageId}) =>
      UpdateChatReadOutbox(
          chatId: chatId ?? this.chatId,
          lastReadOutboxMessageId:
              lastReadOutboxMessageId ?? this.lastReadOutboxMessageId);
}

extension UpdateChatUnreadMentionCountExtensions
    on UpdateChatUnreadMentionCount {
  UpdateChatUnreadMentionCount copy({int? chatId, int? unreadMentionCount}) =>
      UpdateChatUnreadMentionCount(
          chatId: chatId ?? this.chatId,
          unreadMentionCount: unreadMentionCount ?? this.unreadMentionCount);
}

extension UpdateChatNotificationSettingsExtensions
    on UpdateChatNotificationSettings {
  UpdateChatNotificationSettings copy(
          {int? chatId, ChatNotificationSettings? notificationSettings}) =>
      UpdateChatNotificationSettings(
          chatId: chatId ?? this.chatId,
          notificationSettings:
              notificationSettings ?? this.notificationSettings);
}

extension UpdateScopeNotificationSettingsExtensions
    on UpdateScopeNotificationSettings {
  UpdateScopeNotificationSettings copy(
          {NotificationSettingsScope? scope,
          ScopeNotificationSettings? notificationSettings}) =>
      UpdateScopeNotificationSettings(
          scope: scope ?? this.scope,
          notificationSettings:
              notificationSettings ?? this.notificationSettings);
}

extension UpdateChatMessageTtlSettingExtensions on UpdateChatMessageTtlSetting {
  UpdateChatMessageTtlSetting copy({int? chatId, int? messageTtlSetting}) =>
      UpdateChatMessageTtlSetting(
          chatId: chatId ?? this.chatId,
          messageTtlSetting: messageTtlSetting ?? this.messageTtlSetting);
}

extension UpdateChatActionBarExtensions on UpdateChatActionBar {
  UpdateChatActionBar copy({int? chatId, ChatActionBar? actionBar}) =>
      UpdateChatActionBar(
          chatId: chatId ?? this.chatId,
          actionBar: actionBar ?? this.actionBar);
}

extension UpdateChatReplyMarkupExtensions on UpdateChatReplyMarkup {
  UpdateChatReplyMarkup copy({int? chatId, int? replyMarkupMessageId}) =>
      UpdateChatReplyMarkup(
          chatId: chatId ?? this.chatId,
          replyMarkupMessageId:
              replyMarkupMessageId ?? this.replyMarkupMessageId);
}

extension UpdateChatDraftMessageExtensions on UpdateChatDraftMessage {
  UpdateChatDraftMessage copy(
          {int? chatId,
          DraftMessage? draftMessage,
          List<ChatPosition>? positions}) =>
      UpdateChatDraftMessage(
          chatId: chatId ?? this.chatId,
          draftMessage: draftMessage ?? this.draftMessage,
          positions: positions ?? this.positions);
}

extension UpdateChatFiltersExtensions on UpdateChatFilters {
  UpdateChatFilters copy({List<ChatFilterInfo>? chatFilters}) =>
      UpdateChatFilters(chatFilters: chatFilters ?? this.chatFilters);
}

extension UpdateChatOnlineMemberCountExtensions on UpdateChatOnlineMemberCount {
  UpdateChatOnlineMemberCount copy({int? chatId, int? onlineMemberCount}) =>
      UpdateChatOnlineMemberCount(
          chatId: chatId ?? this.chatId,
          onlineMemberCount: onlineMemberCount ?? this.onlineMemberCount);
}

extension UpdateNotificationExtensions on UpdateNotification {
  UpdateNotification copy(
          {int? notificationGroupId, Notification? notification}) =>
      UpdateNotification(
          notificationGroupId: notificationGroupId ?? this.notificationGroupId,
          notification: notification ?? this.notification);
}

extension UpdateNotificationGroupExtensions on UpdateNotificationGroup {
  UpdateNotificationGroup copy(
          {int? notificationGroupId,
          NotificationGroupType? type,
          int? chatId,
          int? notificationSettingsChatId,
          bool? isSilent,
          int? totalCount,
          List<Notification>? addedNotifications,
          List<int>? removedNotificationIds}) =>
      UpdateNotificationGroup(
          notificationGroupId: notificationGroupId ?? this.notificationGroupId,
          type: type ?? this.type,
          chatId: chatId ?? this.chatId,
          notificationSettingsChatId:
              notificationSettingsChatId ?? this.notificationSettingsChatId,
          isSilent: isSilent ?? this.isSilent,
          totalCount: totalCount ?? this.totalCount,
          addedNotifications: addedNotifications ?? this.addedNotifications,
          removedNotificationIds:
              removedNotificationIds ?? this.removedNotificationIds);
}

extension UpdateActiveNotificationsExtensions on UpdateActiveNotifications {
  UpdateActiveNotifications copy({List<NotificationGroup>? groups}) =>
      UpdateActiveNotifications(groups: groups ?? this.groups);
}

extension UpdateHavePendingNotificationsExtensions
    on UpdateHavePendingNotifications {
  UpdateHavePendingNotifications copy(
          {bool? haveDelayedNotifications,
          bool? haveUnreceivedNotifications}) =>
      UpdateHavePendingNotifications(
          haveDelayedNotifications:
              haveDelayedNotifications ?? this.haveDelayedNotifications,
          haveUnreceivedNotifications:
              haveUnreceivedNotifications ?? this.haveUnreceivedNotifications);
}

extension UpdateDeleteMessagesExtensions on UpdateDeleteMessages {
  UpdateDeleteMessages copy(
          {int? chatId,
          List<int>? messageIds,
          bool? isPermanent,
          bool? fromCache}) =>
      UpdateDeleteMessages(
          chatId: chatId ?? this.chatId,
          messageIds: messageIds ?? this.messageIds,
          isPermanent: isPermanent ?? this.isPermanent,
          fromCache: fromCache ?? this.fromCache);
}

extension UpdateUserChatActionExtensions on UpdateUserChatAction {
  UpdateUserChatAction copy(
          {int? chatId,
          int? messageThreadId,
          int? userId,
          ChatAction? action}) =>
      UpdateUserChatAction(
          chatId: chatId ?? this.chatId,
          messageThreadId: messageThreadId ?? this.messageThreadId,
          userId: userId ?? this.userId,
          action: action ?? this.action);
}

extension UpdateUserStatusExtensions on UpdateUserStatus {
  UpdateUserStatus copy({int? userId, UserStatus? status}) => UpdateUserStatus(
      userId: userId ?? this.userId, status: status ?? this.status);
}

extension UpdateUserExtensions on UpdateUser {
  UpdateUser copy({User? user}) => UpdateUser(user: user ?? this.user);
}

extension UpdateBasicGroupExtensions on UpdateBasicGroup {
  UpdateBasicGroup copy({BasicGroup? basicGroup}) =>
      UpdateBasicGroup(basicGroup: basicGroup ?? this.basicGroup);
}

extension UpdateSupergroupExtensions on UpdateSupergroup {
  UpdateSupergroup copy({Supergroup? supergroup}) =>
      UpdateSupergroup(supergroup: supergroup ?? this.supergroup);
}

extension UpdateSecretChatExtensions on UpdateSecretChat {
  UpdateSecretChat copy({SecretChat? secretChat}) =>
      UpdateSecretChat(secretChat: secretChat ?? this.secretChat);
}

extension UpdateUserFullInfoExtensions on UpdateUserFullInfo {
  UpdateUserFullInfo copy({int? userId, UserFullInfo? userFullInfo}) =>
      UpdateUserFullInfo(
          userId: userId ?? this.userId,
          userFullInfo: userFullInfo ?? this.userFullInfo);
}

extension UpdateBasicGroupFullInfoExtensions on UpdateBasicGroupFullInfo {
  UpdateBasicGroupFullInfo copy(
          {int? basicGroupId, BasicGroupFullInfo? basicGroupFullInfo}) =>
      UpdateBasicGroupFullInfo(
          basicGroupId: basicGroupId ?? this.basicGroupId,
          basicGroupFullInfo: basicGroupFullInfo ?? this.basicGroupFullInfo);
}

extension UpdateSupergroupFullInfoExtensions on UpdateSupergroupFullInfo {
  UpdateSupergroupFullInfo copy(
          {int? supergroupId, SupergroupFullInfo? supergroupFullInfo}) =>
      UpdateSupergroupFullInfo(
          supergroupId: supergroupId ?? this.supergroupId,
          supergroupFullInfo: supergroupFullInfo ?? this.supergroupFullInfo);
}

extension UpdateServiceNotificationExtensions on UpdateServiceNotification {
  UpdateServiceNotification copy({String? type, MessageContent? content}) =>
      UpdateServiceNotification(
          type: type ?? this.type, content: content ?? this.content);
}

extension UpdateFileExtensions on UpdateFile {
  UpdateFile copy({File? file}) => UpdateFile(file: file ?? this.file);
}

extension UpdateFileGenerationStartExtensions on UpdateFileGenerationStart {
  UpdateFileGenerationStart copy(
          {int? generationId,
          String? originalPath,
          String? destinationPath,
          String? conversion}) =>
      UpdateFileGenerationStart(
          generationId: generationId ?? this.generationId,
          originalPath: originalPath ?? this.originalPath,
          destinationPath: destinationPath ?? this.destinationPath,
          conversion: conversion ?? this.conversion);
}

extension UpdateFileGenerationStopExtensions on UpdateFileGenerationStop {
  UpdateFileGenerationStop copy({int? generationId}) =>
      UpdateFileGenerationStop(generationId: generationId ?? this.generationId);
}

extension UpdateCallExtensions on UpdateCall {
  UpdateCall copy({Call? call}) => UpdateCall(call: call ?? this.call);
}

extension UpdateGroupCallExtensions on UpdateGroupCall {
  UpdateGroupCall copy({GroupCall? groupCall}) =>
      UpdateGroupCall(groupCall: groupCall ?? this.groupCall);
}

extension UpdateGroupCallParticipantExtensions on UpdateGroupCallParticipant {
  UpdateGroupCallParticipant copy(
          {int? groupCallId, GroupCallParticipant? participant}) =>
      UpdateGroupCallParticipant(
          groupCallId: groupCallId ?? this.groupCallId,
          participant: participant ?? this.participant);
}

extension UpdateNewCallSignalingDataExtensions on UpdateNewCallSignalingData {
  UpdateNewCallSignalingData copy({int? callId, String? data}) =>
      UpdateNewCallSignalingData(
          callId: callId ?? this.callId, data: data ?? this.data);
}

extension UpdateUserPrivacySettingRulesExtensions
    on UpdateUserPrivacySettingRules {
  UpdateUserPrivacySettingRules copy(
          {UserPrivacySetting? setting, UserPrivacySettingRules? rules}) =>
      UpdateUserPrivacySettingRules(
          setting: setting ?? this.setting, rules: rules ?? this.rules);
}

extension UpdateUnreadMessageCountExtensions on UpdateUnreadMessageCount {
  UpdateUnreadMessageCount copy(
          {ChatList? chatList, int? unreadCount, int? unreadUnmutedCount}) =>
      UpdateUnreadMessageCount(
          chatList: chatList ?? this.chatList,
          unreadCount: unreadCount ?? this.unreadCount,
          unreadUnmutedCount: unreadUnmutedCount ?? this.unreadUnmutedCount);
}

extension UpdateUnreadChatCountExtensions on UpdateUnreadChatCount {
  UpdateUnreadChatCount copy(
          {ChatList? chatList,
          int? totalCount,
          int? unreadCount,
          int? unreadUnmutedCount,
          int? markedAsUnreadCount,
          int? markedAsUnreadUnmutedCount}) =>
      UpdateUnreadChatCount(
          chatList: chatList ?? this.chatList,
          totalCount: totalCount ?? this.totalCount,
          unreadCount: unreadCount ?? this.unreadCount,
          unreadUnmutedCount: unreadUnmutedCount ?? this.unreadUnmutedCount,
          markedAsUnreadCount: markedAsUnreadCount ?? this.markedAsUnreadCount,
          markedAsUnreadUnmutedCount:
              markedAsUnreadUnmutedCount ?? this.markedAsUnreadUnmutedCount);
}

extension UpdateOptionExtensions on UpdateOption {
  UpdateOption copy({String? name, OptionValue? value}) =>
      UpdateOption(name: name ?? this.name, value: value ?? this.value);
}

extension UpdateStickerSetExtensions on UpdateStickerSet {
  UpdateStickerSet copy({StickerSet? stickerSet}) =>
      UpdateStickerSet(stickerSet: stickerSet ?? this.stickerSet);
}

extension UpdateInstalledStickerSetsExtensions on UpdateInstalledStickerSets {
  UpdateInstalledStickerSets copy({bool? isMasks, List<int>? stickerSetIds}) =>
      UpdateInstalledStickerSets(
          isMasks: isMasks ?? this.isMasks,
          stickerSetIds: stickerSetIds ?? this.stickerSetIds);
}

extension UpdateTrendingStickerSetsExtensions on UpdateTrendingStickerSets {
  UpdateTrendingStickerSets copy({StickerSets? stickerSets}) =>
      UpdateTrendingStickerSets(stickerSets: stickerSets ?? this.stickerSets);
}

extension UpdateRecentStickersExtensions on UpdateRecentStickers {
  UpdateRecentStickers copy({bool? isAttached, List<int>? stickerIds}) =>
      UpdateRecentStickers(
          isAttached: isAttached ?? this.isAttached,
          stickerIds: stickerIds ?? this.stickerIds);
}

extension UpdateFavoriteStickersExtensions on UpdateFavoriteStickers {
  UpdateFavoriteStickers copy({List<int>? stickerIds}) =>
      UpdateFavoriteStickers(stickerIds: stickerIds ?? this.stickerIds);
}

extension UpdateSavedAnimationsExtensions on UpdateSavedAnimations {
  UpdateSavedAnimations copy({List<int>? animationIds}) =>
      UpdateSavedAnimations(animationIds: animationIds ?? this.animationIds);
}

extension UpdateSelectedBackgroundExtensions on UpdateSelectedBackground {
  UpdateSelectedBackground copy({bool? forDarkTheme, Background? background}) =>
      UpdateSelectedBackground(
          forDarkTheme: forDarkTheme ?? this.forDarkTheme,
          background: background ?? this.background);
}

extension UpdateLanguagePackStringsExtensions on UpdateLanguagePackStrings {
  UpdateLanguagePackStrings copy(
          {String? localizationTarget,
          String? languagePackId,
          List<LanguagePackString>? strings}) =>
      UpdateLanguagePackStrings(
          localizationTarget: localizationTarget ?? this.localizationTarget,
          languagePackId: languagePackId ?? this.languagePackId,
          strings: strings ?? this.strings);
}

extension UpdateConnectionStateExtensions on UpdateConnectionState {
  UpdateConnectionState copy({ConnectionState? state}) =>
      UpdateConnectionState(state: state ?? this.state);
}

extension UpdateTermsOfServiceExtensions on UpdateTermsOfService {
  UpdateTermsOfService copy(
          {String? termsOfServiceId, TermsOfService? termsOfService}) =>
      UpdateTermsOfService(
          termsOfServiceId: termsOfServiceId ?? this.termsOfServiceId,
          termsOfService: termsOfService ?? this.termsOfService);
}

extension UpdateUsersNearbyExtensions on UpdateUsersNearby {
  UpdateUsersNearby copy({List<ChatNearby>? usersNearby}) =>
      UpdateUsersNearby(usersNearby: usersNearby ?? this.usersNearby);
}

extension UpdateDiceEmojisExtensions on UpdateDiceEmojis {
  UpdateDiceEmojis copy({List<String>? emojis}) =>
      UpdateDiceEmojis(emojis: emojis ?? this.emojis);
}

extension UpdateAnimationSearchParametersExtensions
    on UpdateAnimationSearchParameters {
  UpdateAnimationSearchParameters copy(
          {String? provider, List<String>? emojis}) =>
      UpdateAnimationSearchParameters(
          provider: provider ?? this.provider, emojis: emojis ?? this.emojis);
}

extension UpdateSuggestedActionsExtensions on UpdateSuggestedActions {
  UpdateSuggestedActions copy(
          {List<SuggestedAction>? addedActions,
          List<SuggestedAction>? removedActions}) =>
      UpdateSuggestedActions(
          addedActions: addedActions ?? this.addedActions,
          removedActions: removedActions ?? this.removedActions);
}

extension UpdateNewInlineQueryExtensions on UpdateNewInlineQuery {
  UpdateNewInlineQuery copy(
          {int? id,
          int? senderUserId,
          Location? userLocation,
          ChatType? chatType,
          String? query,
          String? offset}) =>
      UpdateNewInlineQuery(
          id: id ?? this.id,
          senderUserId: senderUserId ?? this.senderUserId,
          userLocation: userLocation ?? this.userLocation,
          chatType: chatType ?? this.chatType,
          query: query ?? this.query,
          offset: offset ?? this.offset);
}

extension UpdateNewChosenInlineResultExtensions on UpdateNewChosenInlineResult {
  UpdateNewChosenInlineResult copy(
          {int? senderUserId,
          Location? userLocation,
          String? query,
          String? resultId,
          String? inlineMessageId}) =>
      UpdateNewChosenInlineResult(
          senderUserId: senderUserId ?? this.senderUserId,
          userLocation: userLocation ?? this.userLocation,
          query: query ?? this.query,
          resultId: resultId ?? this.resultId,
          inlineMessageId: inlineMessageId ?? this.inlineMessageId);
}

extension UpdateNewCallbackQueryExtensions on UpdateNewCallbackQuery {
  UpdateNewCallbackQuery copy(
          {int? id,
          int? senderUserId,
          int? chatId,
          int? messageId,
          int? chatInstance,
          CallbackQueryPayload? payload}) =>
      UpdateNewCallbackQuery(
          id: id ?? this.id,
          senderUserId: senderUserId ?? this.senderUserId,
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          chatInstance: chatInstance ?? this.chatInstance,
          payload: payload ?? this.payload);
}

extension UpdateNewInlineCallbackQueryExtensions
    on UpdateNewInlineCallbackQuery {
  UpdateNewInlineCallbackQuery copy(
          {int? id,
          int? senderUserId,
          String? inlineMessageId,
          int? chatInstance,
          CallbackQueryPayload? payload}) =>
      UpdateNewInlineCallbackQuery(
          id: id ?? this.id,
          senderUserId: senderUserId ?? this.senderUserId,
          inlineMessageId: inlineMessageId ?? this.inlineMessageId,
          chatInstance: chatInstance ?? this.chatInstance,
          payload: payload ?? this.payload);
}

extension UpdateNewShippingQueryExtensions on UpdateNewShippingQuery {
  UpdateNewShippingQuery copy(
          {int? id,
          int? senderUserId,
          String? invoicePayload,
          Address? shippingAddress}) =>
      UpdateNewShippingQuery(
          id: id ?? this.id,
          senderUserId: senderUserId ?? this.senderUserId,
          invoicePayload: invoicePayload ?? this.invoicePayload,
          shippingAddress: shippingAddress ?? this.shippingAddress);
}

extension UpdateNewPreCheckoutQueryExtensions on UpdateNewPreCheckoutQuery {
  UpdateNewPreCheckoutQuery copy(
          {int? id,
          int? senderUserId,
          String? currency,
          int? totalAmount,
          String? invoicePayload,
          String? shippingOptionId,
          OrderInfo? orderInfo}) =>
      UpdateNewPreCheckoutQuery(
          id: id ?? this.id,
          senderUserId: senderUserId ?? this.senderUserId,
          currency: currency ?? this.currency,
          totalAmount: totalAmount ?? this.totalAmount,
          invoicePayload: invoicePayload ?? this.invoicePayload,
          shippingOptionId: shippingOptionId ?? this.shippingOptionId,
          orderInfo: orderInfo ?? this.orderInfo);
}

extension UpdateNewCustomEventExtensions on UpdateNewCustomEvent {
  UpdateNewCustomEvent copy({String? event}) =>
      UpdateNewCustomEvent(event: event ?? this.event);
}

extension UpdateNewCustomQueryExtensions on UpdateNewCustomQuery {
  UpdateNewCustomQuery copy({int? id, String? data, int? timeout}) =>
      UpdateNewCustomQuery(
          id: id ?? this.id,
          data: data ?? this.data,
          timeout: timeout ?? this.timeout);
}

extension UpdatePollExtensions on UpdatePoll {
  UpdatePoll copy({Poll? poll}) => UpdatePoll(poll: poll ?? this.poll);
}

extension UpdatePollAnswerExtensions on UpdatePollAnswer {
  UpdatePollAnswer copy({int? pollId, int? userId, List<int>? optionIds}) =>
      UpdatePollAnswer(
          pollId: pollId ?? this.pollId,
          userId: userId ?? this.userId,
          optionIds: optionIds ?? this.optionIds);
}

extension UpdateChatMemberExtensions on UpdateChatMember {
  UpdateChatMember copy(
          {int? chatId,
          int? actorUserId,
          int? date,
          ChatInviteLink? inviteLink,
          ChatMember? oldChatMember,
          ChatMember? newChatMember}) =>
      UpdateChatMember(
          chatId: chatId ?? this.chatId,
          actorUserId: actorUserId ?? this.actorUserId,
          date: date ?? this.date,
          inviteLink: inviteLink ?? this.inviteLink,
          oldChatMember: oldChatMember ?? this.oldChatMember,
          newChatMember: newChatMember ?? this.newChatMember);
}

extension UpdatesExtensions on Updates {
  Updates copy({List<Update>? updates}) =>
      Updates(updates: updates ?? this.updates);
}

extension LogStreamExtensions on LogStream {
  TResult map<TResult extends Object?>(
      {required TResult Function(LogStreamDefault value) $default,
      required TResult Function(LogStreamFile value) file,
      required TResult Function(LogStreamEmpty value) empty}) {
    switch (this.getConstructor()) {
      case LogStreamDefault.CONSTRUCTOR:
        return $default.call(this as LogStreamDefault);
      case LogStreamFile.CONSTRUCTOR:
        return file.call(this as LogStreamFile);
      case LogStreamEmpty.CONSTRUCTOR:
        return empty.call(this as LogStreamEmpty);
    }
    throw StateError('not handled type ${this.runtimeType}');
  }
}

extension LogStreamFileExtensions on LogStreamFile {
  LogStreamFile copy({String? path, int? maxFileSize, bool? redirectStderr}) =>
      LogStreamFile(
          path: path ?? this.path,
          maxFileSize: maxFileSize ?? this.maxFileSize,
          redirectStderr: redirectStderr ?? this.redirectStderr);
}

extension LogVerbosityLevelExtensions on LogVerbosityLevel {
  LogVerbosityLevel copy({int? verbosityLevel}) =>
      LogVerbosityLevel(verbosityLevel: verbosityLevel ?? this.verbosityLevel);
}

extension LogTagsExtensions on LogTags {
  LogTags copy({List<String>? tags}) => LogTags(tags: tags ?? this.tags);
}

extension TestIntExtensions on TestInt {
  TestInt copy({int? value}) => TestInt(value: value ?? this.value);
}

extension TestStringExtensions on TestString {
  TestString copy({String? value}) => TestString(value: value ?? this.value);
}

extension TestBytesExtensions on TestBytes {
  TestBytes copy({String? value}) => TestBytes(value: value ?? this.value);
}

extension TestVectorIntExtensions on TestVectorInt {
  TestVectorInt copy({List<int>? value}) =>
      TestVectorInt(value: value ?? this.value);
}

extension TestVectorIntObjectExtensions on TestVectorIntObject {
  TestVectorIntObject copy({List<TestInt>? value}) =>
      TestVectorIntObject(value: value ?? this.value);
}

extension TestVectorStringExtensions on TestVectorString {
  TestVectorString copy({List<String>? value}) =>
      TestVectorString(value: value ?? this.value);
}

extension TestVectorStringObjectExtensions on TestVectorStringObject {
  TestVectorStringObject copy({List<TestString>? value}) =>
      TestVectorStringObject(value: value ?? this.value);
}

extension SetTdlibParametersExtensions on SetTdlibParameters {
  SetTdlibParameters copy({TdlibParameters? parameters}) =>
      SetTdlibParameters(parameters: parameters ?? this.parameters);
}

extension CheckDatabaseEncryptionKeyExtensions on CheckDatabaseEncryptionKey {
  CheckDatabaseEncryptionKey copy({String? encryptionKey}) =>
      CheckDatabaseEncryptionKey(
          encryptionKey: encryptionKey ?? this.encryptionKey);
}

extension SetAuthenticationPhoneNumberExtensions
    on SetAuthenticationPhoneNumber {
  SetAuthenticationPhoneNumber copy(
          {String? phoneNumber, PhoneNumberAuthenticationSettings? settings}) =>
      SetAuthenticationPhoneNumber(
          phoneNumber: phoneNumber ?? this.phoneNumber,
          settings: settings ?? this.settings);
}

extension CheckAuthenticationCodeExtensions on CheckAuthenticationCode {
  CheckAuthenticationCode copy({String? code}) =>
      CheckAuthenticationCode(code: code ?? this.code);
}

extension RequestQrCodeAuthenticationExtensions on RequestQrCodeAuthentication {
  RequestQrCodeAuthentication copy({List<int>? otherUserIds}) =>
      RequestQrCodeAuthentication(
          otherUserIds: otherUserIds ?? this.otherUserIds);
}

extension RegisterUserExtensions on RegisterUser {
  RegisterUser copy({String? firstName, String? lastName}) => RegisterUser(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName);
}

extension CheckAuthenticationPasswordExtensions on CheckAuthenticationPassword {
  CheckAuthenticationPassword copy({String? password}) =>
      CheckAuthenticationPassword(password: password ?? this.password);
}

extension RecoverAuthenticationPasswordExtensions
    on RecoverAuthenticationPassword {
  RecoverAuthenticationPassword copy({String? recoveryCode}) =>
      RecoverAuthenticationPassword(
          recoveryCode: recoveryCode ?? this.recoveryCode);
}

extension CheckAuthenticationBotTokenExtensions on CheckAuthenticationBotToken {
  CheckAuthenticationBotToken copy({String? token}) =>
      CheckAuthenticationBotToken(token: token ?? this.token);
}

extension ConfirmQrCodeAuthenticationExtensions on ConfirmQrCodeAuthentication {
  ConfirmQrCodeAuthentication copy({String? link}) =>
      ConfirmQrCodeAuthentication(link: link ?? this.link);
}

extension SetDatabaseEncryptionKeyExtensions on SetDatabaseEncryptionKey {
  SetDatabaseEncryptionKey copy({String? newEncryptionKey}) =>
      SetDatabaseEncryptionKey(
          newEncryptionKey: newEncryptionKey ?? this.newEncryptionKey);
}

extension SetPasswordExtensions on SetPassword {
  SetPassword copy(
          {String? oldPassword,
          String? newPassword,
          String? newHint,
          bool? setRecoveryEmailAddress,
          String? newRecoveryEmailAddress}) =>
      SetPassword(
          oldPassword: oldPassword ?? this.oldPassword,
          newPassword: newPassword ?? this.newPassword,
          newHint: newHint ?? this.newHint,
          setRecoveryEmailAddress:
              setRecoveryEmailAddress ?? this.setRecoveryEmailAddress,
          newRecoveryEmailAddress:
              newRecoveryEmailAddress ?? this.newRecoveryEmailAddress);
}

extension GetRecoveryEmailAddressExtensions on GetRecoveryEmailAddress {
  GetRecoveryEmailAddress copy({String? password}) =>
      GetRecoveryEmailAddress(password: password ?? this.password);
}

extension SetRecoveryEmailAddressExtensions on SetRecoveryEmailAddress {
  SetRecoveryEmailAddress copy(
          {String? password, String? newRecoveryEmailAddress}) =>
      SetRecoveryEmailAddress(
          password: password ?? this.password,
          newRecoveryEmailAddress:
              newRecoveryEmailAddress ?? this.newRecoveryEmailAddress);
}

extension CheckRecoveryEmailAddressCodeExtensions
    on CheckRecoveryEmailAddressCode {
  CheckRecoveryEmailAddressCode copy({String? code}) =>
      CheckRecoveryEmailAddressCode(code: code ?? this.code);
}

extension RecoverPasswordExtensions on RecoverPassword {
  RecoverPassword copy({String? recoveryCode}) =>
      RecoverPassword(recoveryCode: recoveryCode ?? this.recoveryCode);
}

extension CreateTemporaryPasswordExtensions on CreateTemporaryPassword {
  CreateTemporaryPassword copy({String? password, int? validFor}) =>
      CreateTemporaryPassword(
          password: password ?? this.password,
          validFor: validFor ?? this.validFor);
}

extension GetUserExtensions on GetUser {
  GetUser copy({int? userId}) => GetUser(userId: userId ?? this.userId);
}

extension GetUserFullInfoExtensions on GetUserFullInfo {
  GetUserFullInfo copy({int? userId}) =>
      GetUserFullInfo(userId: userId ?? this.userId);
}

extension GetBasicGroupExtensions on GetBasicGroup {
  GetBasicGroup copy({int? basicGroupId}) =>
      GetBasicGroup(basicGroupId: basicGroupId ?? this.basicGroupId);
}

extension GetBasicGroupFullInfoExtensions on GetBasicGroupFullInfo {
  GetBasicGroupFullInfo copy({int? basicGroupId}) =>
      GetBasicGroupFullInfo(basicGroupId: basicGroupId ?? this.basicGroupId);
}

extension GetSupergroupExtensions on GetSupergroup {
  GetSupergroup copy({int? supergroupId}) =>
      GetSupergroup(supergroupId: supergroupId ?? this.supergroupId);
}

extension GetSupergroupFullInfoExtensions on GetSupergroupFullInfo {
  GetSupergroupFullInfo copy({int? supergroupId}) =>
      GetSupergroupFullInfo(supergroupId: supergroupId ?? this.supergroupId);
}

extension GetSecretChatExtensions on GetSecretChat {
  GetSecretChat copy({int? secretChatId}) =>
      GetSecretChat(secretChatId: secretChatId ?? this.secretChatId);
}

extension GetChatExtensions on GetChat {
  GetChat copy({int? chatId}) => GetChat(chatId: chatId ?? this.chatId);
}

extension GetMessageExtensions on GetMessage {
  GetMessage copy({int? chatId, int? messageId}) => GetMessage(
      chatId: chatId ?? this.chatId, messageId: messageId ?? this.messageId);
}

extension GetMessageLocallyExtensions on GetMessageLocally {
  GetMessageLocally copy({int? chatId, int? messageId}) => GetMessageLocally(
      chatId: chatId ?? this.chatId, messageId: messageId ?? this.messageId);
}

extension GetRepliedMessageExtensions on GetRepliedMessage {
  GetRepliedMessage copy({int? chatId, int? messageId}) => GetRepliedMessage(
      chatId: chatId ?? this.chatId, messageId: messageId ?? this.messageId);
}

extension GetChatPinnedMessageExtensions on GetChatPinnedMessage {
  GetChatPinnedMessage copy({int? chatId}) =>
      GetChatPinnedMessage(chatId: chatId ?? this.chatId);
}

extension GetCallbackQueryMessageExtensions on GetCallbackQueryMessage {
  GetCallbackQueryMessage copy(
          {int? chatId, int? messageId, int? callbackQueryId}) =>
      GetCallbackQueryMessage(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          callbackQueryId: callbackQueryId ?? this.callbackQueryId);
}

extension GetMessagesExtensions on GetMessages {
  GetMessages copy({int? chatId, List<int>? messageIds}) => GetMessages(
      chatId: chatId ?? this.chatId, messageIds: messageIds ?? this.messageIds);
}

extension GetMessageThreadExtensions on GetMessageThread {
  GetMessageThread copy({int? chatId, int? messageId}) => GetMessageThread(
      chatId: chatId ?? this.chatId, messageId: messageId ?? this.messageId);
}

extension GetFileExtensions on GetFile {
  GetFile copy({int? fileId}) => GetFile(fileId: fileId ?? this.fileId);
}

extension GetRemoteFileExtensions on GetRemoteFile {
  GetRemoteFile copy({String? remoteFileId, FileType? fileType}) =>
      GetRemoteFile(
          remoteFileId: remoteFileId ?? this.remoteFileId,
          fileType: fileType ?? this.fileType);
}

extension GetChatsExtensions on GetChats {
  GetChats copy(
          {ChatList? chatList,
          int? offsetOrder,
          int? offsetChatId,
          int? limit}) =>
      GetChats(
          chatList: chatList ?? this.chatList,
          offsetOrder: offsetOrder ?? this.offsetOrder,
          offsetChatId: offsetChatId ?? this.offsetChatId,
          limit: limit ?? this.limit);
}

extension SearchPublicChatExtensions on SearchPublicChat {
  SearchPublicChat copy({String? username}) =>
      SearchPublicChat(username: username ?? this.username);
}

extension SearchPublicChatsExtensions on SearchPublicChats {
  SearchPublicChats copy({String? query}) =>
      SearchPublicChats(query: query ?? this.query);
}

extension SearchChatsExtensions on SearchChats {
  SearchChats copy({String? query, int? limit}) =>
      SearchChats(query: query ?? this.query, limit: limit ?? this.limit);
}

extension SearchChatsOnServerExtensions on SearchChatsOnServer {
  SearchChatsOnServer copy({String? query, int? limit}) => SearchChatsOnServer(
      query: query ?? this.query, limit: limit ?? this.limit);
}

extension SearchChatsNearbyExtensions on SearchChatsNearby {
  SearchChatsNearby copy({Location? location}) =>
      SearchChatsNearby(location: location ?? this.location);
}

extension GetTopChatsExtensions on GetTopChats {
  GetTopChats copy({TopChatCategory? category, int? limit}) => GetTopChats(
      category: category ?? this.category, limit: limit ?? this.limit);
}

extension RemoveTopChatExtensions on RemoveTopChat {
  RemoveTopChat copy({TopChatCategory? category, int? chatId}) => RemoveTopChat(
      category: category ?? this.category, chatId: chatId ?? this.chatId);
}

extension AddRecentlyFoundChatExtensions on AddRecentlyFoundChat {
  AddRecentlyFoundChat copy({int? chatId}) =>
      AddRecentlyFoundChat(chatId: chatId ?? this.chatId);
}

extension RemoveRecentlyFoundChatExtensions on RemoveRecentlyFoundChat {
  RemoveRecentlyFoundChat copy({int? chatId}) =>
      RemoveRecentlyFoundChat(chatId: chatId ?? this.chatId);
}

extension CheckChatUsernameExtensions on CheckChatUsername {
  CheckChatUsername copy({int? chatId, String? username}) => CheckChatUsername(
      chatId: chatId ?? this.chatId, username: username ?? this.username);
}

extension GetCreatedPublicChatsExtensions on GetCreatedPublicChats {
  GetCreatedPublicChats copy({PublicChatType? type}) =>
      GetCreatedPublicChats(type: type ?? this.type);
}

extension CheckCreatedPublicChatsLimitExtensions
    on CheckCreatedPublicChatsLimit {
  CheckCreatedPublicChatsLimit copy({PublicChatType? type}) =>
      CheckCreatedPublicChatsLimit(type: type ?? this.type);
}

extension GetGroupsInCommonExtensions on GetGroupsInCommon {
  GetGroupsInCommon copy({int? userId, int? offsetChatId, int? limit}) =>
      GetGroupsInCommon(
          userId: userId ?? this.userId,
          offsetChatId: offsetChatId ?? this.offsetChatId,
          limit: limit ?? this.limit);
}

extension GetChatHistoryExtensions on GetChatHistory {
  GetChatHistory copy(
          {int? chatId,
          int? fromMessageId,
          int? offset,
          int? limit,
          bool? onlyLocal}) =>
      GetChatHistory(
          chatId: chatId ?? this.chatId,
          fromMessageId: fromMessageId ?? this.fromMessageId,
          offset: offset ?? this.offset,
          limit: limit ?? this.limit,
          onlyLocal: onlyLocal ?? this.onlyLocal);
}

extension GetMessageThreadHistoryExtensions on GetMessageThreadHistory {
  GetMessageThreadHistory copy(
          {int? chatId,
          int? messageId,
          int? fromMessageId,
          int? offset,
          int? limit}) =>
      GetMessageThreadHistory(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          fromMessageId: fromMessageId ?? this.fromMessageId,
          offset: offset ?? this.offset,
          limit: limit ?? this.limit);
}

extension DeleteChatHistoryExtensions on DeleteChatHistory {
  DeleteChatHistory copy(
          {int? chatId, bool? removeFromChatList, bool? revoke}) =>
      DeleteChatHistory(
          chatId: chatId ?? this.chatId,
          removeFromChatList: removeFromChatList ?? this.removeFromChatList,
          revoke: revoke ?? this.revoke);
}

extension DeleteChatExtensions on DeleteChat {
  DeleteChat copy({int? chatId}) => DeleteChat(chatId: chatId ?? this.chatId);
}

extension SearchChatMessagesExtensions on SearchChatMessages {
  SearchChatMessages copy(
          {int? chatId,
          String? query,
          MessageSender? sender,
          int? fromMessageId,
          int? offset,
          int? limit,
          SearchMessagesFilter? filter,
          int? messageThreadId}) =>
      SearchChatMessages(
          chatId: chatId ?? this.chatId,
          query: query ?? this.query,
          sender: sender ?? this.sender,
          fromMessageId: fromMessageId ?? this.fromMessageId,
          offset: offset ?? this.offset,
          limit: limit ?? this.limit,
          filter: filter ?? this.filter,
          messageThreadId: messageThreadId ?? this.messageThreadId);
}

extension SearchMessagesExtensions on SearchMessages {
  SearchMessages copy(
          {ChatList? chatList,
          String? query,
          int? offsetDate,
          int? offsetChatId,
          int? offsetMessageId,
          int? limit,
          SearchMessagesFilter? filter,
          int? minDate,
          int? maxDate}) =>
      SearchMessages(
          chatList: chatList ?? this.chatList,
          query: query ?? this.query,
          offsetDate: offsetDate ?? this.offsetDate,
          offsetChatId: offsetChatId ?? this.offsetChatId,
          offsetMessageId: offsetMessageId ?? this.offsetMessageId,
          limit: limit ?? this.limit,
          filter: filter ?? this.filter,
          minDate: minDate ?? this.minDate,
          maxDate: maxDate ?? this.maxDate);
}

extension SearchSecretMessagesExtensions on SearchSecretMessages {
  SearchSecretMessages copy(
          {int? chatId,
          String? query,
          String? offset,
          int? limit,
          SearchMessagesFilter? filter}) =>
      SearchSecretMessages(
          chatId: chatId ?? this.chatId,
          query: query ?? this.query,
          offset: offset ?? this.offset,
          limit: limit ?? this.limit,
          filter: filter ?? this.filter);
}

extension SearchCallMessagesExtensions on SearchCallMessages {
  SearchCallMessages copy({int? fromMessageId, int? limit, bool? onlyMissed}) =>
      SearchCallMessages(
          fromMessageId: fromMessageId ?? this.fromMessageId,
          limit: limit ?? this.limit,
          onlyMissed: onlyMissed ?? this.onlyMissed);
}

extension DeleteAllCallMessagesExtensions on DeleteAllCallMessages {
  DeleteAllCallMessages copy({bool? revoke}) =>
      DeleteAllCallMessages(revoke: revoke ?? this.revoke);
}

extension SearchChatRecentLocationMessagesExtensions
    on SearchChatRecentLocationMessages {
  SearchChatRecentLocationMessages copy({int? chatId, int? limit}) =>
      SearchChatRecentLocationMessages(
          chatId: chatId ?? this.chatId, limit: limit ?? this.limit);
}

extension GetChatMessageByDateExtensions on GetChatMessageByDate {
  GetChatMessageByDate copy({int? chatId, int? date}) => GetChatMessageByDate(
      chatId: chatId ?? this.chatId, date: date ?? this.date);
}

extension GetChatMessageCountExtensions on GetChatMessageCount {
  GetChatMessageCount copy(
          {int? chatId, SearchMessagesFilter? filter, bool? returnLocal}) =>
      GetChatMessageCount(
          chatId: chatId ?? this.chatId,
          filter: filter ?? this.filter,
          returnLocal: returnLocal ?? this.returnLocal);
}

extension GetChatScheduledMessagesExtensions on GetChatScheduledMessages {
  GetChatScheduledMessages copy({int? chatId}) =>
      GetChatScheduledMessages(chatId: chatId ?? this.chatId);
}

extension GetMessagePublicForwardsExtensions on GetMessagePublicForwards {
  GetMessagePublicForwards copy(
          {int? chatId, int? messageId, String? offset, int? limit}) =>
      GetMessagePublicForwards(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          offset: offset ?? this.offset,
          limit: limit ?? this.limit);
}

extension RemoveNotificationExtensions on RemoveNotification {
  RemoveNotification copy({int? notificationGroupId, int? notificationId}) =>
      RemoveNotification(
          notificationGroupId: notificationGroupId ?? this.notificationGroupId,
          notificationId: notificationId ?? this.notificationId);
}

extension RemoveNotificationGroupExtensions on RemoveNotificationGroup {
  RemoveNotificationGroup copy(
          {int? notificationGroupId, int? maxNotificationId}) =>
      RemoveNotificationGroup(
          notificationGroupId: notificationGroupId ?? this.notificationGroupId,
          maxNotificationId: maxNotificationId ?? this.maxNotificationId);
}

extension GetMessageLinkExtensions on GetMessageLink {
  GetMessageLink copy(
          {int? chatId, int? messageId, bool? forAlbum, bool? forComment}) =>
      GetMessageLink(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          forAlbum: forAlbum ?? this.forAlbum,
          forComment: forComment ?? this.forComment);
}

extension GetMessageEmbeddingCodeExtensions on GetMessageEmbeddingCode {
  GetMessageEmbeddingCode copy({int? chatId, int? messageId, bool? forAlbum}) =>
      GetMessageEmbeddingCode(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          forAlbum: forAlbum ?? this.forAlbum);
}

extension GetMessageLinkInfoExtensions on GetMessageLinkInfo {
  GetMessageLinkInfo copy({String? url}) =>
      GetMessageLinkInfo(url: url ?? this.url);
}

extension SendMessageExtensions on SendMessage {
  SendMessage copy(
          {int? chatId,
          int? messageThreadId,
          int? replyToMessageId,
          MessageSendOptions? options,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      SendMessage(
          chatId: chatId ?? this.chatId,
          messageThreadId: messageThreadId ?? this.messageThreadId,
          replyToMessageId: replyToMessageId ?? this.replyToMessageId,
          options: options ?? this.options,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension SendMessageAlbumExtensions on SendMessageAlbum {
  SendMessageAlbum copy(
          {int? chatId,
          int? messageThreadId,
          int? replyToMessageId,
          MessageSendOptions? options,
          List<InputMessageContent>? inputMessageContents}) =>
      SendMessageAlbum(
          chatId: chatId ?? this.chatId,
          messageThreadId: messageThreadId ?? this.messageThreadId,
          replyToMessageId: replyToMessageId ?? this.replyToMessageId,
          options: options ?? this.options,
          inputMessageContents:
              inputMessageContents ?? this.inputMessageContents);
}

extension SendBotStartMessageExtensions on SendBotStartMessage {
  SendBotStartMessage copy({int? botUserId, int? chatId, String? parameter}) =>
      SendBotStartMessage(
          botUserId: botUserId ?? this.botUserId,
          chatId: chatId ?? this.chatId,
          parameter: parameter ?? this.parameter);
}

extension SendInlineQueryResultMessageExtensions
    on SendInlineQueryResultMessage {
  SendInlineQueryResultMessage copy(
          {int? chatId,
          int? messageThreadId,
          int? replyToMessageId,
          MessageSendOptions? options,
          int? queryId,
          String? resultId,
          bool? hideViaBot}) =>
      SendInlineQueryResultMessage(
          chatId: chatId ?? this.chatId,
          messageThreadId: messageThreadId ?? this.messageThreadId,
          replyToMessageId: replyToMessageId ?? this.replyToMessageId,
          options: options ?? this.options,
          queryId: queryId ?? this.queryId,
          resultId: resultId ?? this.resultId,
          hideViaBot: hideViaBot ?? this.hideViaBot);
}

extension ForwardMessagesExtensions on ForwardMessages {
  ForwardMessages copy(
          {int? chatId,
          int? fromChatId,
          List<int>? messageIds,
          MessageSendOptions? options,
          bool? sendCopy,
          bool? removeCaption}) =>
      ForwardMessages(
          chatId: chatId ?? this.chatId,
          fromChatId: fromChatId ?? this.fromChatId,
          messageIds: messageIds ?? this.messageIds,
          options: options ?? this.options,
          sendCopy: sendCopy ?? this.sendCopy,
          removeCaption: removeCaption ?? this.removeCaption);
}

extension ResendMessagesExtensions on ResendMessages {
  ResendMessages copy({int? chatId, List<int>? messageIds}) => ResendMessages(
      chatId: chatId ?? this.chatId, messageIds: messageIds ?? this.messageIds);
}

extension SendChatScreenshotTakenNotificationExtensions
    on SendChatScreenshotTakenNotification {
  SendChatScreenshotTakenNotification copy({int? chatId}) =>
      SendChatScreenshotTakenNotification(chatId: chatId ?? this.chatId);
}

extension AddLocalMessageExtensions on AddLocalMessage {
  AddLocalMessage copy(
          {int? chatId,
          MessageSender? sender,
          int? replyToMessageId,
          bool? disableNotification,
          InputMessageContent? inputMessageContent}) =>
      AddLocalMessage(
          chatId: chatId ?? this.chatId,
          sender: sender ?? this.sender,
          replyToMessageId: replyToMessageId ?? this.replyToMessageId,
          disableNotification: disableNotification ?? this.disableNotification,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension DeleteMessagesExtensions on DeleteMessages {
  DeleteMessages copy({int? chatId, List<int>? messageIds, bool? revoke}) =>
      DeleteMessages(
          chatId: chatId ?? this.chatId,
          messageIds: messageIds ?? this.messageIds,
          revoke: revoke ?? this.revoke);
}

extension DeleteChatMessagesFromUserExtensions on DeleteChatMessagesFromUser {
  DeleteChatMessagesFromUser copy({int? chatId, int? userId}) =>
      DeleteChatMessagesFromUser(
          chatId: chatId ?? this.chatId, userId: userId ?? this.userId);
}

extension EditMessageTextExtensions on EditMessageText {
  EditMessageText copy(
          {int? chatId,
          int? messageId,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      EditMessageText(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension EditMessageLiveLocationExtensions on EditMessageLiveLocation {
  EditMessageLiveLocation copy(
          {int? chatId,
          int? messageId,
          ReplyMarkup? replyMarkup,
          Location? location,
          int? heading,
          int? proximityAlertRadius}) =>
      EditMessageLiveLocation(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          location: location ?? this.location,
          heading: heading ?? this.heading,
          proximityAlertRadius:
              proximityAlertRadius ?? this.proximityAlertRadius);
}

extension EditMessageMediaExtensions on EditMessageMedia {
  EditMessageMedia copy(
          {int? chatId,
          int? messageId,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      EditMessageMedia(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension EditMessageCaptionExtensions on EditMessageCaption {
  EditMessageCaption copy(
          {int? chatId,
          int? messageId,
          ReplyMarkup? replyMarkup,
          FormattedText? caption}) =>
      EditMessageCaption(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          caption: caption ?? this.caption);
}

extension EditMessageReplyMarkupExtensions on EditMessageReplyMarkup {
  EditMessageReplyMarkup copy(
          {int? chatId, int? messageId, ReplyMarkup? replyMarkup}) =>
      EditMessageReplyMarkup(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          replyMarkup: replyMarkup ?? this.replyMarkup);
}

extension EditInlineMessageTextExtensions on EditInlineMessageText {
  EditInlineMessageText copy(
          {String? inlineMessageId,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      EditInlineMessageText(
          inlineMessageId: inlineMessageId ?? this.inlineMessageId,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension EditInlineMessageLiveLocationExtensions
    on EditInlineMessageLiveLocation {
  EditInlineMessageLiveLocation copy(
          {String? inlineMessageId,
          ReplyMarkup? replyMarkup,
          Location? location,
          int? heading,
          int? proximityAlertRadius}) =>
      EditInlineMessageLiveLocation(
          inlineMessageId: inlineMessageId ?? this.inlineMessageId,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          location: location ?? this.location,
          heading: heading ?? this.heading,
          proximityAlertRadius:
              proximityAlertRadius ?? this.proximityAlertRadius);
}

extension EditInlineMessageMediaExtensions on EditInlineMessageMedia {
  EditInlineMessageMedia copy(
          {String? inlineMessageId,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      EditInlineMessageMedia(
          inlineMessageId: inlineMessageId ?? this.inlineMessageId,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension EditInlineMessageCaptionExtensions on EditInlineMessageCaption {
  EditInlineMessageCaption copy(
          {String? inlineMessageId,
          ReplyMarkup? replyMarkup,
          FormattedText? caption}) =>
      EditInlineMessageCaption(
          inlineMessageId: inlineMessageId ?? this.inlineMessageId,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          caption: caption ?? this.caption);
}

extension EditInlineMessageReplyMarkupExtensions
    on EditInlineMessageReplyMarkup {
  EditInlineMessageReplyMarkup copy(
          {String? inlineMessageId, ReplyMarkup? replyMarkup}) =>
      EditInlineMessageReplyMarkup(
          inlineMessageId: inlineMessageId ?? this.inlineMessageId,
          replyMarkup: replyMarkup ?? this.replyMarkup);
}

extension EditMessageSchedulingStateExtensions on EditMessageSchedulingState {
  EditMessageSchedulingState copy(
          {int? chatId,
          int? messageId,
          MessageSchedulingState? schedulingState}) =>
      EditMessageSchedulingState(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          schedulingState: schedulingState ?? this.schedulingState);
}

extension GetTextEntitiesExtensions on GetTextEntities {
  GetTextEntities copy({String? text}) =>
      GetTextEntities(text: text ?? this.text);
}

extension ParseTextEntitiesExtensions on ParseTextEntities {
  ParseTextEntities copy({String? text, TextParseMode? parseMode}) =>
      ParseTextEntities(
          text: text ?? this.text, parseMode: parseMode ?? this.parseMode);
}

extension ParseMarkdownExtensions on ParseMarkdown {
  ParseMarkdown copy({FormattedText? text}) =>
      ParseMarkdown(text: text ?? this.text);
}

extension GetMarkdownTextExtensions on GetMarkdownText {
  GetMarkdownText copy({FormattedText? text}) =>
      GetMarkdownText(text: text ?? this.text);
}

extension GetFileMimeTypeExtensions on GetFileMimeType {
  GetFileMimeType copy({String? fileName}) =>
      GetFileMimeType(fileName: fileName ?? this.fileName);
}

extension GetFileExtensionExtensions on GetFileExtension {
  GetFileExtension copy({String? mimeType}) =>
      GetFileExtension(mimeType: mimeType ?? this.mimeType);
}

extension CleanFileNameExtensions on CleanFileName {
  CleanFileName copy({String? fileName}) =>
      CleanFileName(fileName: fileName ?? this.fileName);
}

extension GetLanguagePackStringExtensions on GetLanguagePackString {
  GetLanguagePackString copy(
          {String? languagePackDatabasePath,
          String? localizationTarget,
          String? languagePackId,
          String? key}) =>
      GetLanguagePackString(
          languagePackDatabasePath:
              languagePackDatabasePath ?? this.languagePackDatabasePath,
          localizationTarget: localizationTarget ?? this.localizationTarget,
          languagePackId: languagePackId ?? this.languagePackId,
          key: key ?? this.key);
}

extension GetJsonValueExtensions on GetJsonValue {
  GetJsonValue copy({String? json}) => GetJsonValue(json: json ?? this.json);
}

extension GetJsonStringExtensions on GetJsonString {
  GetJsonString copy({JsonValue? jsonValue}) =>
      GetJsonString(jsonValue: jsonValue ?? this.jsonValue);
}

extension SetPollAnswerExtensions on SetPollAnswer {
  SetPollAnswer copy({int? chatId, int? messageId, List<int>? optionIds}) =>
      SetPollAnswer(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          optionIds: optionIds ?? this.optionIds);
}

extension GetPollVotersExtensions on GetPollVoters {
  GetPollVoters copy(
          {int? chatId,
          int? messageId,
          int? optionId,
          int? offset,
          int? limit}) =>
      GetPollVoters(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          optionId: optionId ?? this.optionId,
          offset: offset ?? this.offset,
          limit: limit ?? this.limit);
}

extension StopPollExtensions on StopPoll {
  StopPoll copy({int? chatId, int? messageId, ReplyMarkup? replyMarkup}) =>
      StopPoll(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          replyMarkup: replyMarkup ?? this.replyMarkup);
}

extension HideSuggestedActionExtensions on HideSuggestedAction {
  HideSuggestedAction copy({SuggestedAction? action}) =>
      HideSuggestedAction(action: action ?? this.action);
}

extension GetLoginUrlInfoExtensions on GetLoginUrlInfo {
  GetLoginUrlInfo copy({int? chatId, int? messageId, int? buttonId}) =>
      GetLoginUrlInfo(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          buttonId: buttonId ?? this.buttonId);
}

extension GetLoginUrlExtensions on GetLoginUrl {
  GetLoginUrl copy(
          {int? chatId,
          int? messageId,
          int? buttonId,
          bool? allowWriteAccess}) =>
      GetLoginUrl(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          buttonId: buttonId ?? this.buttonId,
          allowWriteAccess: allowWriteAccess ?? this.allowWriteAccess);
}

extension GetInlineQueryResultsExtensions on GetInlineQueryResults {
  GetInlineQueryResults copy(
          {int? botUserId,
          int? chatId,
          Location? userLocation,
          String? query,
          String? offset}) =>
      GetInlineQueryResults(
          botUserId: botUserId ?? this.botUserId,
          chatId: chatId ?? this.chatId,
          userLocation: userLocation ?? this.userLocation,
          query: query ?? this.query,
          offset: offset ?? this.offset);
}

extension AnswerInlineQueryExtensions on AnswerInlineQuery {
  AnswerInlineQuery copy(
          {int? inlineQueryId,
          bool? isPersonal,
          List<InputInlineQueryResult>? results,
          int? cacheTime,
          String? nextOffset,
          String? switchPmText,
          String? switchPmParameter}) =>
      AnswerInlineQuery(
          inlineQueryId: inlineQueryId ?? this.inlineQueryId,
          isPersonal: isPersonal ?? this.isPersonal,
          results: results ?? this.results,
          cacheTime: cacheTime ?? this.cacheTime,
          nextOffset: nextOffset ?? this.nextOffset,
          switchPmText: switchPmText ?? this.switchPmText,
          switchPmParameter: switchPmParameter ?? this.switchPmParameter);
}

extension GetCallbackQueryAnswerExtensions on GetCallbackQueryAnswer {
  GetCallbackQueryAnswer copy(
          {int? chatId, int? messageId, CallbackQueryPayload? payload}) =>
      GetCallbackQueryAnswer(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          payload: payload ?? this.payload);
}

extension AnswerCallbackQueryExtensions on AnswerCallbackQuery {
  AnswerCallbackQuery copy(
          {int? callbackQueryId,
          String? text,
          bool? showAlert,
          String? url,
          int? cacheTime}) =>
      AnswerCallbackQuery(
          callbackQueryId: callbackQueryId ?? this.callbackQueryId,
          text: text ?? this.text,
          showAlert: showAlert ?? this.showAlert,
          url: url ?? this.url,
          cacheTime: cacheTime ?? this.cacheTime);
}

extension AnswerShippingQueryExtensions on AnswerShippingQuery {
  AnswerShippingQuery copy(
          {int? shippingQueryId,
          List<ShippingOption>? shippingOptions,
          String? errorMessage}) =>
      AnswerShippingQuery(
          shippingQueryId: shippingQueryId ?? this.shippingQueryId,
          shippingOptions: shippingOptions ?? this.shippingOptions,
          errorMessage: errorMessage ?? this.errorMessage);
}

extension AnswerPreCheckoutQueryExtensions on AnswerPreCheckoutQuery {
  AnswerPreCheckoutQuery copy(
          {int? preCheckoutQueryId, String? errorMessage}) =>
      AnswerPreCheckoutQuery(
          preCheckoutQueryId: preCheckoutQueryId ?? this.preCheckoutQueryId,
          errorMessage: errorMessage ?? this.errorMessage);
}

extension SetGameScoreExtensions on SetGameScore {
  SetGameScore copy(
          {int? chatId,
          int? messageId,
          bool? editMessage,
          int? userId,
          int? score,
          bool? force}) =>
      SetGameScore(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          editMessage: editMessage ?? this.editMessage,
          userId: userId ?? this.userId,
          score: score ?? this.score,
          force: force ?? this.force);
}

extension SetInlineGameScoreExtensions on SetInlineGameScore {
  SetInlineGameScore copy(
          {String? inlineMessageId,
          bool? editMessage,
          int? userId,
          int? score,
          bool? force}) =>
      SetInlineGameScore(
          inlineMessageId: inlineMessageId ?? this.inlineMessageId,
          editMessage: editMessage ?? this.editMessage,
          userId: userId ?? this.userId,
          score: score ?? this.score,
          force: force ?? this.force);
}

extension GetGameHighScoresExtensions on GetGameHighScores {
  GetGameHighScores copy({int? chatId, int? messageId, int? userId}) =>
      GetGameHighScores(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          userId: userId ?? this.userId);
}

extension GetInlineGameHighScoresExtensions on GetInlineGameHighScores {
  GetInlineGameHighScores copy({String? inlineMessageId, int? userId}) =>
      GetInlineGameHighScores(
          inlineMessageId: inlineMessageId ?? this.inlineMessageId,
          userId: userId ?? this.userId);
}

extension DeleteChatReplyMarkupExtensions on DeleteChatReplyMarkup {
  DeleteChatReplyMarkup copy({int? chatId, int? messageId}) =>
      DeleteChatReplyMarkup(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId);
}

extension SendChatActionExtensions on SendChatAction {
  SendChatAction copy(
          {int? chatId, int? messageThreadId, ChatAction? action}) =>
      SendChatAction(
          chatId: chatId ?? this.chatId,
          messageThreadId: messageThreadId ?? this.messageThreadId,
          action: action ?? this.action);
}

extension OpenChatExtensions on OpenChat {
  OpenChat copy({int? chatId}) => OpenChat(chatId: chatId ?? this.chatId);
}

extension CloseChatExtensions on CloseChat {
  CloseChat copy({int? chatId}) => CloseChat(chatId: chatId ?? this.chatId);
}

extension ViewMessagesExtensions on ViewMessages {
  ViewMessages copy(
          {int? chatId,
          int? messageThreadId,
          List<int>? messageIds,
          bool? forceRead}) =>
      ViewMessages(
          chatId: chatId ?? this.chatId,
          messageThreadId: messageThreadId ?? this.messageThreadId,
          messageIds: messageIds ?? this.messageIds,
          forceRead: forceRead ?? this.forceRead);
}

extension OpenMessageContentExtensions on OpenMessageContent {
  OpenMessageContent copy({int? chatId, int? messageId}) => OpenMessageContent(
      chatId: chatId ?? this.chatId, messageId: messageId ?? this.messageId);
}

extension GetExternalLinkInfoExtensions on GetExternalLinkInfo {
  GetExternalLinkInfo copy({String? link}) =>
      GetExternalLinkInfo(link: link ?? this.link);
}

extension GetExternalLinkExtensions on GetExternalLink {
  GetExternalLink copy({String? link, bool? allowWriteAccess}) =>
      GetExternalLink(
          link: link ?? this.link,
          allowWriteAccess: allowWriteAccess ?? this.allowWriteAccess);
}

extension ReadAllChatMentionsExtensions on ReadAllChatMentions {
  ReadAllChatMentions copy({int? chatId}) =>
      ReadAllChatMentions(chatId: chatId ?? this.chatId);
}

extension CreatePrivateChatExtensions on CreatePrivateChat {
  CreatePrivateChat copy({int? userId, bool? force}) => CreatePrivateChat(
      userId: userId ?? this.userId, force: force ?? this.force);
}

extension CreateBasicGroupChatExtensions on CreateBasicGroupChat {
  CreateBasicGroupChat copy({int? basicGroupId, bool? force}) =>
      CreateBasicGroupChat(
          basicGroupId: basicGroupId ?? this.basicGroupId,
          force: force ?? this.force);
}

extension CreateSupergroupChatExtensions on CreateSupergroupChat {
  CreateSupergroupChat copy({int? supergroupId, bool? force}) =>
      CreateSupergroupChat(
          supergroupId: supergroupId ?? this.supergroupId,
          force: force ?? this.force);
}

extension CreateSecretChatExtensions on CreateSecretChat {
  CreateSecretChat copy({int? secretChatId}) =>
      CreateSecretChat(secretChatId: secretChatId ?? this.secretChatId);
}

extension CreateNewBasicGroupChatExtensions on CreateNewBasicGroupChat {
  CreateNewBasicGroupChat copy({List<int>? userIds, String? title}) =>
      CreateNewBasicGroupChat(
          userIds: userIds ?? this.userIds, title: title ?? this.title);
}

extension CreateNewSupergroupChatExtensions on CreateNewSupergroupChat {
  CreateNewSupergroupChat copy(
          {String? title,
          bool? isChannel,
          String? description,
          ChatLocation? location,
          bool? forImport}) =>
      CreateNewSupergroupChat(
          title: title ?? this.title,
          isChannel: isChannel ?? this.isChannel,
          description: description ?? this.description,
          location: location ?? this.location,
          forImport: forImport ?? this.forImport);
}

extension CreateNewSecretChatExtensions on CreateNewSecretChat {
  CreateNewSecretChat copy({int? userId}) =>
      CreateNewSecretChat(userId: userId ?? this.userId);
}

extension UpgradeBasicGroupChatToSupergroupChatExtensions
    on UpgradeBasicGroupChatToSupergroupChat {
  UpgradeBasicGroupChatToSupergroupChat copy({int? chatId}) =>
      UpgradeBasicGroupChatToSupergroupChat(chatId: chatId ?? this.chatId);
}

extension GetChatListsToAddChatExtensions on GetChatListsToAddChat {
  GetChatListsToAddChat copy({int? chatId}) =>
      GetChatListsToAddChat(chatId: chatId ?? this.chatId);
}

extension AddChatToListExtensions on AddChatToList {
  AddChatToList copy({int? chatId, ChatList? chatList}) => AddChatToList(
      chatId: chatId ?? this.chatId, chatList: chatList ?? this.chatList);
}

extension GetChatFilterExtensions on GetChatFilter {
  GetChatFilter copy({int? chatFilterId}) =>
      GetChatFilter(chatFilterId: chatFilterId ?? this.chatFilterId);
}

extension CreateChatFilterExtensions on CreateChatFilter {
  CreateChatFilter copy({ChatFilter? filter}) =>
      CreateChatFilter(filter: filter ?? this.filter);
}

extension EditChatFilterExtensions on EditChatFilter {
  EditChatFilter copy({int? chatFilterId, ChatFilter? filter}) =>
      EditChatFilter(
          chatFilterId: chatFilterId ?? this.chatFilterId,
          filter: filter ?? this.filter);
}

extension DeleteChatFilterExtensions on DeleteChatFilter {
  DeleteChatFilter copy({int? chatFilterId}) =>
      DeleteChatFilter(chatFilterId: chatFilterId ?? this.chatFilterId);
}

extension ReorderChatFiltersExtensions on ReorderChatFilters {
  ReorderChatFilters copy({List<int>? chatFilterIds}) =>
      ReorderChatFilters(chatFilterIds: chatFilterIds ?? this.chatFilterIds);
}

extension GetChatFilterDefaultIconNameExtensions
    on GetChatFilterDefaultIconName {
  GetChatFilterDefaultIconName copy({ChatFilter? filter}) =>
      GetChatFilterDefaultIconName(filter: filter ?? this.filter);
}

extension SetChatTitleExtensions on SetChatTitle {
  SetChatTitle copy({int? chatId, String? title}) =>
      SetChatTitle(chatId: chatId ?? this.chatId, title: title ?? this.title);
}

extension SetChatPhotoExtensions on SetChatPhoto {
  SetChatPhoto copy({int? chatId, InputChatPhoto? photo}) =>
      SetChatPhoto(chatId: chatId ?? this.chatId, photo: photo ?? this.photo);
}

extension SetChatMessageTtlSettingExtensions on SetChatMessageTtlSetting {
  SetChatMessageTtlSetting copy({int? chatId, int? ttl}) =>
      SetChatMessageTtlSetting(
          chatId: chatId ?? this.chatId, ttl: ttl ?? this.ttl);
}

extension SetChatPermissionsExtensions on SetChatPermissions {
  SetChatPermissions copy({int? chatId, ChatPermissions? permissions}) =>
      SetChatPermissions(
          chatId: chatId ?? this.chatId,
          permissions: permissions ?? this.permissions);
}

extension SetChatDraftMessageExtensions on SetChatDraftMessage {
  SetChatDraftMessage copy(
          {int? chatId, int? messageThreadId, DraftMessage? draftMessage}) =>
      SetChatDraftMessage(
          chatId: chatId ?? this.chatId,
          messageThreadId: messageThreadId ?? this.messageThreadId,
          draftMessage: draftMessage ?? this.draftMessage);
}

extension SetChatNotificationSettingsExtensions on SetChatNotificationSettings {
  SetChatNotificationSettings copy(
          {int? chatId, ChatNotificationSettings? notificationSettings}) =>
      SetChatNotificationSettings(
          chatId: chatId ?? this.chatId,
          notificationSettings:
              notificationSettings ?? this.notificationSettings);
}

extension ToggleChatIsMarkedAsUnreadExtensions on ToggleChatIsMarkedAsUnread {
  ToggleChatIsMarkedAsUnread copy({int? chatId, bool? isMarkedAsUnread}) =>
      ToggleChatIsMarkedAsUnread(
          chatId: chatId ?? this.chatId,
          isMarkedAsUnread: isMarkedAsUnread ?? this.isMarkedAsUnread);
}

extension ToggleChatDefaultDisableNotificationExtensions
    on ToggleChatDefaultDisableNotification {
  ToggleChatDefaultDisableNotification copy(
          {int? chatId, bool? defaultDisableNotification}) =>
      ToggleChatDefaultDisableNotification(
          chatId: chatId ?? this.chatId,
          defaultDisableNotification:
              defaultDisableNotification ?? this.defaultDisableNotification);
}

extension SetChatClientDataExtensions on SetChatClientData {
  SetChatClientData copy({int? chatId, String? clientData}) =>
      SetChatClientData(
          chatId: chatId ?? this.chatId,
          clientData: clientData ?? this.clientData);
}

extension SetChatDescriptionExtensions on SetChatDescription {
  SetChatDescription copy({int? chatId, String? description}) =>
      SetChatDescription(
          chatId: chatId ?? this.chatId,
          description: description ?? this.description);
}

extension SetChatDiscussionGroupExtensions on SetChatDiscussionGroup {
  SetChatDiscussionGroup copy({int? chatId, int? discussionChatId}) =>
      SetChatDiscussionGroup(
          chatId: chatId ?? this.chatId,
          discussionChatId: discussionChatId ?? this.discussionChatId);
}

extension SetChatLocationExtensions on SetChatLocation {
  SetChatLocation copy({int? chatId, ChatLocation? location}) =>
      SetChatLocation(
          chatId: chatId ?? this.chatId, location: location ?? this.location);
}

extension SetChatSlowModeDelayExtensions on SetChatSlowModeDelay {
  SetChatSlowModeDelay copy({int? chatId, int? slowModeDelay}) =>
      SetChatSlowModeDelay(
          chatId: chatId ?? this.chatId,
          slowModeDelay: slowModeDelay ?? this.slowModeDelay);
}

extension PinChatMessageExtensions on PinChatMessage {
  PinChatMessage copy(
          {int? chatId,
          int? messageId,
          bool? disableNotification,
          bool? onlyForSelf}) =>
      PinChatMessage(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          disableNotification: disableNotification ?? this.disableNotification,
          onlyForSelf: onlyForSelf ?? this.onlyForSelf);
}

extension UnpinChatMessageExtensions on UnpinChatMessage {
  UnpinChatMessage copy({int? chatId, int? messageId}) => UnpinChatMessage(
      chatId: chatId ?? this.chatId, messageId: messageId ?? this.messageId);
}

extension UnpinAllChatMessagesExtensions on UnpinAllChatMessages {
  UnpinAllChatMessages copy({int? chatId}) =>
      UnpinAllChatMessages(chatId: chatId ?? this.chatId);
}

extension JoinChatExtensions on JoinChat {
  JoinChat copy({int? chatId}) => JoinChat(chatId: chatId ?? this.chatId);
}

extension LeaveChatExtensions on LeaveChat {
  LeaveChat copy({int? chatId}) => LeaveChat(chatId: chatId ?? this.chatId);
}

extension AddChatMemberExtensions on AddChatMember {
  AddChatMember copy({int? chatId, int? userId, int? forwardLimit}) =>
      AddChatMember(
          chatId: chatId ?? this.chatId,
          userId: userId ?? this.userId,
          forwardLimit: forwardLimit ?? this.forwardLimit);
}

extension AddChatMembersExtensions on AddChatMembers {
  AddChatMembers copy({int? chatId, List<int>? userIds}) => AddChatMembers(
      chatId: chatId ?? this.chatId, userIds: userIds ?? this.userIds);
}

extension SetChatMemberStatusExtensions on SetChatMemberStatus {
  SetChatMemberStatus copy(
          {int? chatId, int? userId, ChatMemberStatus? status}) =>
      SetChatMemberStatus(
          chatId: chatId ?? this.chatId,
          userId: userId ?? this.userId,
          status: status ?? this.status);
}

extension BanChatMemberExtensions on BanChatMember {
  BanChatMember copy(
          {int? chatId,
          int? userId,
          int? bannedUntilDate,
          bool? revokeMessages}) =>
      BanChatMember(
          chatId: chatId ?? this.chatId,
          userId: userId ?? this.userId,
          bannedUntilDate: bannedUntilDate ?? this.bannedUntilDate,
          revokeMessages: revokeMessages ?? this.revokeMessages);
}

extension TransferChatOwnershipExtensions on TransferChatOwnership {
  TransferChatOwnership copy({int? chatId, int? userId, String? password}) =>
      TransferChatOwnership(
          chatId: chatId ?? this.chatId,
          userId: userId ?? this.userId,
          password: password ?? this.password);
}

extension GetChatMemberExtensions on GetChatMember {
  GetChatMember copy({int? chatId, int? userId}) => GetChatMember(
      chatId: chatId ?? this.chatId, userId: userId ?? this.userId);
}

extension SearchChatMembersExtensions on SearchChatMembers {
  SearchChatMembers copy(
          {int? chatId,
          String? query,
          int? limit,
          ChatMembersFilter? filter}) =>
      SearchChatMembers(
          chatId: chatId ?? this.chatId,
          query: query ?? this.query,
          limit: limit ?? this.limit,
          filter: filter ?? this.filter);
}

extension GetChatAdministratorsExtensions on GetChatAdministrators {
  GetChatAdministrators copy({int? chatId}) =>
      GetChatAdministrators(chatId: chatId ?? this.chatId);
}

extension ClearAllDraftMessagesExtensions on ClearAllDraftMessages {
  ClearAllDraftMessages copy({bool? excludeSecretChats}) =>
      ClearAllDraftMessages(
          excludeSecretChats: excludeSecretChats ?? this.excludeSecretChats);
}

extension GetChatNotificationSettingsExceptionsExtensions
    on GetChatNotificationSettingsExceptions {
  GetChatNotificationSettingsExceptions copy(
          {NotificationSettingsScope? scope, bool? compareSound}) =>
      GetChatNotificationSettingsExceptions(
          scope: scope ?? this.scope,
          compareSound: compareSound ?? this.compareSound);
}

extension GetScopeNotificationSettingsExtensions
    on GetScopeNotificationSettings {
  GetScopeNotificationSettings copy({NotificationSettingsScope? scope}) =>
      GetScopeNotificationSettings(scope: scope ?? this.scope);
}

extension SetScopeNotificationSettingsExtensions
    on SetScopeNotificationSettings {
  SetScopeNotificationSettings copy(
          {NotificationSettingsScope? scope,
          ScopeNotificationSettings? notificationSettings}) =>
      SetScopeNotificationSettings(
          scope: scope ?? this.scope,
          notificationSettings:
              notificationSettings ?? this.notificationSettings);
}

extension ToggleChatIsPinnedExtensions on ToggleChatIsPinned {
  ToggleChatIsPinned copy({ChatList? chatList, int? chatId, bool? isPinned}) =>
      ToggleChatIsPinned(
          chatList: chatList ?? this.chatList,
          chatId: chatId ?? this.chatId,
          isPinned: isPinned ?? this.isPinned);
}

extension SetPinnedChatsExtensions on SetPinnedChats {
  SetPinnedChats copy({ChatList? chatList, List<int>? chatIds}) =>
      SetPinnedChats(
          chatList: chatList ?? this.chatList,
          chatIds: chatIds ?? this.chatIds);
}

extension DownloadFileExtensions on DownloadFile {
  DownloadFile copy(
          {int? fileId,
          int? priority,
          int? offset,
          int? limit,
          bool? synchronous}) =>
      DownloadFile(
          fileId: fileId ?? this.fileId,
          priority: priority ?? this.priority,
          offset: offset ?? this.offset,
          limit: limit ?? this.limit,
          synchronous: synchronous ?? this.synchronous);
}

extension GetFileDownloadedPrefixSizeExtensions on GetFileDownloadedPrefixSize {
  GetFileDownloadedPrefixSize copy({int? fileId, int? offset}) =>
      GetFileDownloadedPrefixSize(
          fileId: fileId ?? this.fileId, offset: offset ?? this.offset);
}

extension CancelDownloadFileExtensions on CancelDownloadFile {
  CancelDownloadFile copy({int? fileId, bool? onlyIfPending}) =>
      CancelDownloadFile(
          fileId: fileId ?? this.fileId,
          onlyIfPending: onlyIfPending ?? this.onlyIfPending);
}

extension UploadFileExtensions on UploadFile {
  UploadFile copy({InputFile? file, FileType? fileType, int? priority}) =>
      UploadFile(
          file: file ?? this.file,
          fileType: fileType ?? this.fileType,
          priority: priority ?? this.priority);
}

extension CancelUploadFileExtensions on CancelUploadFile {
  CancelUploadFile copy({int? fileId}) =>
      CancelUploadFile(fileId: fileId ?? this.fileId);
}

extension WriteGeneratedFilePartExtensions on WriteGeneratedFilePart {
  WriteGeneratedFilePart copy({int? generationId, int? offset, String? data}) =>
      WriteGeneratedFilePart(
          generationId: generationId ?? this.generationId,
          offset: offset ?? this.offset,
          data: data ?? this.data);
}

extension SetFileGenerationProgressExtensions on SetFileGenerationProgress {
  SetFileGenerationProgress copy(
          {int? generationId, int? expectedSize, int? localPrefixSize}) =>
      SetFileGenerationProgress(
          generationId: generationId ?? this.generationId,
          expectedSize: expectedSize ?? this.expectedSize,
          localPrefixSize: localPrefixSize ?? this.localPrefixSize);
}

extension FinishFileGenerationExtensions on FinishFileGeneration {
  FinishFileGeneration copy({int? generationId, TdError? error}) =>
      FinishFileGeneration(
          generationId: generationId ?? this.generationId,
          error: error ?? this.error);
}

extension ReadFilePartExtensions on ReadFilePart {
  ReadFilePart copy({int? fileId, int? offset, int? count}) => ReadFilePart(
      fileId: fileId ?? this.fileId,
      offset: offset ?? this.offset,
      count: count ?? this.count);
}

extension DeleteFileExtensions on DeleteFile {
  DeleteFile copy({int? fileId}) => DeleteFile(fileId: fileId ?? this.fileId);
}

extension GetMessageFileTypeExtensions on GetMessageFileType {
  GetMessageFileType copy({String? messageFileHead}) => GetMessageFileType(
      messageFileHead: messageFileHead ?? this.messageFileHead);
}

extension GetMessageImportConfirmationTextExtensions
    on GetMessageImportConfirmationText {
  GetMessageImportConfirmationText copy({int? chatId}) =>
      GetMessageImportConfirmationText(chatId: chatId ?? this.chatId);
}

extension ImportMessagesExtensions on ImportMessages {
  ImportMessages copy(
          {int? chatId,
          InputFile? messageFile,
          List<InputFile>? attachedFiles}) =>
      ImportMessages(
          chatId: chatId ?? this.chatId,
          messageFile: messageFile ?? this.messageFile,
          attachedFiles: attachedFiles ?? this.attachedFiles);
}

extension ReplacePrimaryChatInviteLinkExtensions
    on ReplacePrimaryChatInviteLink {
  ReplacePrimaryChatInviteLink copy({int? chatId}) =>
      ReplacePrimaryChatInviteLink(chatId: chatId ?? this.chatId);
}

extension CreateChatInviteLinkExtensions on CreateChatInviteLink {
  CreateChatInviteLink copy({int? chatId, int? expireDate, int? memberLimit}) =>
      CreateChatInviteLink(
          chatId: chatId ?? this.chatId,
          expireDate: expireDate ?? this.expireDate,
          memberLimit: memberLimit ?? this.memberLimit);
}

extension EditChatInviteLinkExtensions on EditChatInviteLink {
  EditChatInviteLink copy(
          {int? chatId,
          String? inviteLink,
          int? expireDate,
          int? memberLimit}) =>
      EditChatInviteLink(
          chatId: chatId ?? this.chatId,
          inviteLink: inviteLink ?? this.inviteLink,
          expireDate: expireDate ?? this.expireDate,
          memberLimit: memberLimit ?? this.memberLimit);
}

extension GetChatInviteLinkExtensions on GetChatInviteLink {
  GetChatInviteLink copy({int? chatId, String? inviteLink}) =>
      GetChatInviteLink(
          chatId: chatId ?? this.chatId,
          inviteLink: inviteLink ?? this.inviteLink);
}

extension GetChatInviteLinkCountsExtensions on GetChatInviteLinkCounts {
  GetChatInviteLinkCounts copy({int? chatId}) =>
      GetChatInviteLinkCounts(chatId: chatId ?? this.chatId);
}

extension GetChatInviteLinksExtensions on GetChatInviteLinks {
  GetChatInviteLinks copy(
          {int? chatId,
          int? creatorUserId,
          bool? isRevoked,
          int? offsetDate,
          String? offsetInviteLink,
          int? limit}) =>
      GetChatInviteLinks(
          chatId: chatId ?? this.chatId,
          creatorUserId: creatorUserId ?? this.creatorUserId,
          isRevoked: isRevoked ?? this.isRevoked,
          offsetDate: offsetDate ?? this.offsetDate,
          offsetInviteLink: offsetInviteLink ?? this.offsetInviteLink,
          limit: limit ?? this.limit);
}

extension GetChatInviteLinkMembersExtensions on GetChatInviteLinkMembers {
  GetChatInviteLinkMembers copy(
          {int? chatId,
          String? inviteLink,
          ChatInviteLinkMember? offsetMember,
          int? limit}) =>
      GetChatInviteLinkMembers(
          chatId: chatId ?? this.chatId,
          inviteLink: inviteLink ?? this.inviteLink,
          offsetMember: offsetMember ?? this.offsetMember,
          limit: limit ?? this.limit);
}

extension RevokeChatInviteLinkExtensions on RevokeChatInviteLink {
  RevokeChatInviteLink copy({int? chatId, String? inviteLink}) =>
      RevokeChatInviteLink(
          chatId: chatId ?? this.chatId,
          inviteLink: inviteLink ?? this.inviteLink);
}

extension DeleteRevokedChatInviteLinkExtensions on DeleteRevokedChatInviteLink {
  DeleteRevokedChatInviteLink copy({int? chatId, String? inviteLink}) =>
      DeleteRevokedChatInviteLink(
          chatId: chatId ?? this.chatId,
          inviteLink: inviteLink ?? this.inviteLink);
}

extension DeleteAllRevokedChatInviteLinksExtensions
    on DeleteAllRevokedChatInviteLinks {
  DeleteAllRevokedChatInviteLinks copy({int? chatId, int? creatorUserId}) =>
      DeleteAllRevokedChatInviteLinks(
          chatId: chatId ?? this.chatId,
          creatorUserId: creatorUserId ?? this.creatorUserId);
}

extension CheckChatInviteLinkExtensions on CheckChatInviteLink {
  CheckChatInviteLink copy({String? inviteLink}) =>
      CheckChatInviteLink(inviteLink: inviteLink ?? this.inviteLink);
}

extension JoinChatByInviteLinkExtensions on JoinChatByInviteLink {
  JoinChatByInviteLink copy({String? inviteLink}) =>
      JoinChatByInviteLink(inviteLink: inviteLink ?? this.inviteLink);
}

extension CreateCallExtensions on CreateCall {
  CreateCall copy({int? userId, CallProtocol? protocol, bool? isVideo}) =>
      CreateCall(
          userId: userId ?? this.userId,
          protocol: protocol ?? this.protocol,
          isVideo: isVideo ?? this.isVideo);
}

extension AcceptCallExtensions on AcceptCall {
  AcceptCall copy({int? callId, CallProtocol? protocol}) => AcceptCall(
      callId: callId ?? this.callId, protocol: protocol ?? this.protocol);
}

extension SendCallSignalingDataExtensions on SendCallSignalingData {
  SendCallSignalingData copy({int? callId, String? data}) =>
      SendCallSignalingData(
          callId: callId ?? this.callId, data: data ?? this.data);
}

extension DiscardCallExtensions on DiscardCall {
  DiscardCall copy(
          {int? callId,
          bool? isDisconnected,
          int? duration,
          bool? isVideo,
          int? connectionId}) =>
      DiscardCall(
          callId: callId ?? this.callId,
          isDisconnected: isDisconnected ?? this.isDisconnected,
          duration: duration ?? this.duration,
          isVideo: isVideo ?? this.isVideo,
          connectionId: connectionId ?? this.connectionId);
}

extension SendCallRatingExtensions on SendCallRating {
  SendCallRating copy(
          {int? callId,
          int? rating,
          String? comment,
          List<CallProblem>? problems}) =>
      SendCallRating(
          callId: callId ?? this.callId,
          rating: rating ?? this.rating,
          comment: comment ?? this.comment,
          problems: problems ?? this.problems);
}

extension SendCallDebugInformationExtensions on SendCallDebugInformation {
  SendCallDebugInformation copy({int? callId, String? debugInformation}) =>
      SendCallDebugInformation(
          callId: callId ?? this.callId,
          debugInformation: debugInformation ?? this.debugInformation);
}

extension GetAvailableVoiceChatAliasesExtensions
    on GetAvailableVoiceChatAliases {
  GetAvailableVoiceChatAliases copy({int? chatId}) =>
      GetAvailableVoiceChatAliases(chatId: chatId ?? this.chatId);
}

extension CreateVoiceChatExtensions on CreateVoiceChat {
  CreateVoiceChat copy({int? chatId}) =>
      CreateVoiceChat(chatId: chatId ?? this.chatId);
}

extension GetGroupCallExtensions on GetGroupCall {
  GetGroupCall copy({int? groupCallId}) =>
      GetGroupCall(groupCallId: groupCallId ?? this.groupCallId);
}

extension JoinGroupCallExtensions on JoinGroupCall {
  JoinGroupCall copy(
          {int? groupCallId,
          MessageSender? participantAlias,
          GroupCallPayload? payload,
          int? source,
          bool? isMuted,
          String? inviteHash}) =>
      JoinGroupCall(
          groupCallId: groupCallId ?? this.groupCallId,
          participantAlias: participantAlias ?? this.participantAlias,
          payload: payload ?? this.payload,
          source: source ?? this.source,
          isMuted: isMuted ?? this.isMuted,
          inviteHash: inviteHash ?? this.inviteHash);
}

extension SetGroupCallTitleExtensions on SetGroupCallTitle {
  SetGroupCallTitle copy({int? groupCallId, String? title}) =>
      SetGroupCallTitle(
          groupCallId: groupCallId ?? this.groupCallId,
          title: title ?? this.title);
}

extension ToggleGroupCallMuteNewParticipantsExtensions
    on ToggleGroupCallMuteNewParticipants {
  ToggleGroupCallMuteNewParticipants copy(
          {int? groupCallId, bool? muteNewParticipants}) =>
      ToggleGroupCallMuteNewParticipants(
          groupCallId: groupCallId ?? this.groupCallId,
          muteNewParticipants: muteNewParticipants ?? this.muteNewParticipants);
}

extension RevokeGroupCallInviteLinkExtensions on RevokeGroupCallInviteLink {
  RevokeGroupCallInviteLink copy({int? groupCallId}) =>
      RevokeGroupCallInviteLink(groupCallId: groupCallId ?? this.groupCallId);
}

extension InviteGroupCallParticipantsExtensions on InviteGroupCallParticipants {
  InviteGroupCallParticipants copy({int? groupCallId, List<int>? userIds}) =>
      InviteGroupCallParticipants(
          groupCallId: groupCallId ?? this.groupCallId,
          userIds: userIds ?? this.userIds);
}

extension GetGroupCallInviteLinkExtensions on GetGroupCallInviteLink {
  GetGroupCallInviteLink copy({int? groupCallId, bool? canSelfUnmute}) =>
      GetGroupCallInviteLink(
          groupCallId: groupCallId ?? this.groupCallId,
          canSelfUnmute: canSelfUnmute ?? this.canSelfUnmute);
}

extension StartGroupCallRecordingExtensions on StartGroupCallRecording {
  StartGroupCallRecording copy({int? groupCallId, String? title}) =>
      StartGroupCallRecording(
          groupCallId: groupCallId ?? this.groupCallId,
          title: title ?? this.title);
}

extension EndGroupCallRecordingExtensions on EndGroupCallRecording {
  EndGroupCallRecording copy({int? groupCallId}) =>
      EndGroupCallRecording(groupCallId: groupCallId ?? this.groupCallId);
}

extension SetGroupCallParticipantIsSpeakingExtensions
    on SetGroupCallParticipantIsSpeaking {
  SetGroupCallParticipantIsSpeaking copy(
          {int? groupCallId, int? source, bool? isSpeaking}) =>
      SetGroupCallParticipantIsSpeaking(
          groupCallId: groupCallId ?? this.groupCallId,
          source: source ?? this.source,
          isSpeaking: isSpeaking ?? this.isSpeaking);
}

extension ToggleGroupCallParticipantIsMutedExtensions
    on ToggleGroupCallParticipantIsMuted {
  ToggleGroupCallParticipantIsMuted copy(
          {int? groupCallId, MessageSender? participant, bool? isMuted}) =>
      ToggleGroupCallParticipantIsMuted(
          groupCallId: groupCallId ?? this.groupCallId,
          participant: participant ?? this.participant,
          isMuted: isMuted ?? this.isMuted);
}

extension SetGroupCallParticipantVolumeLevelExtensions
    on SetGroupCallParticipantVolumeLevel {
  SetGroupCallParticipantVolumeLevel copy(
          {int? groupCallId, MessageSender? participant, int? volumeLevel}) =>
      SetGroupCallParticipantVolumeLevel(
          groupCallId: groupCallId ?? this.groupCallId,
          participant: participant ?? this.participant,
          volumeLevel: volumeLevel ?? this.volumeLevel);
}

extension ToggleGroupCallParticipantIsHandRaisedExtensions
    on ToggleGroupCallParticipantIsHandRaised {
  ToggleGroupCallParticipantIsHandRaised copy(
          {int? groupCallId, MessageSender? participant, bool? isHandRaised}) =>
      ToggleGroupCallParticipantIsHandRaised(
          groupCallId: groupCallId ?? this.groupCallId,
          participant: participant ?? this.participant,
          isHandRaised: isHandRaised ?? this.isHandRaised);
}

extension LoadGroupCallParticipantsExtensions on LoadGroupCallParticipants {
  LoadGroupCallParticipants copy({int? groupCallId, int? limit}) =>
      LoadGroupCallParticipants(
          groupCallId: groupCallId ?? this.groupCallId,
          limit: limit ?? this.limit);
}

extension LeaveGroupCallExtensions on LeaveGroupCall {
  LeaveGroupCall copy({int? groupCallId}) =>
      LeaveGroupCall(groupCallId: groupCallId ?? this.groupCallId);
}

extension DiscardGroupCallExtensions on DiscardGroupCall {
  DiscardGroupCall copy({int? groupCallId}) =>
      DiscardGroupCall(groupCallId: groupCallId ?? this.groupCallId);
}

extension GetGroupCallStreamSegmentExtensions on GetGroupCallStreamSegment {
  GetGroupCallStreamSegment copy(
          {int? groupCallId, int? timeOffset, int? scale}) =>
      GetGroupCallStreamSegment(
          groupCallId: groupCallId ?? this.groupCallId,
          timeOffset: timeOffset ?? this.timeOffset,
          scale: scale ?? this.scale);
}

extension ToggleMessageSenderIsBlockedExtensions
    on ToggleMessageSenderIsBlocked {
  ToggleMessageSenderIsBlocked copy({MessageSender? sender, bool? isBlocked}) =>
      ToggleMessageSenderIsBlocked(
          sender: sender ?? this.sender,
          isBlocked: isBlocked ?? this.isBlocked);
}

extension BlockMessageSenderFromRepliesExtensions
    on BlockMessageSenderFromReplies {
  BlockMessageSenderFromReplies copy(
          {int? messageId,
          bool? deleteMessage,
          bool? deleteAllMessages,
          bool? reportSpam}) =>
      BlockMessageSenderFromReplies(
          messageId: messageId ?? this.messageId,
          deleteMessage: deleteMessage ?? this.deleteMessage,
          deleteAllMessages: deleteAllMessages ?? this.deleteAllMessages,
          reportSpam: reportSpam ?? this.reportSpam);
}

extension GetBlockedMessageSendersExtensions on GetBlockedMessageSenders {
  GetBlockedMessageSenders copy({int? offset, int? limit}) =>
      GetBlockedMessageSenders(
          offset: offset ?? this.offset, limit: limit ?? this.limit);
}

extension AddContactExtensions on AddContact {
  AddContact copy({Contact? contact, bool? sharePhoneNumber}) => AddContact(
      contact: contact ?? this.contact,
      sharePhoneNumber: sharePhoneNumber ?? this.sharePhoneNumber);
}

extension ImportContactsExtensions on ImportContacts {
  ImportContacts copy({List<Contact>? contacts}) =>
      ImportContacts(contacts: contacts ?? this.contacts);
}

extension SearchContactsExtensions on SearchContacts {
  SearchContacts copy({String? query, int? limit}) =>
      SearchContacts(query: query ?? this.query, limit: limit ?? this.limit);
}

extension RemoveContactsExtensions on RemoveContacts {
  RemoveContacts copy({List<int>? userIds}) =>
      RemoveContacts(userIds: userIds ?? this.userIds);
}

extension ChangeImportedContactsExtensions on ChangeImportedContacts {
  ChangeImportedContacts copy({List<Contact>? contacts}) =>
      ChangeImportedContacts(contacts: contacts ?? this.contacts);
}

extension SharePhoneNumberExtensions on SharePhoneNumber {
  SharePhoneNumber copy({int? userId}) =>
      SharePhoneNumber(userId: userId ?? this.userId);
}

extension GetUserProfilePhotosExtensions on GetUserProfilePhotos {
  GetUserProfilePhotos copy({int? userId, int? offset, int? limit}) =>
      GetUserProfilePhotos(
          userId: userId ?? this.userId,
          offset: offset ?? this.offset,
          limit: limit ?? this.limit);
}

extension GetStickersExtensions on GetStickers {
  GetStickers copy({String? emoji, int? limit}) =>
      GetStickers(emoji: emoji ?? this.emoji, limit: limit ?? this.limit);
}

extension SearchStickersExtensions on SearchStickers {
  SearchStickers copy({String? emoji, int? limit}) =>
      SearchStickers(emoji: emoji ?? this.emoji, limit: limit ?? this.limit);
}

extension GetInstalledStickerSetsExtensions on GetInstalledStickerSets {
  GetInstalledStickerSets copy({bool? isMasks}) =>
      GetInstalledStickerSets(isMasks: isMasks ?? this.isMasks);
}

extension GetArchivedStickerSetsExtensions on GetArchivedStickerSets {
  GetArchivedStickerSets copy(
          {bool? isMasks, int? offsetStickerSetId, int? limit}) =>
      GetArchivedStickerSets(
          isMasks: isMasks ?? this.isMasks,
          offsetStickerSetId: offsetStickerSetId ?? this.offsetStickerSetId,
          limit: limit ?? this.limit);
}

extension GetTrendingStickerSetsExtensions on GetTrendingStickerSets {
  GetTrendingStickerSets copy({int? offset, int? limit}) =>
      GetTrendingStickerSets(
          offset: offset ?? this.offset, limit: limit ?? this.limit);
}

extension GetAttachedStickerSetsExtensions on GetAttachedStickerSets {
  GetAttachedStickerSets copy({int? fileId}) =>
      GetAttachedStickerSets(fileId: fileId ?? this.fileId);
}

extension GetStickerSetExtensions on GetStickerSet {
  GetStickerSet copy({int? setId}) => GetStickerSet(setId: setId ?? this.setId);
}

extension SearchStickerSetExtensions on SearchStickerSet {
  SearchStickerSet copy({String? name}) =>
      SearchStickerSet(name: name ?? this.name);
}

extension SearchInstalledStickerSetsExtensions on SearchInstalledStickerSets {
  SearchInstalledStickerSets copy({bool? isMasks, String? query, int? limit}) =>
      SearchInstalledStickerSets(
          isMasks: isMasks ?? this.isMasks,
          query: query ?? this.query,
          limit: limit ?? this.limit);
}

extension SearchStickerSetsExtensions on SearchStickerSets {
  SearchStickerSets copy({String? query}) =>
      SearchStickerSets(query: query ?? this.query);
}

extension ChangeStickerSetExtensions on ChangeStickerSet {
  ChangeStickerSet copy({int? setId, bool? isInstalled, bool? isArchived}) =>
      ChangeStickerSet(
          setId: setId ?? this.setId,
          isInstalled: isInstalled ?? this.isInstalled,
          isArchived: isArchived ?? this.isArchived);
}

extension ViewTrendingStickerSetsExtensions on ViewTrendingStickerSets {
  ViewTrendingStickerSets copy({List<int>? stickerSetIds}) =>
      ViewTrendingStickerSets(
          stickerSetIds: stickerSetIds ?? this.stickerSetIds);
}

extension ReorderInstalledStickerSetsExtensions on ReorderInstalledStickerSets {
  ReorderInstalledStickerSets copy({bool? isMasks, List<int>? stickerSetIds}) =>
      ReorderInstalledStickerSets(
          isMasks: isMasks ?? this.isMasks,
          stickerSetIds: stickerSetIds ?? this.stickerSetIds);
}

extension GetRecentStickersExtensions on GetRecentStickers {
  GetRecentStickers copy({bool? isAttached}) =>
      GetRecentStickers(isAttached: isAttached ?? this.isAttached);
}

extension AddRecentStickerExtensions on AddRecentSticker {
  AddRecentSticker copy({bool? isAttached, InputFile? sticker}) =>
      AddRecentSticker(
          isAttached: isAttached ?? this.isAttached,
          sticker: sticker ?? this.sticker);
}

extension RemoveRecentStickerExtensions on RemoveRecentSticker {
  RemoveRecentSticker copy({bool? isAttached, InputFile? sticker}) =>
      RemoveRecentSticker(
          isAttached: isAttached ?? this.isAttached,
          sticker: sticker ?? this.sticker);
}

extension ClearRecentStickersExtensions on ClearRecentStickers {
  ClearRecentStickers copy({bool? isAttached}) =>
      ClearRecentStickers(isAttached: isAttached ?? this.isAttached);
}

extension AddFavoriteStickerExtensions on AddFavoriteSticker {
  AddFavoriteSticker copy({InputFile? sticker}) =>
      AddFavoriteSticker(sticker: sticker ?? this.sticker);
}

extension RemoveFavoriteStickerExtensions on RemoveFavoriteSticker {
  RemoveFavoriteSticker copy({InputFile? sticker}) =>
      RemoveFavoriteSticker(sticker: sticker ?? this.sticker);
}

extension GetStickerEmojisExtensions on GetStickerEmojis {
  GetStickerEmojis copy({InputFile? sticker}) =>
      GetStickerEmojis(sticker: sticker ?? this.sticker);
}

extension SearchEmojisExtensions on SearchEmojis {
  SearchEmojis copy(
          {String? text, bool? exactMatch, List<String>? inputLanguageCodes}) =>
      SearchEmojis(
          text: text ?? this.text,
          exactMatch: exactMatch ?? this.exactMatch,
          inputLanguageCodes: inputLanguageCodes ?? this.inputLanguageCodes);
}

extension GetEmojiSuggestionsUrlExtensions on GetEmojiSuggestionsUrl {
  GetEmojiSuggestionsUrl copy({String? languageCode}) =>
      GetEmojiSuggestionsUrl(languageCode: languageCode ?? this.languageCode);
}

extension AddSavedAnimationExtensions on AddSavedAnimation {
  AddSavedAnimation copy({InputFile? animation}) =>
      AddSavedAnimation(animation: animation ?? this.animation);
}

extension RemoveSavedAnimationExtensions on RemoveSavedAnimation {
  RemoveSavedAnimation copy({InputFile? animation}) =>
      RemoveSavedAnimation(animation: animation ?? this.animation);
}

extension SearchHashtagsExtensions on SearchHashtags {
  SearchHashtags copy({String? prefix, int? limit}) =>
      SearchHashtags(prefix: prefix ?? this.prefix, limit: limit ?? this.limit);
}

extension RemoveRecentHashtagExtensions on RemoveRecentHashtag {
  RemoveRecentHashtag copy({String? hashtag}) =>
      RemoveRecentHashtag(hashtag: hashtag ?? this.hashtag);
}

extension GetWebPagePreviewExtensions on GetWebPagePreview {
  GetWebPagePreview copy({FormattedText? text}) =>
      GetWebPagePreview(text: text ?? this.text);
}

extension GetWebPageInstantViewExtensions on GetWebPageInstantView {
  GetWebPageInstantView copy({String? url, bool? forceFull}) =>
      GetWebPageInstantView(
          url: url ?? this.url, forceFull: forceFull ?? this.forceFull);
}

extension SetProfilePhotoExtensions on SetProfilePhoto {
  SetProfilePhoto copy({InputChatPhoto? photo}) =>
      SetProfilePhoto(photo: photo ?? this.photo);
}

extension DeleteProfilePhotoExtensions on DeleteProfilePhoto {
  DeleteProfilePhoto copy({int? profilePhotoId}) =>
      DeleteProfilePhoto(profilePhotoId: profilePhotoId ?? this.profilePhotoId);
}

extension SetNameExtensions on SetName {
  SetName copy({String? firstName, String? lastName}) => SetName(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName);
}

extension SetBioExtensions on SetBio {
  SetBio copy({String? bio}) => SetBio(bio: bio ?? this.bio);
}

extension SetUsernameExtensions on SetUsername {
  SetUsername copy({String? username}) =>
      SetUsername(username: username ?? this.username);
}

extension SetLocationExtensions on SetLocation {
  SetLocation copy({Location? location}) =>
      SetLocation(location: location ?? this.location);
}

extension ChangePhoneNumberExtensions on ChangePhoneNumber {
  ChangePhoneNumber copy(
          {String? phoneNumber, PhoneNumberAuthenticationSettings? settings}) =>
      ChangePhoneNumber(
          phoneNumber: phoneNumber ?? this.phoneNumber,
          settings: settings ?? this.settings);
}

extension CheckChangePhoneNumberCodeExtensions on CheckChangePhoneNumberCode {
  CheckChangePhoneNumberCode copy({String? code}) =>
      CheckChangePhoneNumberCode(code: code ?? this.code);
}

extension SetCommandsExtensions on SetCommands {
  SetCommands copy({List<BotCommand>? commands}) =>
      SetCommands(commands: commands ?? this.commands);
}

extension TerminateSessionExtensions on TerminateSession {
  TerminateSession copy({int? sessionId}) =>
      TerminateSession(sessionId: sessionId ?? this.sessionId);
}

extension DisconnectWebsiteExtensions on DisconnectWebsite {
  DisconnectWebsite copy({int? websiteId}) =>
      DisconnectWebsite(websiteId: websiteId ?? this.websiteId);
}

extension SetSupergroupUsernameExtensions on SetSupergroupUsername {
  SetSupergroupUsername copy({int? supergroupId, String? username}) =>
      SetSupergroupUsername(
          supergroupId: supergroupId ?? this.supergroupId,
          username: username ?? this.username);
}

extension SetSupergroupStickerSetExtensions on SetSupergroupStickerSet {
  SetSupergroupStickerSet copy({int? supergroupId, int? stickerSetId}) =>
      SetSupergroupStickerSet(
          supergroupId: supergroupId ?? this.supergroupId,
          stickerSetId: stickerSetId ?? this.stickerSetId);
}

extension ToggleSupergroupSignMessagesExtensions
    on ToggleSupergroupSignMessages {
  ToggleSupergroupSignMessages copy({int? supergroupId, bool? signMessages}) =>
      ToggleSupergroupSignMessages(
          supergroupId: supergroupId ?? this.supergroupId,
          signMessages: signMessages ?? this.signMessages);
}

extension ToggleSupergroupIsAllHistoryAvailableExtensions
    on ToggleSupergroupIsAllHistoryAvailable {
  ToggleSupergroupIsAllHistoryAvailable copy(
          {int? supergroupId, bool? isAllHistoryAvailable}) =>
      ToggleSupergroupIsAllHistoryAvailable(
          supergroupId: supergroupId ?? this.supergroupId,
          isAllHistoryAvailable:
              isAllHistoryAvailable ?? this.isAllHistoryAvailable);
}

extension ToggleSupergroupIsBroadcastGroupExtensions
    on ToggleSupergroupIsBroadcastGroup {
  ToggleSupergroupIsBroadcastGroup copy({int? supergroupId}) =>
      ToggleSupergroupIsBroadcastGroup(
          supergroupId: supergroupId ?? this.supergroupId);
}

extension ReportSupergroupSpamExtensions on ReportSupergroupSpam {
  ReportSupergroupSpam copy(
          {int? supergroupId, int? userId, List<int>? messageIds}) =>
      ReportSupergroupSpam(
          supergroupId: supergroupId ?? this.supergroupId,
          userId: userId ?? this.userId,
          messageIds: messageIds ?? this.messageIds);
}

extension GetSupergroupMembersExtensions on GetSupergroupMembers {
  GetSupergroupMembers copy(
          {int? supergroupId,
          SupergroupMembersFilter? filter,
          int? offset,
          int? limit}) =>
      GetSupergroupMembers(
          supergroupId: supergroupId ?? this.supergroupId,
          filter: filter ?? this.filter,
          offset: offset ?? this.offset,
          limit: limit ?? this.limit);
}

extension CloseSecretChatExtensions on CloseSecretChat {
  CloseSecretChat copy({int? secretChatId}) =>
      CloseSecretChat(secretChatId: secretChatId ?? this.secretChatId);
}

extension GetChatEventLogExtensions on GetChatEventLog {
  GetChatEventLog copy(
          {int? chatId,
          String? query,
          int? fromEventId,
          int? limit,
          ChatEventLogFilters? filters,
          List<int>? userIds}) =>
      GetChatEventLog(
          chatId: chatId ?? this.chatId,
          query: query ?? this.query,
          fromEventId: fromEventId ?? this.fromEventId,
          limit: limit ?? this.limit,
          filters: filters ?? this.filters,
          userIds: userIds ?? this.userIds);
}

extension GetPaymentFormExtensions on GetPaymentForm {
  GetPaymentForm copy({int? chatId, int? messageId}) => GetPaymentForm(
      chatId: chatId ?? this.chatId, messageId: messageId ?? this.messageId);
}

extension ValidateOrderInfoExtensions on ValidateOrderInfo {
  ValidateOrderInfo copy(
          {int? chatId,
          int? messageId,
          OrderInfo? orderInfo,
          bool? allowSave}) =>
      ValidateOrderInfo(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          orderInfo: orderInfo ?? this.orderInfo,
          allowSave: allowSave ?? this.allowSave);
}

extension SendPaymentFormExtensions on SendPaymentForm {
  SendPaymentForm copy(
          {int? chatId,
          int? messageId,
          String? orderInfoId,
          String? shippingOptionId,
          InputCredentials? credentials}) =>
      SendPaymentForm(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          orderInfoId: orderInfoId ?? this.orderInfoId,
          shippingOptionId: shippingOptionId ?? this.shippingOptionId,
          credentials: credentials ?? this.credentials);
}

extension GetPaymentReceiptExtensions on GetPaymentReceipt {
  GetPaymentReceipt copy({int? chatId, int? messageId}) => GetPaymentReceipt(
      chatId: chatId ?? this.chatId, messageId: messageId ?? this.messageId);
}

extension GetBackgroundsExtensions on GetBackgrounds {
  GetBackgrounds copy({bool? forDarkTheme}) =>
      GetBackgrounds(forDarkTheme: forDarkTheme ?? this.forDarkTheme);
}

extension GetBackgroundUrlExtensions on GetBackgroundUrl {
  GetBackgroundUrl copy({String? name, BackgroundType? type}) =>
      GetBackgroundUrl(name: name ?? this.name, type: type ?? this.type);
}

extension SearchBackgroundExtensions on SearchBackground {
  SearchBackground copy({String? name}) =>
      SearchBackground(name: name ?? this.name);
}

extension SetBackgroundExtensions on SetBackground {
  SetBackground copy(
          {InputBackground? background,
          BackgroundType? type,
          bool? forDarkTheme}) =>
      SetBackground(
          background: background ?? this.background,
          type: type ?? this.type,
          forDarkTheme: forDarkTheme ?? this.forDarkTheme);
}

extension RemoveBackgroundExtensions on RemoveBackground {
  RemoveBackground copy({int? backgroundId}) =>
      RemoveBackground(backgroundId: backgroundId ?? this.backgroundId);
}

extension GetLocalizationTargetInfoExtensions on GetLocalizationTargetInfo {
  GetLocalizationTargetInfo copy({bool? onlyLocal}) =>
      GetLocalizationTargetInfo(onlyLocal: onlyLocal ?? this.onlyLocal);
}

extension GetLanguagePackInfoExtensions on GetLanguagePackInfo {
  GetLanguagePackInfo copy({String? languagePackId}) => GetLanguagePackInfo(
      languagePackId: languagePackId ?? this.languagePackId);
}

extension GetLanguagePackStringsExtensions on GetLanguagePackStrings {
  GetLanguagePackStrings copy({String? languagePackId, List<String>? keys}) =>
      GetLanguagePackStrings(
          languagePackId: languagePackId ?? this.languagePackId,
          keys: keys ?? this.keys);
}

extension SynchronizeLanguagePackExtensions on SynchronizeLanguagePack {
  SynchronizeLanguagePack copy({String? languagePackId}) =>
      SynchronizeLanguagePack(
          languagePackId: languagePackId ?? this.languagePackId);
}

extension AddCustomServerLanguagePackExtensions on AddCustomServerLanguagePack {
  AddCustomServerLanguagePack copy({String? languagePackId}) =>
      AddCustomServerLanguagePack(
          languagePackId: languagePackId ?? this.languagePackId);
}

extension SetCustomLanguagePackExtensions on SetCustomLanguagePack {
  SetCustomLanguagePack copy(
          {LanguagePackInfo? info, List<LanguagePackString>? strings}) =>
      SetCustomLanguagePack(
          info: info ?? this.info, strings: strings ?? this.strings);
}

extension EditCustomLanguagePackInfoExtensions on EditCustomLanguagePackInfo {
  EditCustomLanguagePackInfo copy({LanguagePackInfo? info}) =>
      EditCustomLanguagePackInfo(info: info ?? this.info);
}

extension SetCustomLanguagePackStringExtensions on SetCustomLanguagePackString {
  SetCustomLanguagePackString copy(
          {String? languagePackId, LanguagePackString? newString}) =>
      SetCustomLanguagePackString(
          languagePackId: languagePackId ?? this.languagePackId,
          newString: newString ?? this.newString);
}

extension DeleteLanguagePackExtensions on DeleteLanguagePack {
  DeleteLanguagePack copy({String? languagePackId}) =>
      DeleteLanguagePack(languagePackId: languagePackId ?? this.languagePackId);
}

extension RegisterDeviceExtensions on RegisterDevice {
  RegisterDevice copy({DeviceToken? deviceToken, List<int>? otherUserIds}) =>
      RegisterDevice(
          deviceToken: deviceToken ?? this.deviceToken,
          otherUserIds: otherUserIds ?? this.otherUserIds);
}

extension ProcessPushNotificationExtensions on ProcessPushNotification {
  ProcessPushNotification copy({String? payload}) =>
      ProcessPushNotification(payload: payload ?? this.payload);
}

extension GetPushReceiverIdExtensions on GetPushReceiverId {
  GetPushReceiverId copy({String? payload}) =>
      GetPushReceiverId(payload: payload ?? this.payload);
}

extension GetRecentlyVisitedTMeUrlsExtensions on GetRecentlyVisitedTMeUrls {
  GetRecentlyVisitedTMeUrls copy({String? referrer}) =>
      GetRecentlyVisitedTMeUrls(referrer: referrer ?? this.referrer);
}

extension SetUserPrivacySettingRulesExtensions on SetUserPrivacySettingRules {
  SetUserPrivacySettingRules copy(
          {UserPrivacySetting? setting, UserPrivacySettingRules? rules}) =>
      SetUserPrivacySettingRules(
          setting: setting ?? this.setting, rules: rules ?? this.rules);
}

extension GetUserPrivacySettingRulesExtensions on GetUserPrivacySettingRules {
  GetUserPrivacySettingRules copy({UserPrivacySetting? setting}) =>
      GetUserPrivacySettingRules(setting: setting ?? this.setting);
}

extension GetOptionExtensions on GetOption {
  GetOption copy({String? name}) => GetOption(name: name ?? this.name);
}

extension SetOptionExtensions on SetOption {
  SetOption copy({String? name, OptionValue? value}) =>
      SetOption(name: name ?? this.name, value: value ?? this.value);
}

extension SetAccountTtlExtensions on SetAccountTtl {
  SetAccountTtl copy({AccountTtl? ttl}) => SetAccountTtl(ttl: ttl ?? this.ttl);
}

extension DeleteAccountExtensions on DeleteAccount {
  DeleteAccount copy({String? reason}) =>
      DeleteAccount(reason: reason ?? this.reason);
}

extension RemoveChatActionBarExtensions on RemoveChatActionBar {
  RemoveChatActionBar copy({int? chatId}) =>
      RemoveChatActionBar(chatId: chatId ?? this.chatId);
}

extension ReportChatExtensions on ReportChat {
  ReportChat copy(
          {int? chatId,
          List<int>? messageIds,
          ChatReportReason? reason,
          String? text}) =>
      ReportChat(
          chatId: chatId ?? this.chatId,
          messageIds: messageIds ?? this.messageIds,
          reason: reason ?? this.reason,
          text: text ?? this.text);
}

extension ReportChatPhotoExtensions on ReportChatPhoto {
  ReportChatPhoto copy(
          {int? chatId, int? fileId, ChatReportReason? reason, String? text}) =>
      ReportChatPhoto(
          chatId: chatId ?? this.chatId,
          fileId: fileId ?? this.fileId,
          reason: reason ?? this.reason,
          text: text ?? this.text);
}

extension GetChatStatisticsUrlExtensions on GetChatStatisticsUrl {
  GetChatStatisticsUrl copy({int? chatId, String? parameters, bool? isDark}) =>
      GetChatStatisticsUrl(
          chatId: chatId ?? this.chatId,
          parameters: parameters ?? this.parameters,
          isDark: isDark ?? this.isDark);
}

extension GetChatStatisticsExtensions on GetChatStatistics {
  GetChatStatistics copy({int? chatId, bool? isDark}) => GetChatStatistics(
      chatId: chatId ?? this.chatId, isDark: isDark ?? this.isDark);
}

extension GetMessageStatisticsExtensions on GetMessageStatistics {
  GetMessageStatistics copy({int? chatId, int? messageId, bool? isDark}) =>
      GetMessageStatistics(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          isDark: isDark ?? this.isDark);
}

extension GetStatisticalGraphExtensions on GetStatisticalGraph {
  GetStatisticalGraph copy({int? chatId, String? token, int? x}) =>
      GetStatisticalGraph(
          chatId: chatId ?? this.chatId,
          token: token ?? this.token,
          x: x ?? this.x);
}

extension GetStorageStatisticsExtensions on GetStorageStatistics {
  GetStorageStatistics copy({int? chatLimit}) =>
      GetStorageStatistics(chatLimit: chatLimit ?? this.chatLimit);
}

extension OptimizeStorageExtensions on OptimizeStorage {
  OptimizeStorage copy(
          {int? size,
          int? ttl,
          int? count,
          int? immunityDelay,
          List<FileType>? fileTypes,
          List<int>? chatIds,
          List<int>? excludeChatIds,
          bool? returnDeletedFileStatistics,
          int? chatLimit}) =>
      OptimizeStorage(
          size: size ?? this.size,
          ttl: ttl ?? this.ttl,
          count: count ?? this.count,
          immunityDelay: immunityDelay ?? this.immunityDelay,
          fileTypes: fileTypes ?? this.fileTypes,
          chatIds: chatIds ?? this.chatIds,
          excludeChatIds: excludeChatIds ?? this.excludeChatIds,
          returnDeletedFileStatistics:
              returnDeletedFileStatistics ?? this.returnDeletedFileStatistics,
          chatLimit: chatLimit ?? this.chatLimit);
}

extension SetNetworkTypeExtensions on SetNetworkType {
  SetNetworkType copy({NetworkType? type}) =>
      SetNetworkType(type: type ?? this.type);
}

extension GetNetworkStatisticsExtensions on GetNetworkStatistics {
  GetNetworkStatistics copy({bool? onlyCurrent}) =>
      GetNetworkStatistics(onlyCurrent: onlyCurrent ?? this.onlyCurrent);
}

extension AddNetworkStatisticsExtensions on AddNetworkStatistics {
  AddNetworkStatistics copy({NetworkStatisticsEntry? entry}) =>
      AddNetworkStatistics(entry: entry ?? this.entry);
}

extension SetAutoDownloadSettingsExtensions on SetAutoDownloadSettings {
  SetAutoDownloadSettings copy(
          {AutoDownloadSettings? settings, NetworkType? type}) =>
      SetAutoDownloadSettings(
          settings: settings ?? this.settings, type: type ?? this.type);
}

extension GetBankCardInfoExtensions on GetBankCardInfo {
  GetBankCardInfo copy({String? bankCardNumber}) =>
      GetBankCardInfo(bankCardNumber: bankCardNumber ?? this.bankCardNumber);
}

extension GetPassportElementExtensions on GetPassportElement {
  GetPassportElement copy({PassportElementType? type, String? password}) =>
      GetPassportElement(
          type: type ?? this.type, password: password ?? this.password);
}

extension GetAllPassportElementsExtensions on GetAllPassportElements {
  GetAllPassportElements copy({String? password}) =>
      GetAllPassportElements(password: password ?? this.password);
}

extension SetPassportElementExtensions on SetPassportElement {
  SetPassportElement copy({InputPassportElement? element, String? password}) =>
      SetPassportElement(
          element: element ?? this.element,
          password: password ?? this.password);
}

extension DeletePassportElementExtensions on DeletePassportElement {
  DeletePassportElement copy({PassportElementType? type}) =>
      DeletePassportElement(type: type ?? this.type);
}

extension SetPassportElementErrorsExtensions on SetPassportElementErrors {
  SetPassportElementErrors copy(
          {int? userId, List<InputPassportElementError>? errors}) =>
      SetPassportElementErrors(
          userId: userId ?? this.userId, errors: errors ?? this.errors);
}

extension GetPreferredCountryLanguageExtensions on GetPreferredCountryLanguage {
  GetPreferredCountryLanguage copy({String? countryCode}) =>
      GetPreferredCountryLanguage(countryCode: countryCode ?? this.countryCode);
}

extension SendPhoneNumberVerificationCodeExtensions
    on SendPhoneNumberVerificationCode {
  SendPhoneNumberVerificationCode copy(
          {String? phoneNumber, PhoneNumberAuthenticationSettings? settings}) =>
      SendPhoneNumberVerificationCode(
          phoneNumber: phoneNumber ?? this.phoneNumber,
          settings: settings ?? this.settings);
}

extension CheckPhoneNumberVerificationCodeExtensions
    on CheckPhoneNumberVerificationCode {
  CheckPhoneNumberVerificationCode copy({String? code}) =>
      CheckPhoneNumberVerificationCode(code: code ?? this.code);
}

extension SendEmailAddressVerificationCodeExtensions
    on SendEmailAddressVerificationCode {
  SendEmailAddressVerificationCode copy({String? emailAddress}) =>
      SendEmailAddressVerificationCode(
          emailAddress: emailAddress ?? this.emailAddress);
}

extension CheckEmailAddressVerificationCodeExtensions
    on CheckEmailAddressVerificationCode {
  CheckEmailAddressVerificationCode copy({String? code}) =>
      CheckEmailAddressVerificationCode(code: code ?? this.code);
}

extension GetPassportAuthorizationFormExtensions
    on GetPassportAuthorizationForm {
  GetPassportAuthorizationForm copy(
          {int? botUserId, String? scope, String? publicKey, String? nonce}) =>
      GetPassportAuthorizationForm(
          botUserId: botUserId ?? this.botUserId,
          scope: scope ?? this.scope,
          publicKey: publicKey ?? this.publicKey,
          nonce: nonce ?? this.nonce);
}

extension GetPassportAuthorizationFormAvailableElementsExtensions
    on GetPassportAuthorizationFormAvailableElements {
  GetPassportAuthorizationFormAvailableElements copy(
          {int? autorizationFormId, String? password}) =>
      GetPassportAuthorizationFormAvailableElements(
          autorizationFormId: autorizationFormId ?? this.autorizationFormId,
          password: password ?? this.password);
}

extension SendPassportAuthorizationFormExtensions
    on SendPassportAuthorizationForm {
  SendPassportAuthorizationForm copy(
          {int? autorizationFormId, List<PassportElementType>? types}) =>
      SendPassportAuthorizationForm(
          autorizationFormId: autorizationFormId ?? this.autorizationFormId,
          types: types ?? this.types);
}

extension SendPhoneNumberConfirmationCodeExtensions
    on SendPhoneNumberConfirmationCode {
  SendPhoneNumberConfirmationCode copy(
          {String? hash,
          String? phoneNumber,
          PhoneNumberAuthenticationSettings? settings}) =>
      SendPhoneNumberConfirmationCode(
          hash: hash ?? this.hash,
          phoneNumber: phoneNumber ?? this.phoneNumber,
          settings: settings ?? this.settings);
}

extension CheckPhoneNumberConfirmationCodeExtensions
    on CheckPhoneNumberConfirmationCode {
  CheckPhoneNumberConfirmationCode copy({String? code}) =>
      CheckPhoneNumberConfirmationCode(code: code ?? this.code);
}

extension SetBotUpdatesStatusExtensions on SetBotUpdatesStatus {
  SetBotUpdatesStatus copy({int? pendingUpdateCount, String? errorMessage}) =>
      SetBotUpdatesStatus(
          pendingUpdateCount: pendingUpdateCount ?? this.pendingUpdateCount,
          errorMessage: errorMessage ?? this.errorMessage);
}

extension UploadStickerFileExtensions on UploadStickerFile {
  UploadStickerFile copy({int? userId, InputFile? pngSticker}) =>
      UploadStickerFile(
          userId: userId ?? this.userId,
          pngSticker: pngSticker ?? this.pngSticker);
}

extension CreateNewStickerSetExtensions on CreateNewStickerSet {
  CreateNewStickerSet copy(
          {int? userId,
          String? title,
          String? name,
          bool? isMasks,
          List<InputSticker>? stickers}) =>
      CreateNewStickerSet(
          userId: userId ?? this.userId,
          title: title ?? this.title,
          name: name ?? this.name,
          isMasks: isMasks ?? this.isMasks,
          stickers: stickers ?? this.stickers);
}

extension AddStickerToSetExtensions on AddStickerToSet {
  AddStickerToSet copy({int? userId, String? name, InputSticker? sticker}) =>
      AddStickerToSet(
          userId: userId ?? this.userId,
          name: name ?? this.name,
          sticker: sticker ?? this.sticker);
}

extension SetStickerSetThumbnailExtensions on SetStickerSetThumbnail {
  SetStickerSetThumbnail copy(
          {int? userId, String? name, InputFile? thumbnail}) =>
      SetStickerSetThumbnail(
          userId: userId ?? this.userId,
          name: name ?? this.name,
          thumbnail: thumbnail ?? this.thumbnail);
}

extension SetStickerPositionInSetExtensions on SetStickerPositionInSet {
  SetStickerPositionInSet copy({InputFile? sticker, int? position}) =>
      SetStickerPositionInSet(
          sticker: sticker ?? this.sticker,
          position: position ?? this.position);
}

extension RemoveStickerFromSetExtensions on RemoveStickerFromSet {
  RemoveStickerFromSet copy({InputFile? sticker}) =>
      RemoveStickerFromSet(sticker: sticker ?? this.sticker);
}

extension GetMapThumbnailFileExtensions on GetMapThumbnailFile {
  GetMapThumbnailFile copy(
          {Location? location,
          int? zoom,
          int? width,
          int? height,
          int? scale,
          int? chatId}) =>
      GetMapThumbnailFile(
          location: location ?? this.location,
          zoom: zoom ?? this.zoom,
          width: width ?? this.width,
          height: height ?? this.height,
          scale: scale ?? this.scale,
          chatId: chatId ?? this.chatId);
}

extension AcceptTermsOfServiceExtensions on AcceptTermsOfService {
  AcceptTermsOfService copy({String? termsOfServiceId}) => AcceptTermsOfService(
      termsOfServiceId: termsOfServiceId ?? this.termsOfServiceId);
}

extension SendCustomRequestExtensions on SendCustomRequest {
  SendCustomRequest copy({String? method, String? parameters}) =>
      SendCustomRequest(
          method: method ?? this.method,
          parameters: parameters ?? this.parameters);
}

extension AnswerCustomQueryExtensions on AnswerCustomQuery {
  AnswerCustomQuery copy({int? customQueryId, String? data}) =>
      AnswerCustomQuery(
          customQueryId: customQueryId ?? this.customQueryId,
          data: data ?? this.data);
}

extension SetAlarmExtensions on SetAlarm {
  SetAlarm copy({double? seconds}) =>
      SetAlarm(seconds: seconds ?? this.seconds);
}

extension GetPhoneNumberInfoExtensions on GetPhoneNumberInfo {
  GetPhoneNumberInfo copy({String? phoneNumberPrefix}) => GetPhoneNumberInfo(
      phoneNumberPrefix: phoneNumberPrefix ?? this.phoneNumberPrefix);
}

extension GetDeepLinkInfoExtensions on GetDeepLinkInfo {
  GetDeepLinkInfo copy({String? link}) =>
      GetDeepLinkInfo(link: link ?? this.link);
}

extension SaveApplicationLogEventExtensions on SaveApplicationLogEvent {
  SaveApplicationLogEvent copy({String? type, int? chatId, JsonValue? data}) =>
      SaveApplicationLogEvent(
          type: type ?? this.type,
          chatId: chatId ?? this.chatId,
          data: data ?? this.data);
}

extension AddProxyExtensions on AddProxy {
  AddProxy copy({String? server, int? port, bool? enable, ProxyType? type}) =>
      AddProxy(
          server: server ?? this.server,
          port: port ?? this.port,
          enable: enable ?? this.enable,
          type: type ?? this.type);
}

extension EditProxyExtensions on EditProxy {
  EditProxy copy(
          {int? proxyId,
          String? server,
          int? port,
          bool? enable,
          ProxyType? type}) =>
      EditProxy(
          proxyId: proxyId ?? this.proxyId,
          server: server ?? this.server,
          port: port ?? this.port,
          enable: enable ?? this.enable,
          type: type ?? this.type);
}

extension EnableProxyExtensions on EnableProxy {
  EnableProxy copy({int? proxyId}) =>
      EnableProxy(proxyId: proxyId ?? this.proxyId);
}

extension RemoveProxyExtensions on RemoveProxy {
  RemoveProxy copy({int? proxyId}) =>
      RemoveProxy(proxyId: proxyId ?? this.proxyId);
}

extension GetProxyLinkExtensions on GetProxyLink {
  GetProxyLink copy({int? proxyId}) =>
      GetProxyLink(proxyId: proxyId ?? this.proxyId);
}

extension PingProxyExtensions on PingProxy {
  PingProxy copy({int? proxyId}) => PingProxy(proxyId: proxyId ?? this.proxyId);
}

extension SetLogStreamExtensions on SetLogStream {
  SetLogStream copy({LogStream? logStream}) =>
      SetLogStream(logStream: logStream ?? this.logStream);
}

extension SetLogVerbosityLevelExtensions on SetLogVerbosityLevel {
  SetLogVerbosityLevel copy({int? newVerbosityLevel}) => SetLogVerbosityLevel(
      newVerbosityLevel: newVerbosityLevel ?? this.newVerbosityLevel);
}

extension SetLogTagVerbosityLevelExtensions on SetLogTagVerbosityLevel {
  SetLogTagVerbosityLevel copy({String? tag, int? newVerbosityLevel}) =>
      SetLogTagVerbosityLevel(
          tag: tag ?? this.tag,
          newVerbosityLevel: newVerbosityLevel ?? this.newVerbosityLevel);
}

extension GetLogTagVerbosityLevelExtensions on GetLogTagVerbosityLevel {
  GetLogTagVerbosityLevel copy({String? tag}) =>
      GetLogTagVerbosityLevel(tag: tag ?? this.tag);
}

extension AddLogMessageExtensions on AddLogMessage {
  AddLogMessage copy({int? verbosityLevel, String? text}) => AddLogMessage(
      verbosityLevel: verbosityLevel ?? this.verbosityLevel,
      text: text ?? this.text);
}

extension TestCallStringExtensions on TestCallString {
  TestCallString copy({String? x}) => TestCallString(x: x ?? this.x);
}

extension TestCallBytesExtensions on TestCallBytes {
  TestCallBytes copy({String? x}) => TestCallBytes(x: x ?? this.x);
}

extension TestCallVectorIntExtensions on TestCallVectorInt {
  TestCallVectorInt copy({List<int>? x}) => TestCallVectorInt(x: x ?? this.x);
}

extension TestCallVectorIntObjectExtensions on TestCallVectorIntObject {
  TestCallVectorIntObject copy({List<TestInt>? x}) =>
      TestCallVectorIntObject(x: x ?? this.x);
}

extension TestCallVectorStringExtensions on TestCallVectorString {
  TestCallVectorString copy({List<String>? x}) =>
      TestCallVectorString(x: x ?? this.x);
}

extension TestCallVectorStringObjectExtensions on TestCallVectorStringObject {
  TestCallVectorStringObject copy({List<TestString>? x}) =>
      TestCallVectorStringObject(x: x ?? this.x);
}

extension TestSquareIntExtensions on TestSquareInt {
  TestSquareInt copy({int? x}) => TestSquareInt(x: x ?? this.x);
}

extension TestProxyExtensions on TestProxy {
  TestProxy copy(
          {String? server,
          int? port,
          ProxyType? type,
          int? dcId,
          double? timeout}) =>
      TestProxy(
          server: server ?? this.server,
          port: port ?? this.port,
          type: type ?? this.type,
          dcId: dcId ?? this.dcId,
          timeout: timeout ?? this.timeout);
}

extension TestReturnErrorExtensions on TestReturnError {
  TestReturnError copy({TdError? error}) =>
      TestReturnError(error: error ?? this.error);
}
