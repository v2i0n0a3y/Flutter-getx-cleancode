import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getxcleancode/data/response/status.dart';
import 'package:getxcleancode/res/components/general_exception_widget.dart';
import 'package:getxcleancode/res/components/internet_exception_widget.dart';
import 'package:getxcleancode/res/routes/routes_name.dart';
import 'package:getxcleancode/view_models/controller/home/home_view_model.dart';
import 'package:getxcleancode/view_models/controller/user_preference/user_preference_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeController = Get.put(HomeController());
  UserPreference userPreference = UserPreference();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.userListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("HOME SCREEEN"),
        actions: [
          IconButton(
              onPressed: () {
                userPreference.removeUser().then((value) {
                  Get.toNamed(RoutesName.loginView);
                });
              },
              icon: Icon(Icons.logout_outlined))
        ],
      ),
      body: Obx(() {
        switch (homeController.rxRequestStatus.value) {
          case Status.LOADING:
            return const Center(child: CircularProgressIndicator());
          case Status.ERROR:
            if (homeController.error.value == "No Internet") {
              return InterNetExceptionWidget(
                onPressed: () {
                  homeController.refreshApi();
                },
              );
            } else {
              return GeneralExceptionWidget(onPressed: () {
                homeController.refreshApi();
              });
            }
          case Status.COMPLETED:
            return ListView.builder(
                itemCount: homeController.userList.value.users!.length,
                itemBuilder: (context, index) {
                  var user = homeController.userList.value.users!;
                  return Card(
                    child: ListTile(
                      title: Text(
                          "${user[index].firstName.toString()} ${user[index].lastName.toString()}"),
                      subtitle: Text(user[index].role.toString()),
                      leading: Image.network(user[index].image.toString()),
                    ),
                  );
                });
        }
      }),
    );
  }
}
