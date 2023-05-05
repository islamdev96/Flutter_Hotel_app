import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  TextEditingController oldPassController = TextEditingController();
  void Reset(String oldPass, Pass, Confpassword) async {
    try {

      ;
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffafafa),
        elevation: 0,
        title: const Text(""),
        leading: IconButton(
          onPressed: () async {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.grey[800],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsetsDirectional.only(start: 12),
                    child: Text("Old password"),
                  ),
                  const SizedBox(height: 6),
                  TextFormField(
                    controller: oldPassController,
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "enter old password ..."),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 22),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsetsDirectional.only(start: 12),
                    child: Text("New password"),
                  ),
                  const SizedBox(height: 6),
                  TextFormField(
                    obscureText: true,
                    controller: passController,
                    decoration: const InputDecoration(
                        hintText: "enter new password ..."),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 22),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsetsDirectional.only(start: 12),
                    child: Text("Confirm password"),
                  ),
                  const SizedBox(height: 6),
                  TextFormField(
                    obscureText: true,
                    controller: confirmPassController,
                    // decoration: InputDecoration(
                    //     hintText: "enter new password ..."
                    // ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 33),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              width: Get.width,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                ),
                onPressed: () async {
                  Reset(
                      oldPassController.text.toString(),
                      passController.text.toString(),
                      confirmPassController.text.toString());
                },
                child: const Text("Apply"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
