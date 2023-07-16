
import 'package:flutter/material.dart';

class LogoutScreen extends StatefulWidget {

  @override
  State<LogoutScreen> createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {
  @override
  Widget build(BuildContext context) {
    bool _checkbox = false;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Center(
          child:Text('خروج الركاب') ,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:
            [
              Text('هذه المحطة',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),

              Stack(
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
                            child: Text('Hosam',style: TextStyle(
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
                              child: Center(child: Text('11',style: TextStyle(color: Colors.white),),),
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
                        Icon(Icons.airline_seat_recline_extra,color: Colors.black,),
                        Text('عدد المقاعد 1',style: TextStyle(
                          color: Colors.black,fontSize: 13,
                        ),),
                        Icon(Icons.attach_money,color: Colors.green,size: 20,),
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
                              return AlertDialog(title: Text('هل انت متأكد انك تريد تأخير العميل؟'),
                                content: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              topLeft: Radius.circular(20)
                                          ),
                                          color: Colors.green,
                                        ),
                                        child: MaterialButton(onPressed:()
                                        {

                                        },
                                          child: Center(child: Text('تأكيد'
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
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(20),
                                              bottomRight: Radius.circular(20)
                                          ),
                                          color: Colors.red,
                                        ),
                                        child: MaterialButton(onPressed:()
                                        {

                                        },
                                          child: Center(child: Text('الغاء'
                                            ,style: TextStyle(color: Colors.white),),),
                                        ),
                                      ),
                                    ),
                                  ],),
                              );
                            });
                          },
                            child: Center(child: Text('تأخير'
                              ,style: TextStyle(color: Colors.white),),),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.green,
                          child: MaterialButton(onPressed:()
                          {
                            showDialog(context: context, builder: (context)
                            {
                              return AlertDialog(title: Row(
                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.person,color: Colors.white,),
                                  ),
                                  SizedBox(width: 10,),
                                  Text('Hosam',style: TextStyle(fontSize: 15),),
                                  SizedBox(width: 50,),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    color: Colors.grey[700],
                                    child: Center(child: Text('11',style: TextStyle(color: Colors.white),),),
                                  ),
                                ]
                                ,),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 20,),
                                    Row(
                                      children: [
                                        Text('عدد الكراسي',style: TextStyle(fontSize: 15),),
                                        Expanded(child: Container()),
                                        Text('1كرسي',style: TextStyle(fontSize: 15,color: Colors.green),)
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      children: [
                                        Text('تكلفة الرحلة',style: TextStyle(fontSize: 15),),
                                        Expanded(child: Container()),
                                        Text('1 ج.م',style: TextStyle(fontSize: 15,color: Colors.green),)
                                      ],
                                    ),
                                    SizedBox(height: 40,),
                                    Container(height: 1,width: double.infinity,color:Colors.grey),
                                    SizedBox(height: 20,),
                                    Row(
                                      children: [
                                        Text('التكلفة الإجمالية',style: TextStyle(fontSize: 15),),
                                        Expanded(child: Container()),
                                        Text('1 ج.م',style: TextStyle(fontSize: 15,color: Colors.green),)
                                      ],
                                    ),
                                    SizedBox(height: 20,),
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
                                                return AlertDialog(title: Row(
                                                  children: [
                                                    CircleAvatar(
                                                      child: Icon(Icons.person,color: Colors.white,),
                                                    ),
                                                    SizedBox(width: 10,),
                                                    Text('Customer Hosam',style: TextStyle(fontSize: 15),),
                                                    SizedBox(width: 50,),
                                                    Container(
                                                      height: 30,
                                                      width: 30,
                                                      color: Colors.grey[700],
                                                      child: Center(child: Text('11',style: TextStyle(color: Colors.white),),),
                                                    ),
                                                  ]
                                                  ,),
                                                  content: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Checkbox(value: false, onChanged:(value)
                                                          {
                                                            setState(() {
                                                              value =!_checkbox;
                                                            });
                                                          }),
                                                          Text('العميل رفض دفع المبلغ المطلوب'
                                                          ,style: TextStyle(fontSize: 14),),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Checkbox(value: false, onChanged:(value)
                                                          {
                                                            setState(() {
                                                              value =!_checkbox;
                                                            });
                                                          }),
                                                          Text('العميل دفع أقل من الأجرة'
                                                            ,style: TextStyle(fontSize: 14),),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Checkbox(value: false, onChanged:(value)
                                                          {
                                                            setState(() {
                                                              value =!_checkbox;
                                                            });
                                                          }),
                                                          Text('لا يوجد عملات صغيرة لإعطاء الباقي'
                                                            ,style: TextStyle(fontSize: 14),),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Checkbox(value: false, onChanged:(value)
                                                          {
                                                            setState(() {
                                                              value =!_checkbox;
                                                            });
                                                          }),
                                                          Text('تسجيل دخول العميل الخطأ'
                                                            ,style: TextStyle(fontSize: 14),),
                                                        ],
                                                      ),
                                                      SizedBox(height: 30,),
                                                      Container(height :40,width : double.infinity,
                                                      color: Colors.red,
                                                      child:MaterialButton(onPressed: ()
                                                      {

                                                      },child: Text('رفض الدفع',style: TextStyle(color: Colors.white),),)
                                                        )
                                                    ],
                                                  )
                                                );
                                              });
                                            },
                                              child: Center(child: Text('رفض الدفع'
                                                ,style: TextStyle(color: Colors.white),),),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Expanded(
                                          child: Container(
                                            height: 50,
                                            width: double.infinity,
                                            color: Colors.green,
                                            child: MaterialButton(onPressed:()
                                            {
                                              showDialog(context: context, builder: (context)
                                              {
                                                return AlertDialog(
                                                  content: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      Center(child: Text('1.0',style: TextStyle(fontSize: 50),)),
                                                      SizedBox(height: 30,),
                                                      OutlinedButton(onPressed: ()
                                                      {

                                                      }, child: Text('تأكيد المبلغ'))
                                                    ],
                                                  ),
                                                );
                                              });
                                            },
                                              child: Center(child: Text('تحصيل الأجرة'
                                                ,style: TextStyle(color: Colors.white),),),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],),
                              );
                            });
                          },
                            child: Center(child: Text('تسجيل الخروج'
                              ,style: TextStyle(color: Colors.white),),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Stack(
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
                              child: Text('Hosam',style: TextStyle(
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
                                  child: Center(child: Text('11',style: TextStyle(color: Colors.white),),),
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
                        Icon(Icons.airline_seat_recline_extra,color: Colors.black,),
                        Text('عدد المقاعد 1',style: TextStyle(
                          color: Colors.black,fontSize: 13,
                        ),),
                        Icon(Icons.attach_money,color: Colors.green,size: 20,),
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
                              return AlertDialog(title: Text('هل انت متأكد انك تريد تأخير العميل؟'),
                                content: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              topLeft: Radius.circular(20)
                                          ),
                                          color: Colors.green,
                                        ),
                                        child: MaterialButton(onPressed:()
                                        {

                                        },
                                          child: Center(child: Text('تأكيد'
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
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(20),
                                              bottomRight: Radius.circular(20)
                                          ),
                                          color: Colors.red,
                                        ),
                                        child: MaterialButton(onPressed:()
                                        {

                                        },
                                          child: Center(child: Text('الغاء'
                                            ,style: TextStyle(color: Colors.white),),),
                                        ),
                                      ),
                                    ),
                                  ],),
                              );
                            });
                          },
                            child: Center(child: Text('تأخير'
                              ,style: TextStyle(color: Colors.white),),),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.green,
                          child: MaterialButton(onPressed:()
                          {
                            showDialog(context: context, builder: (context)
                            {
                              return AlertDialog(title: Row(
                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.person,color: Colors.white,),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(' Hosam',style: TextStyle(fontSize: 15),),
                                  SizedBox(width: 50,),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    color: Colors.grey[700],
                                    child: Center(child: Text('11',style: TextStyle(color: Colors.white),),),
                                  ),
                                ]
                                ,),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 20,),
                                    Row(
                                      children: [
                                        Text('عدد الكراسي',style: TextStyle(fontSize: 15),),
                                        Expanded(child: Container()),
                                        Text('1كرسي',style: TextStyle(fontSize: 15,color: Colors.green),)
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      children: [
                                        Text('تكلفة الرحلة',style: TextStyle(fontSize: 15),),
                                        Expanded(child: Container()),
                                        Text('1 ج.م',style: TextStyle(fontSize: 15,color: Colors.green),)
                                      ],
                                    ),
                                    SizedBox(height: 40,),
                                    Container(height: 1,width: double.infinity,color:Colors.grey),
                                    SizedBox(height: 20,),
                                    Row(
                                      children: [
                                        Text('التكلفة الإجمالية',style: TextStyle(fontSize: 15),),
                                        Expanded(child: Container()),
                                        Text('1 ج.م',style: TextStyle(fontSize: 15,color: Colors.green),)
                                      ],
                                    ),
                                    SizedBox(height: 20,),
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
                                                return AlertDialog(title: Row(
                                                  children: [
                                                    CircleAvatar(
                                                      child: Icon(Icons.person,color: Colors.white,),
                                                    ),
                                                    SizedBox(width: 10,),
                                                    Text('Customer Hosam',style: TextStyle(fontSize: 15),),
                                                    SizedBox(width: 50,),
                                                    Container(
                                                      height: 30,
                                                      width: 30,
                                                      color: Colors.grey[700],
                                                      child: Center(child: Text('11',style: TextStyle(color: Colors.white),),),
                                                    ),
                                                  ]
                                                  ,),
                                                    content: Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Checkbox(value: false, onChanged:(value)
                                                            {
                                                              setState(() {
                                                                value =!_checkbox;
                                                              });
                                                            }),
                                                            Text('العميل رفض دفع المبلغ المطلوب'
                                                              ,style: TextStyle(fontSize: 14),),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Checkbox(value: false, onChanged:(value)
                                                            {
                                                              setState(() {
                                                                value =!_checkbox;
                                                              });
                                                            }),
                                                            Text('العميل دفع أقل من الأجرة'
                                                              ,style: TextStyle(fontSize: 14),),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Checkbox(value: false, onChanged:(value)
                                                            {
                                                              setState(() {
                                                                value =!_checkbox;
                                                              });
                                                            }),
                                                            Text('لا يوجد عملات صغيرة لإعطاء الباقي'
                                                              ,style: TextStyle(fontSize: 14),),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Checkbox(value: false, onChanged:(value)
                                                            {
                                                              setState(() {
                                                                value =!_checkbox;
                                                              });
                                                            }),
                                                            Text('تسجيل دخول العميل الخطأ'
                                                              ,style: TextStyle(fontSize: 14),),
                                                          ],
                                                        ),
                                                        SizedBox(height: 30,),
                                                        Container(height :40,width : double.infinity,
                                                            color: Colors.red,
                                                            child:MaterialButton(onPressed: ()
                                                            {

                                                            },child: Text('رفض الدفع',style: TextStyle(color: Colors.white),),)
                                                        )
                                                      ],
                                                    )
                                                );
                                              });
                                            },
                                              child: Center(child: Text('رفض الدفع'
                                                ,style: TextStyle(color: Colors.white),),),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Expanded(
                                          child: Container(
                                            height: 50,
                                            width: double.infinity,
                                            color: Colors.green,
                                            child: MaterialButton(onPressed:()
                                            {
                                              showDialog(context: context, builder: (context)
                                              {
                                                return AlertDialog(
                                                  content: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      Center(child: Text('1.0',style: TextStyle(fontSize: 50),)),
                                                      SizedBox(height: 30,),
                                                      OutlinedButton(onPressed: ()
                                                      {

                                                      }, child: Text('تأكيد المبلغ'))
                                                    ],
                                                  ),
                                                );
                                              });
                                            },
                                              child: Center(child: Text('تحصيل الأجرة'
                                                ,style: TextStyle(color: Colors.white),),),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],),
                              );
                            });
                          },
                            child: Center(child: Text('تسجيل الخروج'
                              ,style: TextStyle(color: Colors.white),),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Stack(
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
                              child: Text('Hosam',style: TextStyle(
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
                                  child: Center(child: Text('11',style: TextStyle(color: Colors.white),),),
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
                        Icon(Icons.airline_seat_recline_extra,color: Colors.black,),
                        Text('عدد المقاعد 1',style: TextStyle(
                          color: Colors.black,fontSize: 13,
                        ),),
                        Icon(Icons.attach_money,color: Colors.green,size: 20,),
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
                              return AlertDialog(title: Text('هل انت متأكد انك تريد تأخير العميل؟'),
                                content: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              topLeft: Radius.circular(20)
                                          ),
                                          color: Colors.green,
                                        ),
                                        child: MaterialButton(onPressed:()
                                        {

                                        },
                                          child: Center(child: Text('تأكيد'
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
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(20),
                                              bottomRight: Radius.circular(20)
                                          ),
                                          color: Colors.red,
                                        ),
                                        child: MaterialButton(onPressed:()
                                        {

                                        },
                                          child: Center(child: Text('الغاء'
                                            ,style: TextStyle(color: Colors.white),),),
                                        ),
                                      ),
                                    ),
                                  ],),
                              );
                            });
                          },
                            child: Center(child: Text('تأخير'
                              ,style: TextStyle(color: Colors.white),),),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.green,
                          child: MaterialButton(onPressed:()
                          {
                            showDialog(context: context, builder: (context)
                            {
                              return AlertDialog(title: Row(
                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.person,color: Colors.white,),
                                  ),
                                  SizedBox(width: 10,),
                                  Text('Hosam',style: TextStyle(fontSize: 15),),
                                  SizedBox(width: 50,),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    color: Colors.grey[700],
                                    child: Center(child: Text('11',style: TextStyle(color: Colors.white),),),
                                  ),
                                ]
                                ,),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 20,),
                                    Row(
                                      children: [
                                        Text('عدد الكراسي',style: TextStyle(fontSize: 15),),
                                        Expanded(child: Container()),
                                        Text('1 كرسي',style: TextStyle(fontSize: 15,color: Colors.green),)
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      children: [
                                        Text('تكلفة الرحلة',style: TextStyle(fontSize: 15),),
                                        Expanded(child: Container()),
                                        Text('1 ج.م',style: TextStyle(fontSize: 15,color: Colors.green),)
                                      ],
                                    ),
                                    SizedBox(height: 40,),
                                    Container(height: 1,width: double.infinity,color:Colors.grey),
                                    SizedBox(height: 20,),
                                    Row(
                                      children: [
                                        Text('التكلفة الإجمالية',style: TextStyle(fontSize: 15),),
                                        Expanded(child: Container()),
                                        Text('1 ج.م',style: TextStyle(fontSize: 15,color: Colors.green),)
                                      ],
                                    ),
                                    SizedBox(height: 20,),
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
                                                return AlertDialog(title: Row(
                                                  children: [
                                                    CircleAvatar(
                                                      child: Icon(Icons.person,color: Colors.white,),
                                                    ),
                                                    SizedBox(width: 10,),
                                                    Text('Customer Hosam',style: TextStyle(fontSize: 15),),
                                                    SizedBox(width: 50,),
                                                    Container(
                                                      height: 30,
                                                      width: 30,
                                                      color: Colors.grey[700],
                                                      child: Center(child: Text('11',style: TextStyle(color: Colors.white),),),
                                                    ),
                                                  ]
                                                  ,),
                                                    content: Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Checkbox(value: false, onChanged:(value)
                                                            {
                                                              setState(() {
                                                                value =!_checkbox;
                                                              });
                                                            }),
                                                            Text('العميل رفض دفع المبلغ المطلوب'
                                                              ,style: TextStyle(fontSize: 14),),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Checkbox(value: false, onChanged:(value)
                                                            {
                                                              setState(() {
                                                                value =!_checkbox;
                                                              });
                                                            }),
                                                            Text('العميل دفع أقل من الأجرة'
                                                              ,style: TextStyle(fontSize: 14),),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Checkbox(value: false, onChanged:(value)
                                                            {
                                                              setState(() {
                                                                value =!_checkbox;
                                                              });
                                                            }),
                                                            Text('لا يوجد عملات صغيرة لإعطاء الباقي'
                                                              ,style: TextStyle(fontSize: 14),),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Checkbox(value: false, onChanged:(value)
                                                            {
                                                              setState(() {
                                                                value =!_checkbox;
                                                              });
                                                            }),
                                                            Text('تسجيل دخول العميل الخطأ'
                                                              ,style: TextStyle(fontSize: 14),),
                                                          ],
                                                        ),
                                                        SizedBox(height: 30,),
                                                        Container(height :40,width : double.infinity,
                                                            color: Colors.red,
                                                            child:MaterialButton(onPressed: ()
                                                            {

                                                            },child: Text('رفض الدفع',style: TextStyle(color: Colors.white),),)
                                                        )
                                                      ],
                                                    )
                                                );
                                              });
                                            },
                                              child: Center(child: Text('رفض الدفع'
                                                ,style: TextStyle(color: Colors.white),),),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Expanded(
                                          child: Container(
                                            height: 50,
                                            width: double.infinity,
                                            color: Colors.green,
                                            child: MaterialButton(onPressed:()
                                            {
                                              showDialog(context: context, builder: (context)
                                              {
                                                return AlertDialog(
                                                  content: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      Center(child: Text('1.0',style: TextStyle(fontSize: 50),)),
                                                      SizedBox(height: 30,),
                                                      OutlinedButton(onPressed: ()
                                                      {

                                                      }, child: Text('تأكيد المبلغ'))
                                                    ],
                                                  ),
                                                );
                                              });
                                            },
                                              child: Center(child: Text('تحصيل الأجرة'
                                                ,style: TextStyle(color: Colors.white),),),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],),
                              );
                            });
                          },
                            child: Center(child: Text('تسجيل الخروج'
                              ,style: TextStyle(color: Colors.white),),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text('محطات أخرى',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Stack(
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
                              child: Text('Hosam',style: TextStyle(
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
                                  child: Center(child: Text('11',style: TextStyle(color: Colors.white),),),
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
                        Icon(Icons.airline_seat_recline_extra,color: Colors.black,),
                        Text('عدد المقاعد 1',style: TextStyle(
                          color: Colors.black,fontSize: 13,
                        ),),
                        Icon(Icons.attach_money,color: Colors.green,size: 20,),
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
                  Expanded(
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      color: Colors.green,
                      child: MaterialButton(onPressed:()
                      {
                        showDialog(context: context, builder: (context)
                        {
                          return AlertDialog(title: Text('هل انت متأكد انك تريد خروج العميل؟'),
                            content: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          topLeft: Radius.circular(20)
                                      ),
                                      color: Colors.green,
                                    ),
                                    child: MaterialButton(onPressed:()
                                    {

                                    },
                                      child: Center(child: Text('تأكيد'
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
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20)
                                      ),
                                      color: Colors.red,
                                    ),
                                    child: MaterialButton(onPressed:()
                                    {

                                    },
                                      child: Center(child: Text('الغاء'
                                        ,style: TextStyle(color: Colors.white),),),
                                    ),
                                  ),
                                ),
                              ],),
                          );
                        });
                      },
                        child: Center(child: Text('تسجيل الخروج'
                          ,style: TextStyle(color: Colors.white),),),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
