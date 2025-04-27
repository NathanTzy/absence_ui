/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:lottie/lottie.dart' as _lottie;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/attendance.svg
  SvgGenImage get attendance =>
      const SvgGenImage('assets/icons/attendance.svg');

  /// File path: assets/icons/calender.svg
  SvgGenImage get calender => const SvgGenImage('assets/icons/calender.svg');

  /// File path: assets/icons/email.svg
  SvgGenImage get email => const SvgGenImage('assets/icons/email.svg');

  /// File path: assets/icons/empty_image.svg
  SvgGenImage get emptyImage =>
      const SvgGenImage('assets/icons/empty_image.svg');

  /// File path: assets/icons/empty_state.svg
  SvgGenImage get emptyState =>
      const SvgGenImage('assets/icons/empty_state.svg');

  /// File path: assets/icons/hide.svg
  SvgGenImage get hide => const SvgGenImage('assets/icons/hide.svg');

  /// Directory path: assets/icons/menu
  $AssetsIconsMenuGen get menu => const $AssetsIconsMenuGen();

  /// Directory path: assets/icons/nav
  $AssetsIconsNavGen get nav => const $AssetsIconsNavGen();

  /// File path: assets/icons/notification_rounded.svg
  SvgGenImage get notificationRounded =>
      const SvgGenImage('assets/icons/notification_rounded.svg');

  /// File path: assets/icons/password.svg
  SvgGenImage get password => const SvgGenImage('assets/icons/password.svg');

  /// File path: assets/icons/reverse.svg
  SvgGenImage get reverse => const SvgGenImage('assets/icons/reverse.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        attendance,
        calender,
        email,
        emptyImage,
        emptyState,
        hide,
        notificationRounded,
        password,
        reverse
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bg_home.png
  AssetGenImage get bgHome => const AssetGenImage('assets/images/bg_home.png');

  /// File path: assets/images/failed.png
  AssetGenImage get failed => const AssetGenImage('assets/images/failed.png');

  /// File path: assets/images/lihat_lokasi.png
  AssetGenImage get lihatLokasi =>
      const AssetGenImage('assets/images/lihat_lokasi.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/map.png
  AssetGenImage get map => const AssetGenImage('assets/images/map.png');

  /// File path: assets/images/success.png
  AssetGenImage get success => const AssetGenImage('assets/images/success.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [bgHome, failed, lihatLokasi, logo, map, success];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/loading.json
  LottieGenImage get loading =>
      const LottieGenImage('assets/lottie/loading.json');

  /// File path: assets/lottie/splash.json
  LottieGenImage get splash =>
      const LottieGenImage('assets/lottie/splash.json');

  /// List of all assets
  List<LottieGenImage> get values => [loading, splash];
}

class $AssetsIconsMenuGen {
  const $AssetsIconsMenuGen();

  /// File path: assets/icons/menu/catatan.svg
  SvgGenImage get catatan => const SvgGenImage('assets/icons/menu/catatan.svg');

  /// File path: assets/icons/menu/datang.svg
  SvgGenImage get datang => const SvgGenImage('assets/icons/menu/datang.svg');

  /// File path: assets/icons/menu/izin.svg
  SvgGenImage get izin => const SvgGenImage('assets/icons/menu/izin.svg');

  /// File path: assets/icons/menu/jadwal.svg
  SvgGenImage get jadwal => const SvgGenImage('assets/icons/menu/jadwal.svg');

  /// File path: assets/icons/menu/lembur.svg
  SvgGenImage get lembur => const SvgGenImage('assets/icons/menu/lembur.svg');

  /// File path: assets/icons/menu/pulang.svg
  SvgGenImage get pulang => const SvgGenImage('assets/icons/menu/pulang.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [catatan, datang, izin, jadwal, lembur, pulang];
}

class $AssetsIconsNavGen {
  const $AssetsIconsNavGen();

  /// File path: assets/icons/nav/account.svg
  SvgGenImage get account => const SvgGenImage('assets/icons/nav/account.svg');

  /// File path: assets/icons/nav/history.svg
  SvgGenImage get history => const SvgGenImage('assets/icons/nav/history.svg');

  /// File path: assets/icons/nav/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/nav/home.svg');

  /// File path: assets/icons/nav/settings.svg
  SvgGenImage get settings =>
      const SvgGenImage('assets/icons/nav/settings.svg');

  /// List of all assets
  List<SvgGenImage> get values => [account, history, home, settings];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

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
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class LottieGenImage {
  const LottieGenImage(
    this._assetName, {
    this.flavors = const {},
  });

  final String _assetName;
  final Set<String> flavors;

  _lottie.LottieBuilder lottie({
    Animation<double>? controller,
    bool? animate,
    _lottie.FrameRate? frameRate,
    bool? repeat,
    bool? reverse,
    _lottie.LottieDelegates? delegates,
    _lottie.LottieOptions? options,
    void Function(_lottie.LottieComposition)? onLoaded,
    _lottie.LottieImageProviderFactory? imageProviderFactory,
    Key? key,
    AssetBundle? bundle,
    Widget Function(
      BuildContext,
      Widget,
      _lottie.LottieComposition?,
    )? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    String? package,
    bool? addRepaintBoundary,
    FilterQuality? filterQuality,
    void Function(String)? onWarning,
  }) {
    return _lottie.Lottie.asset(
      _assetName,
      controller: controller,
      animate: animate,
      frameRate: frameRate,
      repeat: repeat,
      reverse: reverse,
      delegates: delegates,
      options: options,
      onLoaded: onLoaded,
      imageProviderFactory: imageProviderFactory,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      package: package,
      addRepaintBoundary: addRepaintBoundary,
      filterQuality: filterQuality,
      onWarning: onWarning,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
