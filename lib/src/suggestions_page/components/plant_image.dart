import 'dart:io';

import 'package:flutter/material.dart';

class PlantImage extends StatelessWidget {
  const PlantImage({Key? key, required this.size, required this.imageFile})
      : super(key: key);

  final Size size;
  final File imageFile;

  @override
  Widget build(BuildContext context) {
    /**
     *  return CircleAvatar(
      radius: size.width * 0.3,
      backgroundImage: Image.file(imageFile, fit: BoxFit.cover,).image,
    );
     * */

    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                    ],
                  ),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                image: DecorationImage(
                  // colorFilter: ColorFiltered(colorFilter: C),
                  scale: 0.1,
                  fit: BoxFit.cover,
                  image: Image.file(
                    imageFile,
                    fit: BoxFit.cover,
                  ).image,
                  
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
