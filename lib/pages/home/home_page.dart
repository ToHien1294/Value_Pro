import 'package:flutter/material.dart';
import 'package:flutter_common/common.dart';
import 'package:sdk/flutter_sdk.dart';

import '../../resources/resources.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage, BaseBloc> {
  @override
  void onNavigateAsync(Object payload) {
    super.onNavigateAsync(payload);
  }

  @override
  Widget buildContent(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            localizations.text(UI.app_name),
            style: themeData.textTheme.subtitle1.semiBold,
          ),
        )
      ],
    );
  }

  @override
  Widget buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(" localization,"),
    );
  }

  @override
  BaseBloc get bloc => null;
}
