import 'package:flutter/material.dart';
import 'package:flutter_common/common.dart';

import '../../resources/resources.dart';
import '../../extensions/extensions.dart';
import '../../constants.dart';

class ContainerImageTitle extends StatelessWidget {
  final String title;
  final String content;
  final String assetImage;

  ContainerImageTitle(
      {@required this.title,
      @required this.content,
      @required this.assetImage});

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                child: Image.asset(ImageConstants.imgWareOnBoard),
              ),
              Container(
                child: Center(
                  child: Image.asset(assetImage),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: Dimens.size110,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title ?? '',
                textAlign: TextAlign.center,
                style: _theme.textTheme.subtitle1.semiBold.size18.textBlack,
              ),
              UIHelper.verticalBox8,
              Text(
                content ?? '',
                textAlign: TextAlign.center,
                style: _theme.textTheme.caption.light.size14.textBlack,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
