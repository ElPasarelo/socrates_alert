library socratesalert;

import 'package:flutter/material.dart';

class SocratesAlert {

  static Future simple({ @required BuildContext context}) {
    return showDialog(context: context, builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular((15)))),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("Socrate reste dubitatif"),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.network(
                  "https://img.over-blog-kiwi.com/0/87/36/68/20160905/ob_df7021_socrates.jpg",
                  height: 100,
                  width: 100,
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
                Expanded(
                  child: Text("Une erreur s'est produite, n'hésitez pas à relire toutes les informations"),
                )
              ],
            ),
            MaterialButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    });
  }
}

