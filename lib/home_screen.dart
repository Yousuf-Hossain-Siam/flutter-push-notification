import 'package:flutter/material.dart';
import 'package:flutter_notification/notification_services.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  NotificationServices notificationServices = NotificationServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationServices.requestNotificationPermission();
    notificationServices.firebaseInit(context);

    // notificationServices.isTokenRefresh();
    notificationServices.getDeviceToken().then((value){
       print("Device Token: $value");
       print("value");
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}