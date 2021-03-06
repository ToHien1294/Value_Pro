import 'package:flutter/material.dart';
import 'package:flutter_common/common.dart';
import 'package:sdk/flutter_sdk.dart';

import '../../widget/widget.dart';
import '../../resources/resources.dart';
import '../../constants.dart';
import '../../extensions/extensions.dart';
import '../../router/router.dart';

class OnBroadPage extends StatefulWidget {
  const OnBroadPage({Key key}) : super(key: key);

  @override
  _OnBroadPageState createState() => _OnBroadPageState();
}

class _OnBroadPageState extends BaseState<OnBroadPage, BaseBloc> {
  PageController _pageController;

  BehaviorSubject<bool> _visibleSkip;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _visibleSkip = BehaviorSubject<bool>.seeded(false);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _pageController.addListener(() {
      if (_pageController.page > 2.5) {
        _visibleSkip.add(true);
      } else {
        _visibleSkip.add(false);
      }
    });
  }

  @override
  void dispose() {
    _visibleSkip.close();
    super.dispose();
  }

  @override
  Widget buildContent(BuildContext context) {
    return  Container(
      width: double.infinity,
      child: Column(
        children: [
          UIHelper.verticalBox32,
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, Routes.homePage, (route) => false);
              },
              child: StreamBuilder<bool>(
                  stream: _visibleSkip,
                  builder: (context, snapshot) {
                    return Text(
                      (snapshot?.data??false) ? "" : "SKIP",
                      style: themeData
                          .textTheme.subtitle2.semiBold.size14.textPrimary,
                    );
                  }),
            ),
          ),
          Image.asset(
            ImageConstants.imgLogoSlogan,
            width: Dimens.size180,
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: const ClampingScrollPhysics(),
              children: [
                ContainerImageTitle(
                  assetImage: ImageConstants.imgOnBroadOne,
                  title: 'Nh???ng properties b??n / cho thu?? \n h???p d???n',
                  content:
                  'KimCasa gi??p b???n t??m ki???m nh???ng properties \n ph?? h???p v???i mong mu???n b???n',
                ),
                ContainerImageTitle(
                  assetImage: ImageConstants.imgOnBroadTwo,
                  title: "Xem nhanh c??c properties \n ??ang quan t??m",
                  content:
                  "???ng d???ng t??? ?????ng g???i ?? khi xu???t hi???n \n nh???ng properties m???i ph?? h???p v???i nhu c???u b???n c???n",
                ),
                ContainerImageTitle(
                  assetImage: ImageConstants.imgOnBroadThree,
                  title: "So s??nh ????? l???a ch???n \n ch??nh x??c h??n",
                  content:
                  "KimCasa gi??p b???n so s??nh c??c properties \n m?? b???n ??ang c??n nh???c ch???n l???a",
                ),
                ContainerImageTitle(
                  assetImage: ImageConstants.imgOnBroadFour,
                  title: "?????c t??nh nhanh ch??ng \n gi?? nh?? & c??c lo???i ph??",
                  content:
                  "KimCasa gi??p b???n so s??nh c??c properties \n m?? b???n ??ang c??n nh???c ch???n l???a",
                ),
              ],
            ),
          ),
          StepBarPage(
            pageController: _pageController,
          ),
        ],
      ),
    );
  }

  @override
  BaseBloc get bloc => null;
}
