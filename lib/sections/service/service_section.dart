import 'package:appfunction/appfunctionDAO/firebaseDAO.dart';
import 'package:appfunction/utils/sizes_helpers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:appfunction/components/section_title.dart';
import 'package:appfunction/utils/constants.dart';
import 'package:appfunction/models/Service.dart';

import 'components/service_card.dart';

class ServiceSection extends StatefulWidget {
  @override
  _ServiceSectionState createState() => _ServiceSectionState();
}

class _ServiceSectionState extends State<ServiceSection> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: FirestoreBD().getServices(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: Container(height: 256),
          );
        } else {
          var services = snapshot.data.docs.map((doc) {
            var service = Service(
              title: doc.get("title"),
              image: doc.get("icon"),
              color: primaryLightColor,
            );

            return service;
          }).toList();
          return Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: SectionTitle(
                    color: Color(0xFFFF0000),
                    title: "Serviços Oferecidos",
                    subTitle: "",
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: displayWidth(context),
                      child: CarouselSlider.builder(
                        itemCount: services.length,
                        itemBuilder: (ctx, index, realIdx) {
                          return ServiceCard(
                            index: services[index],
                          );
                        },
                        carouselController: _controller,
                        options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          },
                          height: 256,
                          autoPlayInterval: Duration(seconds: 5),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          scrollDirection: Axis.horizontal,
                          enlargeCenterPage: true,
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                          aspectRatio: 2.0,
                          autoPlayAnimationDuration: Duration(seconds: 2),
                          viewportFraction: 0.5,
                          autoPlay: true,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: services.map((work) {
                        int index = services.indexOf(work);
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == index
                                ? Color.fromRGBO(0, 0, 0, 0.9)
                                : Color.fromRGBO(0, 0, 0, 0.4),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
