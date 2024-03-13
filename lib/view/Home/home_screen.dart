import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:stroll_test_first/controller/home_controller.dart';
import 'package:stroll_test_first/core/color_const.dart';
import 'package:stroll_test_first/core/font_style.dart';
import 'package:stroll_test_first/core/svg_file.dart';
import 'package:stroll_test_first/utils/png_viewer.dart';
import 'package:stroll_test_first/utils/svg_button_widget.dart';
import 'package:stroll_test_first/utils/svg_viever.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.53,
                  color: Colors.black,
                  child: Image(
                    image: const AssetImage(StrolSvg.bgImgPng),
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.53,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.53,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.transparent, Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 1],
                      ),
                    ),
                  ),
                ),
                Column(

                  children: [
                    Gap(MediaQuery.of(context).size.height * 0.167),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 30.0,
                                offset: const Offset(0, 2.0),
                              ),
                            ],
                          ),
                          child: Text(
                            'Stroll Bonfire',
                            style: fontStyle.w700.s34.lightWhite.copyWith(
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 30.0,
                                  offset: const Offset(0, 2.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Gap(8),
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: CustomSvgbutton(
                            imgPath: StrolSvg.dropDownSvg,
                            size: 10,
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      const  CustomPngIcon(imgPath: StrolSvg.timerPng),
                       const Gap(5),
                        Text('22h 00m',style: fontStyle.lightWhite.w600.s12,),
                           const  Gap(8),
                       const CustomPngIcon(imgPath: StrolSvg.userPng),
                       const      Gap(5),
                        Text('103',style: fontStyle.lightWhite.w600.s12,),
                      ],
                    )
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                      width: double.infinity,
                      height: (MediaQuery.of(context).size.height * 0.6 -
                          MediaQuery.of(context).size.height * 0.53),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.black.withOpacity(0.7), Colors.black],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: const [0.0000001, 0.255],
                        ),
                      )),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    width: double.infinity,
                    height: (MediaQuery.of(context).size.height * 0.6 -
                        MediaQuery.of(context).size.height * 0.4767),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            left: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 22,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(
                                            0x4D000000), // Color with transparency
                                        offset: Offset(0, 14),
                                        blurRadius: 16,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Center(
                                        child: Text(
                                      'Angelina, 28',
                                      style: fontStyle.whiteColor.w700.s11,
                                    )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.666,
                                      child: Text(
                                          'What is your favorite time of the day?',
                                          style:
                                              fontStyle.whiteColor.w700.s20)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border:
                                    Border.all(width: 6, color: Colors.black),
                                image: const DecorationImage(
                                    image: AssetImage(StrolSvg.profilePng))),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                const Gap(5),
                Text(
                  '“Mine is definitely the peace in the morning.”',
                  style: italicFontStyle.w400.s12.quteTextColor,
                ),
                Consumer<HomeController>(builder: (context, controller, _) {
                  return GridView.count(
                      padding: EdgeInsets.zero,
                      crossAxisCount: 2,
                      childAspectRatio: (166 / 69),
                      controller: ScrollController(keepScrollOffset: false),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: controller.answrLit.map((value) {
                        return Padding(
                            padding: const EdgeInsets.all(8),
                            child: CupertinoButton(
                              minSize: 0,
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                controller.onSlectedAnsChnages(
                                    slectedAnsId: value.id);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border:
                                      controller.getSelectedAnser == value.id
                                          ? Border.all(
                                              color: StrollColors.selectedColor)
                                          : null,
                                  borderRadius: BorderRadius.circular(12),
                                  color: StrollColors.secondaryColor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            color:
                                                controller.getSelectedAnser ==
                                                        value.id
                                                    ? StrollColors.selectedColor
                                                    : null,
                                            borderRadius:
                                                BorderRadius.circular(13),
                                            border: Border.all(
                                                color: controller
                                                            .getSelectedAnser ==
                                                        value.id
                                                    ? StrollColors.selectedColor
                                                    : StrollColors.lightWhite,
                                                width: 1.8)),
                                        child: Text(
                                          value.optionName,
                                          style: fontStyle.lightWhite.w400.s12,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      const Gap(8),
                                      Expanded(
                                          child: Text(value.answer,
                                              style: fontStyle
                                                  .lightWhite.w400.s14))
                                    ],
                                  ),
                                ),
                              ),
                            ));
                      }).toList());
                }),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Text(
                            'Pick your option.See who has a similar mind.',
                            style: fontStyle.secondaryWhiteColor.s12.w400,
                          )),
                      Row(
                        children: [
                          CustomSvgbutton(
                            imgPath: StrolSvg.micSvg,
                            onPressed: () {},
                          ),
                          const Gap(5),
                          CustomSvgbutton(
                            imgPath: StrolSvg.rightArrowSvg,
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
