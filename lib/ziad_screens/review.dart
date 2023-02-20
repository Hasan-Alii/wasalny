import 'package:flutter/material.dart';
import '../functions/review_fun.dart';


class ReviewScreen extends StatefulWidget {
  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
        icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
    ),
    onPressed: () => Navigator.of(context).pop(),
    ),
    title: Text(
    'Trip Review',
    style: TextStyle(
    color: Colors.black,
    ),
    ),
    centerTitle: true,
    // actions: [
    // Padding(
    // padding: const EdgeInsets.only(right: 16.0),
    // child: Icon(
    // Icons.menu,
    // color: Colors.black,
    // ),
    // ),
    // ],
    ),
    body: ElevatedButton(
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30.0),
    ),
    ),
    onPressed: () {
      showRateBottomSheet(context);
    },
    child: Padding(
    padding: const EdgeInsets.symmetric(
    vertical: 16.0, horizontal: 32.0),
    child: Text(
    'Submit',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
    ),
    ),
    ),
    )

    );
  }
}
