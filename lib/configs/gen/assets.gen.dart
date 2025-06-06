/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontGen {
  const $AssetsFontGen();

  /// File path: assets/font/estedad.ttf
  String get estedad => 'assets/font/estedad.ttf';

  /// File path: assets/font/kalameh.ttf
  String get kalameh => 'assets/font/kalameh.ttf';

  /// List of all assets
  List<String> get values => [estedad, kalameh];
}

class $AssetsResourceGen {
  const $AssetsResourceGen();

  /// File path: assets/resource/bottom_image_login.png
  AssetGenImage get bottomImageLogin =>
      const AssetGenImage('assets/resource/bottom_image_login.png');

  /// File path: assets/resource/login.png
  AssetGenImage get login => const AssetGenImage('assets/resource/login.png');

  /// File path: assets/resource/splash_icon.png
  AssetGenImage get splashIcon =>
      const AssetGenImage('assets/resource/splash_icon.png');

  /// File path: assets/resource/splash_new.png
  AssetGenImage get splashNew =>
      const AssetGenImage('assets/resource/splash_new.png');

  /// File path: assets/resource/splash_title.png
  AssetGenImage get splashTitle =>
      const AssetGenImage('assets/resource/splash_title.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    bottomImageLogin,
    login,
    splashIcon,
    splashNew,
    splashTitle,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsFontGen font = $AssetsFontGen();
  static const $AssetsResourceGen resource = $AssetsResourceGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
