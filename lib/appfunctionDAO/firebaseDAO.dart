import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class FirestoreBD {
  Future<DocumentSnapshot> getAbout() async {
    await Firebase.initializeApp();
    var aboutCollection =
        await FirebaseFirestore.instance.collection("constants").doc("about").get();

    return aboutCollection;
  }

  Future<QuerySnapshot> getServices() async {
    await Firebase.initializeApp();
    var servicesCollection =
        await FirebaseFirestore.instance.collection("services").get();

    return servicesCollection;
  }

Future<QuerySnapshot> getWorks() async {
    await Firebase.initializeApp();
    var servicesCollection =
        await FirebaseFirestore.instance.collection("works").get();

    return servicesCollection;
  }
}
