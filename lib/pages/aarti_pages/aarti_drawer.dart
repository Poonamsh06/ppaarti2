import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pujapurohit/utils/aarti_details.dart';

import '../../models/samples.dart';

class NavigationDrawerWidget extends StatelessWidget {

  var item_no = 0.obs;
  NavigationDrawerWidget(int p_item_no) : item_no = p_item_no.obs;
  @override

  Widget build(BuildContext context) {
    // var widget;
    return
       Drawer(
        child: ListView.builder(                  shrinkWrap: true,
            itemCount: artis.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(6.0),
                child: InkWell(
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder:(context)
                   =>  AartiDetails(item_no.value)),
                   );
                  },
                  child: Card(
                    elevation: 7.0,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    color: const Color(0xffFFF3E2),
                    // margin: const EdgeInsets.all(16),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Expanded(
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                              ),
                              height: 65,
                              width: 65.0,
                              child: CircleAvatar(
                                // radius: 16,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(
                                  artis[index].imagePath,
                                ),
                              ),
                            ),

                            const SizedBox(
                              width: 25.0,
                            ),
                            // RichText(text: TextSpan())
                            Expanded(
                              child: Text(
                                artis[index].name,
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),






    );
  }}



      //   ListTile(
      //     leading: Icon(Icons.settings),
      //     title: Text('Account Settings'),
      //   ),
      //   ListTile(
      //       onTap:(){
              // if(scaffoldKey.currentState.isDrawerOpen){ //check if drawer is open
              //   Navigator.pop(context); //context of drawer is different
              // }
            // },
            // leading:Icon(Icons.close),
            // title: Text("Close Drawer")
  //       )
  //     ],
  //   ) ;
//   }
// }
// Widget buildMenuItem(
// {
//   required String text,
// required  imagePath,
//
// }
// ){
//   var index;
//   return ListTile(
//
//     title: Text(text,style: TextStyle(fontSize: 15),),
//
//
//
//   );
// }
