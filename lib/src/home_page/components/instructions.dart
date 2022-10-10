

import 'package:flutter/material.dart';
import 'package:plant_disease_detector/constants/constants.dart';

class InstructionsSection extends SliverFixedExtentList {
  InstructionsSection(Size size, {Key? key})
      : super(
          key: key,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(
                    (0.061 * size.height * 0.26),
                    (0.071 * size.height * 0.26),
                    (0.076 * size.height * 0.26),
                    (0.061 * size.height * 0.26)),
                child: Container(
                  height: size.height * 0.26,
                  decoration: BoxDecoration(
                    color: kSecondary,
                    borderRadius:
                        BorderRadius.circular((0.061 * size.height * 0.26)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB((0.025 * size.height * 0.26),
                        0, 0, (0.025 * size.height * 0.26)),
                    child: ListView(
                      children: const [
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: kBlack,
                              child: Text(
                                '1',
                                style: TextStyle(color: kWhite),
                              ),
                            ),
                            title: Text(
                              'Tomar/Seleccionar una foto de una planta tocando el botón de la cámara a continuación',
                              style: TextStyle(color: kWhite),
                            )),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: kBlack,
                            child: Text(
                              '2',
                              style: TextStyle(color: kWhite),
                            ),
                          ),
                          title: Text(
                              'Espere un momento antes de que pueda obtener una sugerencia de la planta.',
                              style: TextStyle(color: kWhite)),
                        ),
                        ListTile(
                          title: Text(''),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            childCount: 1,
          ),
          itemExtent: size.height * 0.26,
        );
}
