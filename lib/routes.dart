import 'package:flutter/material.dart';
import './video/index.dart';
import './me/index.dart';
import './friend/index.dart';
import './account/index.dart';

final routes = {
  '/video': (BuildContext context) => new VideoView(),
  '/me': (BuildContext context) => new MeView(),
  '/friend': (BuildContext context) => new FriendView(),
  '/account': (BuildContext context) => new AccountView(),
};
