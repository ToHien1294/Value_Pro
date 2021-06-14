import 'package:flutter/material.dart';
import 'package:flutter_common/common.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widget/widget.dart';
import '../../resources/resources.dart';
import '../../constants.dart';
import '../../extensions/extensions.dart';

class NeedToBuyStepTwoPage extends StatefulWidget {
  final PageController pageController;

  NeedToBuyStepTwoPage({@required this.pageController});

  @override
  _NeedToBuyStepTwoPageState createState() => _NeedToBuyStepTwoPageState();
}

class _NeedToBuyStepTwoPageState extends State<NeedToBuyStepTwoPage> {
  ThemeData _themeData;

  @override
  Widget build(BuildContext context) {
    _themeData = Theme.of(context);
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: MyColors.primaryWhite.withOpacity(0.92),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(Dimens.size24),
          topLeft: Radius.circular(Dimens.size24),
        ),
      ),
      child: Column(
        children: [
          _buildLocation(),
          Expanded(
            child: Padding(
              padding: UIHelper.horizontalEdgeInsets16,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    UIHelper.verticalBox16,
                    _buildContainerTitleAndData(
                      title: "Facilities",
                      widget: ContainerFacilities(),
                    ),
                    UIHelper.verticalBox24,
                    _buildContainerTitleAndData(
                      title: "Time",
                      widget: ContainerTimes(),
                    ),
                    UIHelper.verticalBox24,
                    _buildContainerTitleAndData(
                      title: "Don’t show",
                      widget: ContainerDontShow(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          _buildBottomButton(),
        ],
      ),
    );
  }

  Widget _buildLocation() {
    return Container(
      width: double.infinity,
      padding: UIHelper.horizontalEdgeInsets16,
      height: Dimens.size40,
      decoration: BoxDecoration(
        color: MyColors.primaryWhite,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(Dimens.size24),
          topLeft: Radius.circular(Dimens.size24),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "London Fields, London",
            style: _themeData
                .textTheme.subtitle2.regular.size14.letterSpacing0p6.textBlack,
          ),
          UIHelper.horizontalBox12,
          SvgPicture.asset(SVGConstants.icCloseCircle),
        ],
      ),
    );
  }

  Widget _buildContainerTitleAndData(
      {@required String title, @required Widget widget}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title ?? '--',
          style: _themeData
              .textTheme.subtitle2.size14.semiBold.letterSpacing0p6.textBlack,
        ),
        UIHelper.verticalBox12,
        widget ?? UIHelper.emptyBox,
      ],
    );
  }

  Widget _buildBottomButton() {
    return Stack(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          height: Dimens.size110,
          width: double.infinity,
          child: Container(
            height: Dimens.size66,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: const AssetImage(ImageConstants.imgBottomNeedToBuy),
            )),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 2 - Dimens.size40,
          top: Dimens.size10,
          child: Container(
            alignment: Alignment.center,
            width: Dimens.size80,
            height: Dimens.size80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                  color: MyColors.primary, width: Dimens.halfSize0p4),
            ),
            child: CircleButtonGradient(
              SVGUrl: SVGConstants.icSearchLocation,
            ),
          ),
        ),
        Positioned(
          top: Dimens.size22,
          left: Dimens.size16,
          child: CircleButton(
            icon: Icons.arrow_back_ios_sharp,
            size: Dimens.size48,
            colorIcon: MyColors.primaryBlack.withOpacity(0.6),
            onTap: () {
              widget.pageController.animateToPage(0,
                  duration: UIHelper.duration150, curve: Curves.linear);
            },
          ),
        ),
      ],
    );
  }
}
