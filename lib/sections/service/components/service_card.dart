import 'package:appfunction/utils/sizes_helpers.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase/firebase.dart' as fb;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:appfunction/models/Service.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/constants.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({
    Key key,
    this.index,
  }) : super(key: key);

  final Service index;

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: Card(
        elevation: rElevation,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          height: 256,
          width: displayWidth(context)*0.7,
          decoration: BoxDecoration(
            color: widget.index.color,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 2.0, color: primaryDarkColor),
            boxShadow: [rDefaultCardShadow],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: duration,
                padding: EdgeInsets.all(rDefaultPadding * 1.5),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  
                ),
                child: Image.asset(
                  widget.index.image,
                  cacheWidth: 35,
                  cacheHeight: 35,
                  scale: 1,
                  height: 35,
                  width: 35,
                ),
                /*child: FutureBuilder(
                    future: downloadURLExample(widget.index.image),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        print(snapshot.data.toString());
                        return Container();
                      } else {
                        return Container();
                      }
                    },
                  )
                */
              ),
              SizedBox(height: rDefaultPadding),
              SelectableText(
                widget.index.title,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: primaryTextColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<String> downloadURLExample(String image) async {
    await Firebase.initializeApp();
    String url = "";
    try {
      var s = FirebaseStorage.instance.ref(image);
      url = s.getDownloadURL() as String;
    } catch (a) {
      //print(a.toString());
      try {
        fb.StorageReference ref = fb
            .initializeApp()
            .storage()
            .refFromURL("gs://appfunction-4a225.appspot.com");
        url = ref.child(image).name;
      } catch (e) {
        //print(e.toString());
      }
    }

    return url;
  }
}
