
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:stroll_test_first/core/color_const.dart';
import 'package:stroll_test_first/core/font_style.dart';
import 'package:stroll_test_first/core/svg_file.dart';


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
                // Gradient Container
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

          Expanded(child: Container(
width: double.infinity,
            color: Colors.black,
            child: Column(
              
              children: [
                const Gap(5),
                Text('“Mine is definitely the peace in the morning.”',style: italicFontStyle.w400.s12.quteTextColor,),
             GridView.count(
              padding: EdgeInsets.zero,
          crossAxisCount: 2,
          childAspectRatio: (166 / 69),
          controller:  ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: answrLit.map(( value) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child:Container(
               
              decoration: BoxDecoration(
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
                      
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(color: StrollColors.lightWhite,width: 1.8)
                      ),
                
                      child: Text(value.option,style: fontStyle.lightWhite.w400.s12,textAlign: TextAlign.center,),
                    ),
                const Gap(8),
                    Expanded(child: Text(value.answer,style: fontStyle.lightWhite.w400.s14))
                  ],
                ),
              ),
              )
            );
          }).toList())
              ],
            ),
          ))
        ],
      ),
    );
  }
}


final List<AnasweList> answrLit = [
  AnasweList(answer: 'The peace in the early mornings', id: 1,option: 'A'),
  AnasweList(answer: 'The magical golden hours', id: 1,option: 'B'),
  AnasweList(answer: 'Wind - down time after dinners', id: 1,option: 'C'),
  AnasweList(answer: 'The serenity past midnight', id: 1,option: 'D'),
];


class AnasweList{

  int id;
  String answer;
  String option;
  AnasweList({required this.answer,required this.id,required this.option});
}