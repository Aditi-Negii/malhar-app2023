
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:malhar_2023/components/drawer_wrapper.dart';
import 'package:malhar_2023/data/notfifications.dart';
import 'package:malhar_2023/home.dart';
import 'package:malhar_2023/login_page.dart';
import 'package:malhar_2023/services/notifications.dart';
import 'components/drawer.dart';
import 'pages/blog.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();
  tz.initializeTimeZones();
  tz.setLocalLocation(tz.getLocation('Asia/Kolkata'));
  setNotif();
  runApp(const MyApp());
}

void setNotif() async {
  print("In notif");
  var notifications = notificationData;
  print(notifications);
  for (final notification in notifications) {
    print(int.parse(notification['Month'].toString()));
    if (DateTime(2023, int.parse(notification['Month'].toString()),
            int.parse(notification['Day'].toString())-1, 12)
        .isAfter(DateTime.now())) {
      NotificationService().showNotification(
          "0",
          notification['Title'].toString(),
          notification['Desc'].toString(),
          tz.TZDateTime.from(
              DateTime(2023, int.parse(notification['Month'].toString()),
                  int.parse(notification['Day'].toString()), 12),
              tz.local));
      NotificationService().showNotification(
          "0",
          notification['Title'].toString(),
          notification['Desc'].toString(),
          tz.TZDateTime.from(
              DateTime(2023, int.parse(notification['Month'].toString()),
                  int.parse(notification['Day'].toString()) - 1, 12),
              tz.local));
    }
  }

  // NotificationService().showNotification(0, a, "Notification body", tz.TZDateTime.now(tz.local).add(Duration(seconds: 1)));
  // NotificationService().showNotification(0, a, "Notification body", tz.TZDateTime.now(tz.local).add(Duration(seconds: 3)));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Landing page',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Home'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DrawerWrapper(
      disableGestures: false,
      drawerController: _advancedDrawerController,
      scaffold: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            widget.title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.menu,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
        ),
        body: const HomeScreen(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setNotif();
            },
            child: Icon(Icons.login)),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
