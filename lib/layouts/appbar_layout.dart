import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/image_urls.dart';
import '../theme/colors_theme.dart';
import '../theme/typography_theme.dart';
import '../widgets/avatar_widget.dart';
import '../widgets/icon_button_widget.dart';

class AppBarLayout extends StatelessWidget implements PreferredSizeWidget {
  final num? quantityNotify;
  final String avatarUrl;
  final String title;
  final Widget iconFirst;
  final bool isIconEdit;
  final Function()? onTapAvatar;
  final Function()? onPressedIcon;

  const AppBarLayout({
    Key? key,
    this.quantityNotify,
    required this.avatarUrl,
    required this.title,
    required this.iconFirst,
    this.onTapAvatar,
    this.onPressedIcon,
    this.isIconEdit = true,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: ColorsTheme.light,
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  InkWell(
                    customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9999),
                    ),
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (_) => const AccountScreen()));
                    },
                    child: AvatarWidget(avatarUrl: ImageUrls.avatar, width: 48, height: 48),
                  ),
                  const SizedBox(width: 24),
                  Text(title, style: TypographyTheme.heading5())
                ],
              ),
              Row(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      IconButtonWidget(
                        onPressed: onPressedIcon,
                        icon: iconFirst,
                        bgColor: Color(0xffEAEEEE),
                      ),
                      if (quantityNotify != null)
                        Positioned(
                          top: 0,
                          right: -5,
                          child: Container(
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              color: ColorsTheme.white,
                              borderRadius: BorderRadius.circular(9999), // Adjusted border radius
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                              decoration: BoxDecoration(
                                color: ColorsTheme.red,
                                borderRadius: BorderRadius.circular(9999), // Adjusted border radius
                              ),
                              child: Text(
                                '$quantityNotify',
                                style: const TextStyle(color: ColorsTheme.white, fontWeight: FontWeight.w700, fontSize: 8),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  if (isIconEdit) const SizedBox(width: 12),
                  if (isIconEdit)
                    IconButtonWidget(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.solidPenToSquare,
                        color: ColorsTheme.black,
                        size: 20,
                      ),
                      bgColor: ColorsTheme.light,
                    )
                ],
              ),
            ],
          ),
        ));
  }
}
