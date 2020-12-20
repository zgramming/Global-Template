import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:global_template/global_template.dart';

class ShowImageNetwork extends StatelessWidget {
  const ShowImageNetwork({
    Key key,
    @required this.imageUrl,
    @required this.imageSize,
    this.isCircle = false,
    this.imageCircleRadius = 35,
    this.imageCircleElevation = 0,
    this.imageBorderRadius = 0,
    this.padding = const EdgeInsets.all(0),
    this.alignment = Alignment.center,
    this.fit,
    this.onErrorImage,
    this.loadingBuilder,
  }) : super(key: key);

  final String imageUrl;

  ///! Setting size image
  final double imageSize;

  ///! Setting Jika Ingin Image Lingkaran
  final bool isCircle;

  ///! Setting Image Circle Radius
  final double imageCircleRadius;

  ///! Image Circle Elevation
  final double imageCircleElevation;

  ///! Setting Image Border Radius
  final double imageBorderRadius;

  ///! Setting Padding Image
  final EdgeInsetsGeometry padding;

  ///! Setting Align Image
  final AlignmentGeometry alignment;

  ///! Settings fit Image
  final BoxFit fit;

  ///! Handle Error Image
  final Function(BuildContext context, String url, dynamic error) onErrorImage;

  ///! Handle when image loading
  final Widget Function(BuildContext, String) loadingBuilder;
  @override
  Widget build(BuildContext context) {
    final image = Padding(
      padding: padding,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(imageBorderRadius),
        child: CachedNetworkImage(
          imageUrl: imageUrl ?? 'https://flutter.dev/images/catalog-widget-placeholder.png',
          height: sizes.height(context) / (imageSize ?? 1),
          width: sizes.width(context) / (imageSize ?? 1),
          errorWidget: onErrorImage ??
              (BuildContext context, String url, dynamic error) {
                return Center(
                  child: IconButton(
                    icon: const Icon(Icons.error),
                    onPressed: () {
                      print(error.runtimeType);
                      print(url.toString());
                    },
                  ),
                );
              },
          placeholder: loadingBuilder,
          fit: fit,
          alignment: alignment,
        ),
      ),
    );

    if (isCircle) {
      return Padding(
        padding: padding,
        child: Card(
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: sizes.width(context) / imageCircleRadius,
            backgroundImage: CachedNetworkImageProvider(imageUrl),
          ),
          shape: CircleBorder(),
          elevation: imageCircleElevation,
          clipBehavior: Clip.antiAlias,
        ),
      );
    } else {
      return image;
    }
  }
}
