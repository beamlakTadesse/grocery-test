import 'package:flutter/material.dart';
import 'package:grocery/core/utils/image_constant.dart';
import 'package:grocery/core/utils/size_utils.dart';
import 'package:grocery/theme/theme_helper.dart';
import 'package:grocery/widgets/custom_image_view.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgTransfer1,
      activeIcon: ImageConstant.imgTransfer1,
      type: BottomBarEnum.Transfer1,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIccart,
      activeIcon: ImageConstant.imgIccart,
      type: BottomBarEnum.Iccart,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIcwishlist,
      activeIcon: ImageConstant.imgIcwishlist,
      type: BottomBarEnum.Icwishlist,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgPlaceholder23x23,
      activeIcon: ImageConstant.imgPlaceholder23x23,
      type: BottomBarEnum.Placeholder23x23,
      isPng: true,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: getHorizontalSize(372),
          child: Divider(),
        ),
        SizedBox(
          height: getVerticalSize(62),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedFontSize: 0,
            elevation: 0,
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            items: List.generate(bottomMenuList.length, (index) {
              return BottomNavigationBarItem(
                icon: CustomImageView(
                  svgPath: bottomMenuList[index].isPng == true
                      ? null
                      : bottomMenuList[index].icon,
                  imagePath: bottomMenuList[index].isPng == true
                      ? bottomMenuList[index].icon
                      : null,
                  height: getSize(23),
                  width: getSize(23),
                  color: appTheme.gray40001,
                ),
                activeIcon: CustomImageView(
                  svgPath: bottomMenuList[index].isPng == true
                      ? null
                      : bottomMenuList[index].activeIcon,
                  imagePath: bottomMenuList[index].isPng == true
                      ? bottomMenuList[index].activeIcon
                      : null,
                  height: getSize(20),
                  width: getSize(20),
                  color: appTheme.gray70003,
                ),
                label: '',
              );
            }),
            onTap: (index) {
              selectedIndex = index;
              widget.onChanged?.call(bottomMenuList[index].type);
              setState(() {});
            },
          ),
        ),
      ],
    );
  }
}

enum BottomBarEnum {
  Home,
  Transfer1,
  Iccart,
  Icwishlist,
  Placeholder23x23,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isPng = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isPng;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
