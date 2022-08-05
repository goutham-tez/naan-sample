import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:naan_wallet/app/modules/common_widgets/solid_button.dart';
import 'package:naan_wallet/app/routes/app_pages.dart';
import 'package:naan_wallet/utils/colors/colors.dart';
import 'package:naan_wallet/utils/constants/path_const.dart';
import 'package:naan_wallet/utils/extensions/size_extension.dart';
import 'package:naan_wallet/utils/material_Tap.dart';
import 'package:naan_wallet/utils/styles/styles.dart';

import '../controllers/biometric_page_controller.dart';

class BiometricPageView extends GetView<BiometricPageController> {
  const BiometricPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: GradConst.GradientBackground),
      width: 1.width,
      padding: EdgeInsets.symmetric(horizontal: 0.05.width),
      child: Column(
        children: [
          0.2.vspace,
          SvgPicture.asset(PathConst.SVG + "fingerprint.svg"),
          0.05.vspace,
          Text(
            "Enable biometry unlock",
            style: titleLarge,
          ),
          0.01.vspace,
          Text(
            "Access Naan wallet with your biometry.\nQuick, easy and secure.",
            textAlign: TextAlign.center,
            style: bodySmall.apply(
              color: ColorConst.NeutralVariant.shade60,
            ),
          ),
          Spacer(),
          SolidButton(
            title: "Enable Biometry Unlock",
            onPressed: () {},
          ),
          0.01.vspace,
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.CREATE_PROFILE_PAGE);
            },
            child: Container(
              height: 48,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "Skip",
                style:
                    titleSmall.apply(color: ColorConst.NeutralVariant.shade60),
              ),
            ),
          ),
          0.02.vspace,
        ],
      ),
    );
  }
}
