import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../common.dart';
import '../constants.dart';

class CustomImageNetWork extends StatelessWidget {
  final String url;
  final BoxFit boxFit;
  final double width;
  final double height;

  const CustomImageNetWork({@required this.url, this.boxFit, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return url != null
        ? Image.network(
            url,
            width: width,
            height: height,
            fit: boxFit ?? BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return _placeHolder(context);
            },
            errorBuilder: (context, exception, stackTrace) => Container(
              color: Colors.grey.shade100,
              alignment: Alignment.center,
              child: Icon(
                Icons.broken_image_rounded,
                color: Theme.of(context).hintColor,
              ),
            ),
            cacheWidth: UIHelper.cacheWidth,
            cacheHeight: UIHelper.cacheHeight,
          )
        : _placeHolder(context);
  }

  Widget _placeHolder(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorConstants.baseColor,
      highlightColor: ColorConstants.highlightColor,
      child: Container(
        width: width,
        height: height,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
