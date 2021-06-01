import 'package:cupertino_shopping/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/app_state_model.dart';

void main() {
  return runApp(
    ChangeNotifierProvider<AppStateModel>(            // NEW
      create: (_) => AppStateModel()..loadProducts(), // NEW
      child: CupertinoStoreApp(),                     // NEW
    ),
  );
}