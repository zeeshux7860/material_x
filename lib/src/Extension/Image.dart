import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_x/material_x.dart';

extension imageString on String {
  Widget xImageAsset({
    Map<String, String> headers,

    /// A builder function responsible for creating the widget that represents
    /// this image.
    ///
    /// If this is null, this widget will display an image that is painted as
    /// soon as the first image frame is available (and will appear to "pop" in
    /// if it becomes available asynchronously). Callers might use this builder to
    /// add effects to the image (such as fading the image in when it becomes
    /// available) or to display a placeholder widget while the image is loading.
    ///
    /// To have finer-grained control over the way that an image's loading
    /// progress is communicated to the user, see [loadingBuilder].
    ///
    /// ## Chaining with [loadingBuilder]
    ///
    /// If a [loadingBuilder] has _also_ been specified for an image, the two
    /// builders will be chained together: the _result_ of this builder will
    /// be passed as the `child` argument to the [loadingBuilder]. For example,
    /// consider the following builders used in conjunction:
    ///
    /// {@template flutter.widgets.image.chainedBuildersExample}
    /// ```dart
    /// Image(
    ///   ...
    ///   frameBuilder: (BuildContext context, Widget child, int frame, bool wasSynchronouslyLoaded) {
    ///     return Padding(
    ///       padding: EdgeInsets.all(8.0),
    ///       child: child,
    ///     );
    ///   },
    ///   loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
    ///     return Center(child: child);
    ///   },
    /// )
    /// ```
    ///
    /// In this example, the widget hierarchy will contain the following:
    ///
    /// ```dart
    /// Center(
    ///   Padding(
    ///     padding: EdgeInsets.all(8.0),
    ///     child: <image>,
    ///   ),
    /// )
    /// ```
    /// {@endtemplate}
    ///
    /// {@tool snippet --template=stateless_widget_material}
    ///
    /// The following sample demonstrates how to use this builder to implement an
    /// image that fades in once it's been loaded.
    ///
    /// This sample contains a limited subset of the functionality that the
    /// [FadeInImage] widget provides out of the box.
    ///
    /// ```dart
    /// @override
    /// Widget build(BuildContext context) {
    ///   return DecoratedBox(
    ///     decoration: BoxDecoration(
    ///       color: Colors.white,
    ///       border: Border.all(),
    ///       borderRadius: BorderRadius.circular(20),
    ///     ),
    ///     child: Image.network(
    ///       'https://example.com/image.jpg',
    ///       frameBuilder: (BuildContext context, Widget child, int frame, bool wasSynchronouslyLoaded) {
    ///         if (wasSynchronouslyLoaded) {
    ///           return child;
    ///         }
    ///         return AnimatedOpacity(
    ///           child: child,
    ///           opacity: frame == null ? 0 : 1,
    ///           duration: const Duration(seconds: 1),
    ///           curve: Curves.easeOut,
    ///         );
    ///       },
    ///     ),
    ///   );
    /// }
    /// ```
    /// {@end-tool}
    ///
    /// Run against a real-world image, the previous example renders the following
    /// image.
    ///
    /// {@animation 400 400 https://flutter.github.io/assets-for-api-docs/assets/widgets/frame_builder_image.mp4}
    final ImageFrameBuilder frameBuilder,

    /// A builder that specifies the widget to display to the user while an image
    /// is still loading.
    ///
    /// If this is null, and the image is loaded incrementally (e.g. over a
    /// network), the user will receive no indication of the progress as the
    /// bytes of the image are loaded.
    ///
    /// For more information on how to interpret the arguments that are passed to
    /// this builder, see the documentation on [ImageLoadingBuilder].
    ///
    /// ## Performance implications
    ///
    /// If a [loadingBuilder] is specified for an image, the [Image] widget is
    /// likely to be rebuilt on every
    /// [rendering pipeline frame](rendering/RendererBinding/drawFrame.html) until
    /// the image has loaded. This is useful for cases such as displaying a loading
    /// progress indicator, but for simpler cases such as displaying a placeholder
    /// widget that doesn't depend on the loading progress (e.g. static "loading"
    /// text), [frameBuilder] will likely work and not incur as much cost.
    ///
    /// ## Chaining with [frameBuilder]
    ///
    /// If a [frameBuilder] has _also_ been specified for an image, the two
    /// builders will be chained together: the `child` argument to this
    /// builder will contain the _result_ of the [frameBuilder]. For example,
    /// consider the following builders used in conjunction:
    ///
    /// {@macro flutter.widgets.image.chainedBuildersExample}
    ///
    /// {@tool snippet --template=stateless_widget_material}
    ///
    /// The following sample uses [loadingBuilder] to show a
    /// [CircularProgressIndicator] while an image loads over the network.
    ///
    /// ```dart
    /// Widget build(BuildContext context) {
    ///   return DecoratedBox(
    ///     decoration: BoxDecoration(
    ///       color: Colors.white,
    ///       border: Border.all(),
    ///       borderRadius: BorderRadius.circular(20),
    ///     ),
    ///     child: Image.network(
    ///       'https://example.com/image.jpg',
    ///       loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
    ///         if (loadingProgress == null)
    ///           return child;
    ///         return Center(
    ///           child: CircularProgressIndicator(
    ///             value: loadingProgress.expectedTotalBytes != null
    ///                 ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
    ///                 : null,
    ///           ),
    ///         );
    ///       },
    ///     ),
    ///   );
    /// }
    /// ```
    /// {@end-tool}
    ///
    /// Run against a real-world image, the previous example renders the following
    /// loading progress indicator while the image loads before rendering the
    /// completed image.
    ///
    /// {@animation 400 400 https://flutter.github.io/assets-for-api-docs/assets/widgets/loading_progress_image.mp4}
    final ImageLoadingBuilder loadingBuilder,

    /// If non-null, require the image to have this width.
    ///
    /// If null, the image will pick a size that best preserves its intrinsic
    /// aspect ratio.
    ///
    /// It is strongly recommended that either both the [width] and the [height]
    /// be specified, or that the widget be placed in a context that sets tight
    /// layout constraints, so that the image does not change size as it loads.
    /// Consider using [fit] to adapt the image's rendering to fit the given width
    /// and height if the exact image dimensions are not known in advance.
    final double width,

    /// If non-null, require the image to have this height.
    ///
    /// If null, the image will pick a size that best preserves its intrinsic
    /// aspect ratio.
    ///
    /// It is strongly recommended that either both the [width] and the [height]
    /// be specified, or that the widget be placed in a context that sets tight
    /// layout constraints, so that the image does not change size as it loads.
    /// Consider using [fit] to adapt the image's rendering to fit the given width
    /// and height if the exact image dimensions are not known in advance.
    final double height,

    /// If non-null, this color is blended with each image pixel using [colorBlendMode].
    final Color color,

    /// Used to set the [FilterQuality] of the image.
    ///
    /// Use the [FilterQuality.low] quality setting to scale the image with
    /// bilinear interpolation, or the [FilterQuality.none] which corresponds
    /// to nearest-neighbor.
    final FilterQuality filterQuality = FilterQuality.low,

    /// Used to combine [color] with this image.
    ///
    /// The default is [BlendMode.srcIn]. In terms of the blend mode, [color] is
    /// the source and this image is the destination.
    ///
    /// See also:
    ///
    ///  * [BlendMode], which includes an illustration of the effect of each blend mode.
    final BlendMode colorBlendMode,

    /// How to inscribe the image into the space allocated during layout.
    ///
    /// The default varies based on the other fields. See the discussion at
    /// [paintImage].
    final BoxFit fit,

    /// How to align the image within its bounds.
    ///
    /// The alignment aligns the given position in the image to the given position
    /// in the layout bounds. For example, an [Alignment] alignment of (-1.0,
    /// -1.0) aligns the image to the top-left corner of its layout bounds, while an
    /// [Alignment] alignment of (1.0, 1.0) aligns the bottom right of the
    /// image with the bottom right corner of its layout bounds. Similarly, an
    /// alignment of (0.0, 1.0) aligns the bottom middle of the image with the
    /// middle of the bottom edge of its layout bounds.
    ///
    /// To display a subpart of an image, consider using a [CustomPainter] and
    /// [Canvas.drawImageRect].
    ///
    /// If the [alignment] is [TextDirection]-dependent (i.e. if it is a
    /// [AlignmentDirectional]), then an ambient [Directionality] widget
    /// must be in scope.
    ///
    /// Defaults to [Alignment.center].
    ///
    /// See also:
    ///
    ///  * [Alignment], a class with convenient constants typically used to
    ///    specify an [AlignmentGeometry].
    ///  * [AlignmentDirectional], like [Alignment] for specifying alignments
    ///    relative to text direction.
    final AlignmentGeometry alignment = Alignment.center,

    /// How to paint any portions of the layout bounds not covered by the image.
    final ImageRepeat repeat,

    /// The center slice for a nine-patch image.
    ///
    /// The region of the image inside the center slice will be stretched both
    /// horizontally and vertically to fit the image into its destination. The
    /// region of the image above and below the center slice will be stretched
    /// only horizontally and the region of the image to the left and right of
    /// the center slice will be stretched only vertically.
    final Rect centerSlice,

    /// Whether to paint the image in the direction of the [TextDirection].
    ///
    /// If this is true, then in [TextDirection.ltr] contexts, the image will be
    /// drawn with its origin in the top left (the "normal" painting direction for
    /// images); and in [TextDirection.rtl] contexts, the image will be drawn with
    /// a scaling factor of -1 in the horizontal direction so that the origin is
    /// in the top right.
    ///
    /// This is occasionally used with images in right-to-left environments, for
    /// images that were designed for left-to-right locales. Be careful, when
    /// using this, to not flip images with integral shadows, text, or other
    /// effects that will look incorrect when flipped.
    ///
    /// If this is true, there must be an ambient [Directionality] widget in
    /// scope.
    final bool matchTextDirection = false,

    /// Whether to continue showing the old image (true), or briefly show nothing
    /// (false), when the image provider changes.
    final bool gaplessPlayback = false,

    /// A Semantic description of the image.
    ///
    /// Used to provide a description of the image to TalkBack on Android, and
    /// VoiceOver on iOS.
    final String semanticLabel,

    /// Whether to exclude this image from semantics.
    ///
    /// Useful for images which do not contribute meaningful information to an
    /// application.
    final bool excludeFromSemantics = false,
    String package,
    double scale = 1.0,
    int cacheWidth,
    int cacheHeight,
    Key key,
    AssetBundle bundle,
  }) {
    return Image.asset(
      this,
      alignment: alignment,
      bundle: bundle,
      cacheHeight: cacheHeight,
      cacheWidth: cacheWidth,
      centerSlice: centerSlice,
      color: color,
      colorBlendMode: colorBlendMode,
      excludeFromSemantics: excludeFromSemantics,
      filterQuality: filterQuality,
      fit: fit,
      frameBuilder: frameBuilder,
      gaplessPlayback: gaplessPlayback,
      height: height,
      key: key,
      matchTextDirection: matchTextDirection,
      package: package,
      repeat: repeat,
      scale: scale,
      semanticLabel: semanticLabel,
      width: width,
    );
  }

  Widget xImageNetwork({
    Map<String, String> headers,

    /// A builder function responsible for creating the widget that represents
    /// this image.
    ///
    /// If this is null, this widget will display an image that is painted as
    /// soon as the first image frame is available (and will appear to "pop" in
    /// if it becomes available asynchronously). Callers might use this builder to
    /// add effects to the image (such as fading the image in when it becomes
    /// available) or to display a placeholder widget while the image is loading.
    ///
    /// To have finer-grained control over the way that an image's loading
    /// progress is communicated to the user, see [loadingBuilder].
    ///
    /// ## Chaining with [loadingBuilder]
    ///
    /// If a [loadingBuilder] has _also_ been specified for an image, the two
    /// builders will be chained together: the _result_ of this builder will
    /// be passed as the `child` argument to the [loadingBuilder]. For example,
    /// consider the following builders used in conjunction:
    ///
    /// {@template flutter.widgets.image.chainedBuildersExample}
    /// ```dart
    /// Image(
    ///   ...
    ///   frameBuilder: (BuildContext context, Widget child, int frame, bool wasSynchronouslyLoaded) {
    ///     return Padding(
    ///       padding: EdgeInsets.all(8.0),
    ///       child: child,
    ///     );
    ///   },
    ///   loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
    ///     return Center(child: child);
    ///   },
    /// )
    /// ```
    ///
    /// In this example, the widget hierarchy will contain the following:
    ///
    /// ```dart
    /// Center(
    ///   Padding(
    ///     padding: EdgeInsets.all(8.0),
    ///     child: <image>,
    ///   ),
    /// )
    /// ```
    /// {@endtemplate}
    ///
    /// {@tool snippet --template=stateless_widget_material}
    ///
    /// The following sample demonstrates how to use this builder to implement an
    /// image that fades in once it's been loaded.
    ///
    /// This sample contains a limited subset of the functionality that the
    /// [FadeInImage] widget provides out of the box.
    ///
    /// ```dart
    /// @override
    /// Widget build(BuildContext context) {
    ///   return DecoratedBox(
    ///     decoration: BoxDecoration(
    ///       color: Colors.white,
    ///       border: Border.all(),
    ///       borderRadius: BorderRadius.circular(20),
    ///     ),
    ///     child: Image.network(
    ///       'https://example.com/image.jpg',
    ///       frameBuilder: (BuildContext context, Widget child, int frame, bool wasSynchronouslyLoaded) {
    ///         if (wasSynchronouslyLoaded) {
    ///           return child;
    ///         }
    ///         return AnimatedOpacity(
    ///           child: child,
    ///           opacity: frame == null ? 0 : 1,
    ///           duration: const Duration(seconds: 1),
    ///           curve: Curves.easeOut,
    ///         );
    ///       },
    ///     ),
    ///   );
    /// }
    /// ```
    /// {@end-tool}
    ///
    /// Run against a real-world image, the previous example renders the following
    /// image.
    ///
    /// {@animation 400 400 https://flutter.github.io/assets-for-api-docs/assets/widgets/frame_builder_image.mp4}
    final ImageFrameBuilder frameBuilder,

    /// A builder that specifies the widget to display to the user while an image
    /// is still loading.
    ///
    /// If this is null, and the image is loaded incrementally (e.g. over a
    /// network), the user will receive no indication of the progress as the
    /// bytes of the image are loaded.
    ///
    /// For more information on how to interpret the arguments that are passed to
    /// this builder, see the documentation on [ImageLoadingBuilder].
    ///
    /// ## Performance implications
    ///
    /// If a [loadingBuilder] is specified for an image, the [Image] widget is
    /// likely to be rebuilt on every
    /// [rendering pipeline frame](rendering/RendererBinding/drawFrame.html) until
    /// the image has loaded. This is useful for cases such as displaying a loading
    /// progress indicator, but for simpler cases such as displaying a placeholder
    /// widget that doesn't depend on the loading progress (e.g. static "loading"
    /// text), [frameBuilder] will likely work and not incur as much cost.
    ///
    /// ## Chaining with [frameBuilder]
    ///
    /// If a [frameBuilder] has _also_ been specified for an image, the two
    /// builders will be chained together: the `child` argument to this
    /// builder will contain the _result_ of the [frameBuilder]. For example,
    /// consider the following builders used in conjunction:
    ///
    /// {@macro flutter.widgets.image.chainedBuildersExample}
    ///
    /// {@tool snippet --template=stateless_widget_material}
    ///
    /// The following sample uses [loadingBuilder] to show a
    /// [CircularProgressIndicator] while an image loads over the network.
    ///
    /// ```dart
    /// Widget build(BuildContext context) {
    ///   return DecoratedBox(
    ///     decoration: BoxDecoration(
    ///       color: Colors.white,
    ///       border: Border.all(),
    ///       borderRadius: BorderRadius.circular(20),
    ///     ),
    ///     child: Image.network(
    ///       'https://example.com/image.jpg',
    ///       loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
    ///         if (loadingProgress == null)
    ///           return child;
    ///         return Center(
    ///           child: CircularProgressIndicator(
    ///             value: loadingProgress.expectedTotalBytes != null
    ///                 ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
    ///                 : null,
    ///           ),
    ///         );
    ///       },
    ///     ),
    ///   );
    /// }
    /// ```
    /// {@end-tool}
    ///
    /// Run against a real-world image, the previous example renders the following
    /// loading progress indicator while the image loads before rendering the
    /// completed image.
    ///
    /// {@animation 400 400 https://flutter.github.io/assets-for-api-docs/assets/widgets/loading_progress_image.mp4}
    final ImageLoadingBuilder loadingBuilder,

    /// If non-null, require the image to have this width.
    ///
    /// If null, the image will pick a size that best preserves its intrinsic
    /// aspect ratio.
    ///
    /// It is strongly recommended that either both the [width] and the [height]
    /// be specified, or that the widget be placed in a context that sets tight
    /// layout constraints, so that the image does not change size as it loads.
    /// Consider using [fit] to adapt the image's rendering to fit the given width
    /// and height if the exact image dimensions are not known in advance.
    final double width,

    /// If non-null, require the image to have this height.
    ///
    /// If null, the image will pick a size that best preserves its intrinsic
    /// aspect ratio.
    ///
    /// It is strongly recommended that either both the [width] and the [height]
    /// be specified, or that the widget be placed in a context that sets tight
    /// layout constraints, so that the image does not change size as it loads.
    /// Consider using [fit] to adapt the image's rendering to fit the given width
    /// and height if the exact image dimensions are not known in advance.
    final double height,

    /// If non-null, this color is blended with each image pixel using [colorBlendMode].
    final Color color,

    /// Used to set the [FilterQuality] of the image.
    ///
    /// Use the [FilterQuality.low] quality setting to scale the image with
    /// bilinear interpolation, or the [FilterQuality.none] which corresponds
    /// to nearest-neighbor.
    final FilterQuality filterQuality = FilterQuality.low,

    /// Used to combine [color] with this image.
    ///
    /// The default is [BlendMode.srcIn]. In terms of the blend mode, [color] is
    /// the source and this image is the destination.
    ///
    /// See also:
    ///
    ///  * [BlendMode], which includes an illustration of the effect of each blend mode.
    final BlendMode colorBlendMode,

    /// How to inscribe the image into the space allocated during layout.
    ///
    /// The default varies based on the other fields. See the discussion at
    /// [paintImage].
    final BoxFit fit,

    /// How to align the image within its bounds.
    ///
    /// The alignment aligns the given position in the image to the given position
    /// in the layout bounds. For example, an [Alignment] alignment of (-1.0,
    /// -1.0) aligns the image to the top-left corner of its layout bounds, while an
    /// [Alignment] alignment of (1.0, 1.0) aligns the bottom right of the
    /// image with the bottom right corner of its layout bounds. Similarly, an
    /// alignment of (0.0, 1.0) aligns the bottom middle of the image with the
    /// middle of the bottom edge of its layout bounds.
    ///
    /// To display a subpart of an image, consider using a [CustomPainter] and
    /// [Canvas.drawImageRect].
    ///
    /// If the [alignment] is [TextDirection]-dependent (i.e. if it is a
    /// [AlignmentDirectional]), then an ambient [Directionality] widget
    /// must be in scope.
    ///
    /// Defaults to [Alignment.center].
    ///
    /// See also:
    ///
    ///  * [Alignment], a class with convenient constants typically used to
    ///    specify an [AlignmentGeometry].
    ///  * [AlignmentDirectional], like [Alignment] for specifying alignments
    ///    relative to text direction.
    final AlignmentGeometry alignment = Alignment.center,

    /// How to paint any portions of the layout bounds not covered by the image.
    final ImageRepeat repeat = ImageRepeat.noRepeat,

    /// The center slice for a nine-patch image.
    ///
    /// The region of the image inside the center slice will be stretched both
    /// horizontally and vertically to fit the image into its destination. The
    /// region of the image above and below the center slice will be stretched
    /// only horizontally and the region of the image to the left and right of
    /// the center slice will be stretched only vertically.
    final Rect centerSlice,

    /// Whether to paint the image in the direction of the [TextDirection].
    ///
    /// If this is true, then in [TextDirection.ltr] contexts, the image will be
    /// drawn with its origin in the top left (the "normal" painting direction for
    /// images); and in [TextDirection.rtl] contexts, the image will be drawn with
    /// a scaling factor of -1 in the horizontal direction so that the origin is
    /// in the top right.
    ///
    /// This is occasionally used with images in right-to-left environments, for
    /// images that were designed for left-to-right locales. Be careful, when
    /// using this, to not flip images with integral shadows, text, or other
    /// effects that will look incorrect when flipped.
    ///
    /// If this is true, there must be an ambient [Directionality] widget in
    /// scope.
    final bool matchTextDirection = false,

    /// Whether to continue showing the old image (true), or briefly show nothing
    /// (false), when the image provider changes.
    final bool gaplessPlayback = false,

    /// A Semantic description of the image.
    ///
    /// Used to provide a description of the image to TalkBack on Android, and
    /// VoiceOver on iOS.
    final String semanticLabel,

    /// Whether to exclude this image from semantics.
    ///
    /// Useful for images which do not contribute meaningful information to an
    /// application.
    final bool excludeFromSemantics = false,
    double scale = 1.0,
    int cacheWidth,
    int cacheHeight,
    Key key,
  }) {
    return Image.network(
      this,
      alignment: alignment,
      cacheHeight: cacheHeight,
      cacheWidth: cacheWidth,
      centerSlice: centerSlice,
      color: color,
      colorBlendMode: colorBlendMode,
      excludeFromSemantics: excludeFromSemantics,
      filterQuality: filterQuality,
      fit: fit,
      frameBuilder: frameBuilder,
      gaplessPlayback: gaplessPlayback,
      height: height,
      key: key,
      matchTextDirection: matchTextDirection,
      repeat: repeat,
      headers: headers,
      loadingBuilder: loadingBuilder,
      scale: scale,
      semanticLabel: semanticLabel,
      width: width,
    );
  }

  Widget xImageFile({
    Map<String, String> headers,

    /// A builder function responsible for creating the widget that represents
    /// this image.
    ///
    /// If this is null, this widget will display an image that is painted as
    /// soon as the first image frame is available (and will appear to "pop" in
    /// if it becomes available asynchronously). Callers might use this builder to
    /// add effects to the image (such as fading the image in when it becomes
    /// available) or to display a placeholder widget while the image is loading.
    ///
    /// To have finer-grained control over the way that an image's loading
    /// progress is communicated to the user, see [loadingBuilder].
    ///
    /// ## Chaining with [loadingBuilder]
    ///
    /// If a [loadingBuilder] has _also_ been specified for an image, the two
    /// builders will be chained together: the _result_ of this builder will
    /// be passed as the `child` argument to the [loadingBuilder]. For example,
    /// consider the following builders used in conjunction:
    ///
    /// {@template flutter.widgets.image.chainedBuildersExample}
    /// ```dart
    /// Image(
    ///   ...
    ///   frameBuilder: (BuildContext context, Widget child, int frame, bool wasSynchronouslyLoaded) {
    ///     return Padding(
    ///       padding: EdgeInsets.all(8.0),
    ///       child: child,
    ///     );
    ///   },
    ///   loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
    ///     return Center(child: child);
    ///   },
    /// )
    /// ```
    ///
    /// In this example, the widget hierarchy will contain the following:
    ///
    /// ```dart
    /// Center(
    ///   Padding(
    ///     padding: EdgeInsets.all(8.0),
    ///     child: <image>,
    ///   ),
    /// )
    /// ```
    /// {@endtemplate}
    ///
    /// {@tool snippet --template=stateless_widget_material}
    ///
    /// The following sample demonstrates how to use this builder to implement an
    /// image that fades in once it's been loaded.
    ///
    /// This sample contains a limited subset of the functionality that the
    /// [FadeInImage] widget provides out of the box.
    ///
    /// ```dart
    /// @override
    /// Widget build(BuildContext context) {
    ///   return DecoratedBox(
    ///     decoration: BoxDecoration(
    ///       color: Colors.white,
    ///       border: Border.all(),
    ///       borderRadius: BorderRadius.circular(20),
    ///     ),
    ///     child: Image.network(
    ///       'https://example.com/image.jpg',
    ///       frameBuilder: (BuildContext context, Widget child, int frame, bool wasSynchronouslyLoaded) {
    ///         if (wasSynchronouslyLoaded) {
    ///           return child;
    ///         }
    ///         return AnimatedOpacity(
    ///           child: child,
    ///           opacity: frame == null ? 0 : 1,
    ///           duration: const Duration(seconds: 1),
    ///           curve: Curves.easeOut,
    ///         );
    ///       },
    ///     ),
    ///   );
    /// }
    /// ```
    /// {@end-tool}
    ///
    /// Run against a real-world image, the previous example renders the following
    /// image.
    ///
    /// {@animation 400 400 https://flutter.github.io/assets-for-api-docs/assets/widgets/frame_builder_image.mp4}
    final ImageFrameBuilder frameBuilder,

    /// A builder that specifies the widget to display to the user while an image
    /// is still loading.
    ///
    /// If this is null, and the image is loaded incrementally (e.g. over a
    /// network), the user will receive no indication of the progress as the
    /// bytes of the image are loaded.
    ///
    /// For more information on how to interpret the arguments that are passed to
    /// this builder, see the documentation on [ImageLoadingBuilder].
    ///
    /// ## Performance implications
    ///
    /// If a [loadingBuilder] is specified for an image, the [Image] widget is
    /// likely to be rebuilt on every
    /// [rendering pipeline frame](rendering/RendererBinding/drawFrame.html) until
    /// the image has loaded. This is useful for cases such as displaying a loading
    /// progress indicator, but for simpler cases such as displaying a placeholder
    /// widget that doesn't depend on the loading progress (e.g. static "loading"
    /// text), [frameBuilder] will likely work and not incur as much cost.
    ///
    /// ## Chaining with [frameBuilder]
    ///
    /// If a [frameBuilder] has _also_ been specified for an image, the two
    /// builders will be chained together: the `child` argument to this
    /// builder will contain the _result_ of the [frameBuilder]. For example,
    /// consider the following builders used in conjunction:
    ///
    /// {@macro flutter.widgets.image.chainedBuildersExample}
    ///
    /// {@tool snippet --template=stateless_widget_material}
    ///
    /// The following sample uses [loadingBuilder] to show a
    /// [CircularProgressIndicator] while an image loads over the network.
    ///
    /// ```dart
    /// Widget build(BuildContext context) {
    ///   return DecoratedBox(
    ///     decoration: BoxDecoration(
    ///       color: Colors.white,
    ///       border: Border.all(),
    ///       borderRadius: BorderRadius.circular(20),
    ///     ),
    ///     child: Image.network(
    ///       'https://example.com/image.jpg',
    ///       loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
    ///         if (loadingProgress == null)
    ///           return child;
    ///         return Center(
    ///           child: CircularProgressIndicator(
    ///             value: loadingProgress.expectedTotalBytes != null
    ///                 ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
    ///                 : null,
    ///           ),
    ///         );
    ///       },
    ///     ),
    ///   );
    /// }
    /// ```
    /// {@end-tool}
    ///
    /// Run against a real-world image, the previous example renders the following
    /// loading progress indicator while the image loads before rendering the
    /// completed image.
    ///
    /// {@animation 400 400 https://flutter.github.io/assets-for-api-docs/assets/widgets/loading_progress_image.mp4}
    final ImageLoadingBuilder loadingBuilder,

    /// If non-null, require the image to have this width.
    ///
    /// If null, the image will pick a size that best preserves its intrinsic
    /// aspect ratio.
    ///
    /// It is strongly recommended that either both the [width] and the [height]
    /// be specified, or that the widget be placed in a context that sets tight
    /// layout constraints, so that the image does not change size as it loads.
    /// Consider using [fit] to adapt the image's rendering to fit the given width
    /// and height if the exact image dimensions are not known in advance.
    final double width,

    /// If non-null, require the image to have this height.
    ///
    /// If null, the image will pick a size that best preserves its intrinsic
    /// aspect ratio.
    ///
    /// It is strongly recommended that either both the [width] and the [height]
    /// be specified, or that the widget be placed in a context that sets tight
    /// layout constraints, so that the image does not change size as it loads.
    /// Consider using [fit] to adapt the image's rendering to fit the given width
    /// and height if the exact image dimensions are not known in advance.
    final double height,

    /// If non-null, this color is blended with each image pixel using [colorBlendMode].
    final Color color,

    /// Used to set the [FilterQuality] of the image.
    ///
    /// Use the [FilterQuality.low] quality setting to scale the image with
    /// bilinear interpolation, or the [FilterQuality.none] which corresponds
    /// to nearest-neighbor.
    final FilterQuality filterQuality = FilterQuality.low,

    /// Used to combine [color] with this image.
    ///
    /// The default is [BlendMode.srcIn]. In terms of the blend mode, [color] is
    /// the source and this image is the destination.
    ///
    /// See also:
    ///
    ///  * [BlendMode], which includes an illustration of the effect of each blend mode.
    final BlendMode colorBlendMode,

    /// How to inscribe the image into the space allocated during layout.
    ///
    /// The default varies based on the other fields. See the discussion at
    /// [paintImage].
    final BoxFit fit,

    /// How to align the image within its bounds.
    ///
    /// The alignment aligns the given position in the image to the given position
    /// in the layout bounds. For example, an [Alignment] alignment of (-1.0,
    /// -1.0) aligns the image to the top-left corner of its layout bounds, while an
    /// [Alignment] alignment of (1.0, 1.0) aligns the bottom right of the
    /// image with the bottom right corner of its layout bounds. Similarly, an
    /// alignment of (0.0, 1.0) aligns the bottom middle of the image with the
    /// middle of the bottom edge of its layout bounds.
    ///
    /// To display a subpart of an image, consider using a [CustomPainter] and
    /// [Canvas.drawImageRect].
    ///
    /// If the [alignment] is [TextDirection]-dependent (i.e. if it is a
    /// [AlignmentDirectional]), then an ambient [Directionality] widget
    /// must be in scope.
    ///
    /// Defaults to [Alignment.center].
    ///
    /// See also:
    ///
    ///  * [Alignment], a class with convenient constants typically used to
    ///    specify an [AlignmentGeometry].
    ///  * [AlignmentDirectional], like [Alignment] for specifying alignments
    ///    relative to text direction.
    final AlignmentGeometry alignment = Alignment.center,

    /// How to paint any portions of the layout bounds not covered by the image.
    final ImageRepeat repeat,

    /// The center slice for a nine-patch image.
    ///
    /// The region of the image inside the center slice will be stretched both
    /// horizontally and vertically to fit the image into its destination. The
    /// region of the image above and below the center slice will be stretched
    /// only horizontally and the region of the image to the left and right of
    /// the center slice will be stretched only vertically.
    final Rect centerSlice,

    /// Whether to paint the image in the direction of the [TextDirection].
    ///
    /// If this is true, then in [TextDirection.ltr] contexts, the image will be
    /// drawn with its origin in the top left (the "normal" painting direction for
    /// images); and in [TextDirection.rtl] contexts, the image will be drawn with
    /// a scaling factor of -1 in the horizontal direction so that the origin is
    /// in the top right.
    ///
    /// This is occasionally used with images in right-to-left environments, for
    /// images that were designed for left-to-right locales. Be careful, when
    /// using this, to not flip images with integral shadows, text, or other
    /// effects that will look incorrect when flipped.
    ///
    /// If this is true, there must be an ambient [Directionality] widget in
    /// scope.
    final bool matchTextDirection = false,

    /// Whether to continue showing the old image (true), or briefly show nothing
    /// (false), when the image provider changes.
    final bool gaplessPlayback = false,

    /// A Semantic description of the image.
    ///
    /// Used to provide a description of the image to TalkBack on Android, and
    /// VoiceOver on iOS.
    final String semanticLabel,

    /// Whether to exclude this image from semantics.
    ///
    /// Useful for images which do not contribute meaningful information to an
    /// application.
    final bool excludeFromSemantics = false,
    double scale = 1.0,
    int cacheWidth,
    int cacheHeight,
    Key key,
  }) {
    return Image.file(
      File(this),
      alignment: alignment,
      cacheHeight: cacheHeight,
      cacheWidth: cacheWidth,
      centerSlice: centerSlice,
      color: color,
      colorBlendMode: colorBlendMode,
      excludeFromSemantics: excludeFromSemantics,
      filterQuality: filterQuality,
      fit: fit,
      frameBuilder: frameBuilder,
      gaplessPlayback: gaplessPlayback,
      height: height,
      key: key,
      matchTextDirection: matchTextDirection,
      repeat: repeat,
      scale: scale,
      semanticLabel: semanticLabel,
      width: width,
    );
  }
}

extension DecorationMx on DecorationImage {
  Widget xContainer({
    final double width,
    final Color color,
    final EdgeInsetsGeometry padding,
    final Color shadowColor,
    final double rounded,
    final Widget child,
    final double height,
    final double blurRadius,
    final double spreadRadius,
    final Offset offset,
    final Function onTap,
    final EdgeInsetsGeometry margin,
    final BorderRadiusGeometry borderRadius,
    final Key key,
  }) {
    return MxContainer(
      image: this,
      blurRadius: blurRadius,
      borderRadius: borderRadius,
      child: child,
      color: color,
      height: height,
      key: key,
      margin: margin,
      offset: offset,
      onTap: onTap,
      padding: padding,
      rounded: rounded,
      shadowColor: shadowColor,
      spreadRadius: spreadRadius,
      width: width,
    );
  }
}
