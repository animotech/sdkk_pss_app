import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ui/screens/parking/parking.dart';
import 'ui/view_models/parking_detail.dart';

setupApp() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        child: MaterialApp(
          title: 'Parking',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/',
          routes: {'/': (context) => ParkingScene()},
        ),
        providers: getProviders());
  }
}

getProviders() {
  return [
    ChangeNotifierProvider(
      create: (context) => ParkingDetailModel(),
    )
  ];
}
