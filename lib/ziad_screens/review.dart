import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ReviewScreen extends StatefulWidget {
  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    double rating = 0;
    // double tip = 0.0;
    // List<double> tipAmounts = [1.0, 2.0, 5.0, 10.0];
    // double customTip = 0.0;

    final commentController = TextEditingController();

    @override
    void dispose() {
      // dispose the controller when the widget is removed from the widget tree
      commentController.dispose();
      super.dispose();
    }


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
    body: Stack(
    children: [
    GoogleMap(initialCameraPosition: CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962),
      zoom: 14.0,
    ),
    // add your google maps configurations here
    ),
    Positioned.fill(
    top: 200,
    child: Container(
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(24.0),
    topRight: Radius.circular(24.0),
    ),
    ),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: SingleChildScrollView(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      SizedBox(height: 16.0),
      Text(
      'How was your trip?',
      style: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      ),
      ),
      SizedBox(height: 16.0),
      Text(
      'Rate your trip experience and help us\nimprove our service',
      textAlign: TextAlign.center,
      ),
      SizedBox(height: 32.0),

      RatingBar.builder(
      initialRating: rating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
      Icons.star,
      color: Colors.yellow,
      ),
      onRatingUpdate: (newRating) {
      rating = newRating;
      },
      ),
      SizedBox(height: 16.0),
      // Text(
      // 'Tap a star to rate',
      // style: TextStyle(
      // color: Colors.grey,
      // fontSize: 14.0,
      // ),
      // ),
      SizedBox(height: 32.0),
      TextField(
        controller: commentController,
      maxLines: 4,
      decoration: InputDecoration(
      hintText: 'Add a comment',
      contentPadding: EdgeInsets.symmetric(
      vertical: 16.0,
      horizontal: 24.0,
      ),
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.0),
      ),
      ),
      ),
      SizedBox(height: 16.0),

        // GridView.builder(
        //   padding: EdgeInsets.zero,
        //   shrinkWrap: true,
        //   itemCount: tipAmounts.length + 1,
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 4,
        //     crossAxisSpacing: 8.0,
        //     mainAxisSpacing: 8.0,
        //     childAspectRatio: 1.0,
        //   ),
        //   itemBuilder: (BuildContext context, int index) {
        //     if (index == tipAmounts.length) {
        //       return TextField(
        //         decoration: InputDecoration(
        //           hintText: 'Enter a custom amount',
        //           contentPadding: EdgeInsets.symmetric(
        //             vertical: 16.0,
        //             horizontal: 24.0,
        //           ),
        //           border: OutlineInputBorder(
        //             borderRadius: BorderRadius.circular(16.0),
        //           ),
        //         ),
        //         keyboardType: TextInputType.number,
        //         onChanged: (value) {
        //           setState(() {
        //             customTip = double.parse(value);
        //           });
        //         },
        //       );
        //     } else {
        //       return ElevatedButton(
        //         style: ElevatedButton.styleFrom(
        //           minimumSize: Size(0, 0),
        //           padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        //           backgroundColor: Colors.grey[300],
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(16.0),
        //           ),
        //         ),
        //         onPressed: () {
        //           setState(() {
        //             customTip = 0.0;
        //           });
        //         },
        //         child: Text(
        //           '\$${tipAmounts[index]}',
        //           style: TextStyle(
        //             color: Colors.black,
        //             fontWeight: FontWeight.bold,
        //             fontSize: 20.0,
        //             ),
        //           ),
        //       );
        //     }
        //   },
        // ),

      SizedBox(height: 16),
      ElevatedButton(
      style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
      ),
      ),
      onPressed: () {
      // TODO: Implement your on-pressed action here
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
      ]
      ),
    )
    )
    )]));
  }
}
