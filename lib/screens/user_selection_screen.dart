import 'package:care_bus/utils/address.dart';
import 'package:care_bus/utils/app_strings.dart';
import 'package:care_bus/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:care_bus/widgets/user_container_widget.dart';
import 'package:care_bus/utils/colors.dart';
import 'package:care_bus/widgets/topcircularcontainer.dart';

class UserSelection extends StatefulWidget {
  const UserSelection({super.key});

  @override
  State<UserSelection> createState() => _UserSelectionState();
}

class _UserSelectionState extends State<UserSelection> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kMainColor,
        body: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                Address.kMainBusImage,
                width: 300,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, bottom: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppStrings.openingText_1,
                  style: AppTextStyles.kOpeningTextStyle_1,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, bottom: 10),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    AppStrings.openingText_2,
                    style: AppTextStyles.kOpeningTextStyle_2,
                  )),
            ),
            TopCircularContainer(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      AppStrings.openingText_3,
                      style: AppTextStyles.kOpeningTextStyle_1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UserSelectContainer(
                        color: AppColors.kMainColor,
                        onPress: () {
                          Navigator.pushNamed(context, '/parentloginscreen');
                        },
                        user: 'Iam parent',
                        icon: Address.kParentIcon,
                      ),
                      const SizedBox(width: 20),
                      UserSelectContainer(
                        color: AppColors.kMainColor,
                        onPress: () {
                          Navigator.pushNamed(context, '/adminloginscreen');
                        },
                        user: 'Iam Admin',
                        icon: Address.kAdminLogo,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  UserSelectContainer(
                    color: AppColors.kMainColor,
                    onPress: () {
                      Navigator.pushNamed(context, '/driverloginscreen');
                    },
                    user: 'Iam Driver',
                    icon: Address.kDriverIcon,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
