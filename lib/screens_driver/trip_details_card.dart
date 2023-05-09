import 'package:flutter/material.dart';

import 'maher screen.dart';

class TicketsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children:
      [
        Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person,color: Colors.white,),
                  ),
                  SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 22),
                    child: Text('محمد',style: TextStyle(
                      color: Colors.black,fontSize: 14,
                    ),),
                  ),
                  Expanded(child: Container()),
                  Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Container(
                        height: 50,
                        width: 50,
                        color: Colors.grey[600],
                        child: Center(child: Text('1',style: TextStyle(color: Colors.white),),),
                      )
                  )

                ],
              ),
            ),),),
        Padding(
          padding: const EdgeInsets.only(left: 60,bottom:74),
          child: Row(
            children:
            [
              Icon(Icons.airline_seat_recline_normal,color: Colors.black,),
              Text('عدد المقاعد 1',style: TextStyle(
                color: Colors.black,fontSize: 13,
              ),),
              Text('كاش',style: TextStyle(
                color: Colors.black,fontSize: 13,
              ),),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 60,left: 10,right: 10),
          child: Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey[300],
          ),
        ),
        Row(
          children:
          [
            Expanded(
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.redAccent,
                child: MaterialButton(onPressed:()
                {
                  showDialog(context: context, builder: (context)
                  {
                    return AlertDialog(title: Text('هل انت متأكد ان هذا الراكب غير موجود؟'),
                      content: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.red,
                              ),
                              child: MaterialButton(onPressed:() {},
                                child: Center(child: Text('الغاء'
                                  ,style: TextStyle(color: Colors.white),),),
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Expanded(
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.green,
                              ),
                              child: MaterialButton(onPressed:() {},
                                child: Center(child: Text('تأكيد'
                                  ,style: TextStyle(color: Colors.white),),),
                              ),
                            ),
                          ),

                        ],),
                    );
                  });
                },
                  child: Center(child: Text('غير موجود'
                    ,style: TextStyle(color: Colors.white),),),
                ),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.blue,
                child: MaterialButton(onPressed:()
                {
                  showDialog(context: context, builder: (context)
                  {
                    return AlertDialog(title: Text('هل انت متأكد انك تريد تسجيل دخول هذا الراكب؟'),
                      content: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.red,
                              ),
                              child: MaterialButton(onPressed:() {},
                                child: Center(child: Text('الغاء'
                                  ,style: TextStyle(color: Colors.white),),),
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Expanded(
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                              ),
                              child: MaterialButton(onPressed:() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MaherScreen()),
                                );
                              },
                                child: Center(child: Text('تأكيد'
                                  ,style: TextStyle(color: Colors.white),),),
                              ),
                            ),
                          ),
                        ],),
                    );
                  });
                },
                  child: Center(child: Text('تسجيل دخول'
                    ,style: TextStyle(color: Colors.white),),),
                ),
              ),
            ),
          ],
        ),
      ],
    );

  }
}
