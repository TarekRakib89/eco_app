import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: Container(
                width: 80,
                color: Theme.of(context).primaryColor,
              ),
            ),
            body: Stack(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.h),
                  child: Column(
                    children: [
                      SizedBox(
                        child: TextField(
                          showCursor: true,
                          readOnly: true,
                          onTap: () {},
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 0.w, vertical: 0.h),
                            hintText: "SEARCH".tr,
                            hintStyle: const TextStyle(color: Colors.grey),
                            prefixIcon: SizedBox(
                              child: Padding(
                                  padding: EdgeInsets.all(12.r),
                                  child: const Icon(Icons.search)),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.r)),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.w),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.r)),
                              borderSide:
                                  BorderSide(width: 0.w, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      //banner
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 180.0,
                          viewportFraction: 1.0,
                        ),
                        items: [1, 2, 3, 4, 5].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0, vertical: 5.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'text $i',
                                      style: const TextStyle(fontSize: 16.0),
                                    ),
                                  ));
                            },
                          );
                        }).toList(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
