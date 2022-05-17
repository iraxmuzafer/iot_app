// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'contraints.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              margin: const EdgeInsets.all(0),
              color: const Color.fromARGB(94, 158, 158, 158),
              elevation: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 30, left: 30, top: 10, bottom: 10),
                    child: Row(
                      children: [
                        SizedBox(width: 40, child: LogoImage),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("Home",
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.white,
                                fontSize: 18))
                      ],
                    ),
                  ),
                  // Image.network("assets/icons/setting-lines.png")
                ],
              ),
            )
          ],
        ),
        SizedBox(width: 300, height: 150, child: imageSlider(context)),
      ]),
      decoration: BoxDecoration(gradient: bg),
    );
  }
}

Swiper imageSlider(context) {
  return Swiper(
    autoplay: true,
    itemBuilder: (BuildContext context, int index) {
      return Image.network(
        "http://cdn.home-designing.com/wp-content/uploads/2019/04/Lshaped-modern-sofa.jpg",
        fit: BoxFit.fitHeight,
      );
    },
    itemCount: 10,
    viewportFraction: 0.7,
    scale: 0.8,
  );
}
