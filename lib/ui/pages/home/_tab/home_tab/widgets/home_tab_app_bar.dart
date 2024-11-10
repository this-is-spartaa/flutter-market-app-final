import 'package:flutter/material.dart';
import 'package:flutter_market_app/core/snackbar_util.dart';

class HomeTabAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // bottom 속성. 사용X. => Scaffold의 appBar사용 가능.
    return AppBar(
      title: Text('온천동'),
      actions: [
        GestureDetector(
          onTap: () {
            SnackbarUtil.showSnackBar(context, '준비중입니다.');
          },
          child: Container(
            width: 50,
            height: 50,
            color: Colors.transparent,
            child: Icon(Icons.search),
          ),
        ),
      ],
    );
  }
}
