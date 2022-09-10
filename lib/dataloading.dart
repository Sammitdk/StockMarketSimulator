import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:stock_simulator_app/home_page.dart';

class DataLoading extends StatefulWidget {
  const DataLoading({Key? key}) : super(key: key);

  @override
  State<DataLoading> createState() => _DataLoadingState();
}

class _DataLoadingState extends State<DataLoading> {
  Map<String, dynamic> info = {};
  late bool exist;
  final String email = "avadhoot003@google.com";
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await getData();
      if(info != null){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomePage(info: info,)));
      }
    });
  }
  Future<void> getData() async {
    final DocumentReference documentRef = FirebaseFirestore.instance.doc('Users/$email');
    info = await documentRef.get().then((value) async{
      return info = value.data() as Map<String, dynamic>;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 500,
      width: 500,
    );
  }
}
