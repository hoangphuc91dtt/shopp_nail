import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import '../constants/image_urls.dart';
import '../layouts/appbar_layout.dart';
import '../theme/colors_theme.dart';
import '../theme/typography_theme.dart';
import '../widgets/icon_button_widget.dart';
import '../widgets/text_button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _searchContro;
  List<Map<String, String>> manual = [
    {'image': ImageUrls.manual_1, 'title': 'Cách chăm sóc da mặt cho da đầu'},
    {'image': ImageUrls.manual_2, 'title': 'Kỹ thuật giữ nếp tóc sao cho không bị gãy'},
    {'image': ImageUrls.manual_3, 'title': 'Hoa tái giúp giữ da mặt mìn màng'}
  ];

  List<Map<String, dynamic>> store = [
    {
      'image': ImageUrls.store_1,
      'title': 'Tiệm Nails Mai Vy',
      'address': '123 Châu Thị Vĩnh Tề, Ngũ Hành Sơn, Mỹ An, TP Đà Nẵng',
      'assess': 4.7,
    },
    {
      'image': ImageUrls.store_2,
      'title': 'Tiệm Salon Lộc Phạm',
      'address': '123 Châu Thị Vĩnh Tề, Ngũ Hành Sơn, Mỹ An, TP Đà Nẵng',
      'assess': 4.7,
    },
    {
      'image': ImageUrls.store_3,
      'title': 'Spa mẹ và bé Nguyễn Hoài Ân',
      'address': '123 Châu Thị Vĩnh Tề, Ngũ Hành Sơn, Mỹ An, TP Đà Nẵng',
      'assess': 4.7,
    }
  ];

  @override
  void initState() {
    super.initState();

    _searchContro = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    late Size mq = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const AppBarLayout(
          avatarUrl: ImageUrls.avatar, title: 'Xin chào, Mai Anh ', iconFirst: FaIcon(FontAwesomeIcons.bell), isIconEdit: false, quantityNotify: 2),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          decoration: const BoxDecoration(color: ColorsTheme.light),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: TextField(
                        controller: _searchContro,
                        style: TypographyTheme.text2(),
                        decoration: const InputDecoration(
                          fillColor: ColorsTheme.white,
                          filled: true,
                          hintText: 'Tìm theo tên cửa hàng, dịch vụ',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const IconButtonWidget(
                    icon: FaIcon(
                      FontAwesomeIcons.magnifyingGlass,
                      color: ColorsTheme.white,
                      size: 20,
                    ),
                    width: 65,
                    borderRadius: 5,
                    bgColor: ColorsTheme.red,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: SizedBox(
                    height: mq.height * .21,
                    width: mq.width * 1,
                    child: Image(
                      image: AssetImage(ImageUrls.qc),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Danh mục',
                    style: TypographyTheme.heading5(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: ColorsTheme.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  const IconButtonWidget(
                                    icon: FaIcon(FontAwesomeIcons.calendarDays),
                                    width: 50,
                                    height: 50,
                                    borderRadius: 5,
                                    bgColor: Color(0xffFE86CF),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Đặt lịch Nails',
                                    style: TypographyTheme.text3(color: ColorsTheme.black),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  const IconButtonWidget(
                                    icon: FaIcon(FontAwesomeIcons.calendar),
                                    width: 50,
                                    height: 50,
                                    borderRadius: 5,
                                    bgColor: Color(0xffFE869A),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Đặt lịch Spa',
                                    style: TypographyTheme.text3(color: ColorsTheme.black),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  const IconButtonWidget(
                                    icon: FaIcon(FontAwesomeIcons.cloud),
                                    width: 50,
                                    height: 50,
                                    borderRadius: 5,
                                    bgColor: Color(0xffFFAA8F),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Đặt lịch Salon',
                                    style: TypographyTheme.text3(color: ColorsTheme.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  const IconButtonWidget(
                                    icon: FaIcon(
                                      FontAwesomeIcons.solidHeart,
                                      color: ColorsTheme.white,
                                    ),
                                    width: 50,
                                    height: 50,
                                    borderRadius: 5,
                                    bgColor: Color(0xffEEAE91),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Cửa hàng thân thiết',
                                    style: TypographyTheme.text3(color: ColorsTheme.black),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  const IconButtonWidget(
                                    icon: FaIcon(
                                      FontAwesomeIcons.headset,
                                      color: ColorsTheme.white,
                                    ),
                                    width: 50,
                                    height: 50,
                                    borderRadius: 5,
                                    bgColor: Color(0xffFFD18C),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Hỗ trợ khách hàng',
                                    style: TypographyTheme.text3(color: ColorsTheme.black),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  const IconButtonWidget(
                                    icon: FaIcon(
                                      FontAwesomeIcons.gamepad,
                                      color: ColorsTheme.white,
                                    ),
                                    width: 50,
                                    height: 50,
                                    borderRadius: 5,
                                    bgColor: Color(0xffEB7EFF),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Mini game',
                                    style: TypographyTheme.text3(color: ColorsTheme.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cẩm nang làm đẹp',
                      style: TypographyTheme.heading5(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: manual.map((item) {
                            return Row(
                              children: [
                                Container(
                                  width: 140,
                                  padding: const EdgeInsets.all(5),
                                  decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: ColorsTheme.white),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image(
                                          image: AssetImage(item['image']!),
                                          width: 130,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        item['title'] ?? '',
                                        style: TypographyTheme.text3(color: ColorsTheme.black),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            );
                          }).toList()),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButtonWidget(
                    style: TypographyTheme.heading5(color: ColorsTheme.red),
                    text: 'Tất cả dịch vụ',
                    bgColor: ColorsTheme.white,
                    borderRadius: 5,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButtonWidget(
                    style: TypographyTheme.heading5(color: ColorsTheme.red),
                    text: 'Spa/Massage',
                    bgColor: const Color(0xffF9E4E8),
                    borderRadius: 5,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButtonWidget(
                    style: TypographyTheme.heading5(color: ColorsTheme.red),
                    text: 'Nail Salon',
                    bgColor: const Color(0xffF9E4E8),
                    borderRadius: 5,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cửa hàng gần đây',
                          style: TypographyTheme.heading5(),
                        ),
                        TextButtonWidget(
                          style: TypographyTheme.text3(color: ColorsTheme.red),
                          text: 'Xem tất cả>',
                          bgColor: Colors.transparent,
                          vertical: 0,
                          horizontal: 0,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: store.map((item) {
                        return Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                color: ColorsTheme.white,
                              ),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: SizedBox(
                                      height: 80,
                                      width: 80,
                                      child: Image(
                                        image: AssetImage(item['image']),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 80,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            item['title'],
                                            style: TypographyTheme.heading6(),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const FaIcon(
                                                FontAwesomeIcons.locationDot,
                                                size: 18,
                                                color: ColorsTheme.red,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                // Adjust the width according to available space
                                                child: Text(
                                                  item['address'],
                                                  style: TypographyTheme.text3(),
                                                  softWrap: true,
                                                  overflow: TextOverflow.ellipsis, // Optionally add ellipsis for long text
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              const FaIcon(
                                                FontAwesomeIcons.solidStar,
                                                size: 15,
                                                color: ColorsTheme.yellow,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                item['assess'].toString(),
                                                style: TypographyTheme.heading6(),
                                              ),
                                              Text(
                                                ' (45 đánh giá)',
                                                style: TypographyTheme.text3(),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                          ],
                        );
                      }).toList(),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
