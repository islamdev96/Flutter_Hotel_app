import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotelbooking/UI/B1_Home/B1_Home_Screen/widget/card_city.dart';
import 'package:hotelbooking/UI/handlingView/handlingview.dart';
import 'package:hotelbooking/UI/pages/cities.dart';
import 'package:hotelbooking/controller/home_controller.dart';

class CitesWidget extends StatelessWidget {
  const CitesWidget({
    Key? key,
    required TextStyle txtStyle,
  })  : _txtStyle = txtStyle,
        super(key: key);

  final TextStyle _txtStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30.0),
      height: 280.0,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Cities".tr,
                    style: _txtStyle,
                  ),
                  InkWell(
                    onTap: () async {
                      Get.to(() => const Cities());
                    },
                    child: Text(
                      "See Moree",
                      style: _txtStyle.copyWith(
                          color: Colors.black26, fontSize: 13.5),
                    ),
                  )
                ],
              )),
          Expanded(
            child: GetBuilder<HomeController>(
              builder: (controller) {
                return HandlingDataView(
                  statusRequest: controller.statusRequest2,
                  widget: ListView.separated(
                    itemCount: controller.getCitesModel?.message!.length ?? 0,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    itemBuilder: (context, int i) {
                      return CardCity(
                        message: controller.getCitesModel!.message![i],
                      );
                    },
                    separatorBuilder: (context, int i) {
                      return const SizedBox(width: 4);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
