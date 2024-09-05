
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:facebook/dashboard/dashboard.dart';
import 'package:facebook/resourse.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final PrimaryColor =  Color.fromARGB(255, 84, 48, 214);
final SecondaryColor = Color.fromARGB(255, 224, 187, 5);

class Facebook extends StatefulWidget {
  Facebook({required this.flagImagePath, Key? key}) : super(key: key);
  String flagImagePath;

  @override
  State<Facebook> createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
   int _selectedIndex = 0;

    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    border: Border.all( width: 3, color: Color.fromARGB(255, 224, 187, 5)),
                    borderRadius: BorderRadius.circular(300),
                  ),
                  
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7, top: 7),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/mr edrik.jpg'),
                    radius: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 41, top: 42),
                  child: Icon(Icons.verified, size: 25, color: Color.fromARGB(255, 84, 48, 214),),
                )
              ],
              
            ),
            
            Column(
              children: [
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text('Hello',style: TextStyle(fontSize: 17.sp),),
              ),
              Text('Fonguong', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.sp),)
              ],
            ),
      
            
          ],
        ),
        actions: [
            Stack(
              children: [
              
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 230, 229, 229),
                  borderRadius: BorderRadius.circular(300),
                ),
              ),
                GestureDetector(
                          onTap: (){
                           ShowDialog(context, (selectedFlag) {
                            setState(() {
                              widget.flagImagePath = selectedFlag;
                            });
                          });
                          },
                       child:  Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: CircleAvatar(
                backgroundImage: AssetImage(widget.flagImagePath),
              ),
            ),
                         ),
              ],
            ),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.01,),
             Stack(
              children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 230, 229, 229),
                  borderRadius: BorderRadius.circular(300),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Icon(Icons.notifications, color: PrimaryColor,size: 30, )
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: CircleAvatar(child: Text('1', 
              style: TextStyle(color: Colors.white, fontSize: 18.sp),
              ),
              backgroundColor: PrimaryColor,
              radius: 15,
              ),
            ),
              
              ],
            ),
        ],
        toolbarHeight: 100,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
         scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).width*0.04,),
               Row(
           children: [
             Container(
               height: 50,
               width: 280,
               decoration: BoxDecoration(
                 border: Border.all(width: 2, color: PrimaryColor),
                 borderRadius: BorderRadius.circular(10)
               ),
               child: Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child: Row(
                   children: [
                     Icon(Icons.search,color: PrimaryColor,size: 25,),
                     Expanded(
                       child: TextField(
                         style: TextStyle(fontWeight: FontWeight.bold, color: SecondaryColor),
                         decoration: InputDecoration(
                           hintText: 'Search',
                           border: InputBorder.none,
                           hintStyle: TextStyle(fontWeight: FontWeight.bold, color: SecondaryColor),
                         ),
                       ),
                     ),
                   
                   ],
                 ),
               ),
             ),
                SizedBox(width: MediaQuery.sizeOf(context).width*0.01,),
                     Container(
                       height: 50,
                       width: 50,
                       decoration: BoxDecoration(
                         color: PrimaryColor,
                         borderRadius: BorderRadius.circular(10),
                       ),
                     )
           ],
                      ),
          SizedBox(height: MediaQuery.sizeOf(context).width*0.06,),
                     Row(
          children: [
            Text('Popular Trends', style: TextStyle(color: PrimaryColor, fontWeight: FontWeight.bold, fontSize: 20.sp),),
            
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.34,),
                     Text('See All', style: TextStyle(color: SecondaryColor, fontWeight: FontWeight.bold, fontSize: 20.sp),) ,
          ],
                     ) ,
                      SizedBox(height: MediaQuery.sizeOf(context).width*0.06,),
                      Padding(
           padding: const EdgeInsets.only(left: 15),
           child: SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                     Column(
                       children: [
                         CircleAvatar(
                                     backgroundImage: AssetImage('assets/white head phone.jpg'),
                                     radius: 30,
                                    ),
                                    SizedBox(height: MediaQuery.sizeOf(context).width*0.03,),
                                   Text('Science', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.sp),),
                        ]),
             SizedBox(width: MediaQuery.sizeOf(context).width*0.05,),
              Column(
                       children: [
                         CircleAvatar(
                                     backgroundImage: AssetImage('assets/white ear pot.jpg'),
                                     radius: 30,
                                    ),
                                    SizedBox(height: MediaQuery.sizeOf(context).width*0.03,),
             Text('Technology', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.sp),),]),
              SizedBox(width: MediaQuery.sizeOf(context).width*0.05,),
              Column(
                       children: [
                         CircleAvatar(
                                     backgroundImage: AssetImage('assets/car.jpg'),
                                     radius: 30,
                                    ),
                                    SizedBox(height: MediaQuery.sizeOf(context).width*0.03,),
             Text('Economics', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.sp),),]),
             SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
              Column(
                       children: [
                         CircleAvatar(
                                     backgroundImage: AssetImage('assets/ear pot.jpg'),
                                     radius: 30,
                                    ),
                                    SizedBox(height: MediaQuery.sizeOf(context).width*0.03,),
             Text('Mathematics', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.sp),),
             
                       ],
                     ),
             
               ],
             ),
           ),
                      ),
                     SizedBox(height: MediaQuery.sizeOf(context).width*0.06,),
                     Row(
          children: [
            Text('Popular Tutors', style: TextStyle(color: PrimaryColor, fontWeight: FontWeight.bold, fontSize: 20),),
            
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.4,),
                     Text('See All', style: TextStyle(color: SecondaryColor, fontWeight: FontWeight.bold, fontSize: 20),) ,
          ],
                     ) ,
                      SizedBox(height: MediaQuery.sizeOf(context).width*0.1,),
                 
                    CarouselSlider(
                    options: CarouselOptions(
                      height: 350.0,
                      //aspectRatio: 2.0,
                      viewportFraction: 1.2,  // Adjusts the width of each container in the carousel
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                      // onPageChanged: (index, reason) {
                      //   print("Current page: $index");
                      // },
                    ),
                    items: [
          Stack(
                      children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                                   height: MediaQuery.sizeOf(context).height*0.26,
                                   width:MediaQuery.sizeOf(context).width*0.85,
                                   decoration: BoxDecoration(
                                     color: PrimaryColor,
                                     borderRadius: BorderRadius.circular(20)
                                   ),
                                    
                        ),
                      ),
           Padding(
             padding: const EdgeInsets.only(top: 10, left: 20,bottom: 275),
             child: Row(
               children: [
                 Container(
                 height: 60,
                 width: 60,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(300),
                           image: DecorationImage(
                             image: AssetImage('assets/mr edrik.jpg'), // Replace with your image path
                             fit: BoxFit.cover, // This ensures the image covers the container
                           ),),
                 
                                   ),
                                    SizedBox(height: MediaQuery.sizeOf(context).width*0.03,),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Column(
                      children: [
                        Row(
                          children: [
                            Text( 'Derek Konyuy',  style: TextStyle(  fontSize: 20.sp,
                                        color: Color.fromARGB(255, 226, 215, 253), 
                                      ),
                                    ),
                                    Icon(Icons.verified, color: Color.fromARGB(255, 224, 187, 5),) ,    
                          ],
                        ),
                                Text( 'phD in software Engineering',  style: TextStyle(
                                    color: Color.fromARGB(255, 198, 163, 255)
                                  ),
                                ),
                      ],
                    ),
                ),             
               ],
             ),
           ),
                    Padding(
                      padding: const EdgeInsets.only(top: 75, left: 9),
                      child:    Column(
               children: [
                 Padding(
                   padding: EdgeInsets.only(right: 25),
                   child: Row(
                     children: [
                       Text('No. of students', style: TextStyle(  fontSize: 14.sp,  color:  Color.fromARGB(255, 198, 163, 255)  ),),
                       SizedBox(width: 10,),
                       Text('1234+',style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 224, 187, 5))),
                       SizedBox(width: 30,),
                       Text('3000 XAF/Hr', style: TextStyle(  fontSize: 16.sp,
                                            color: Color.fromARGB(255, 226, 215, 253), 
                                          ),)
                     ],
                   ),
                 ),
                 SizedBox(height: 10,),
                                         Padding(
                                           padding: EdgeInsets.only(right: 45),
                                           child: Row(
                                                                       children: [
                                                                         Icon(Icons.location_on_rounded,color: Colors.white, size: 20,), SizedBox(width: 3,),
                                                                         Text('Bamenda',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp, color: Color.fromARGB(255, 224, 187, 5))),
                                                                         SizedBox(width: 50,),
                                                                          Icon(Icons.star, color: Colors.white, size: 20,), SizedBox(width: 3,),
                                                                         Text('4.9(120 ratings)', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp, color: Color.fromARGB(255, 224, 187, 5) ),)
                                                                       ],
                                                                     ),
                                         ),
               ],
             ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 150),
                      child: Row(
           children: [
             Container(
               height: MediaQuery.sizeOf(context).height*0.046,
               width: MediaQuery.sizeOf(context).width*0.4,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
               ),
               child: Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child:  Row(
                   children: [
                     Icon(Icons.person,color:Color.fromARGB(255, 242, 187, 23),size: 25,),
                     SizedBox(width: 5,),
                     Expanded(child: Text('View Profile',style: TextStyle(color: Color.fromARGB(255, 242, 187, 23), fontSize: 17.sp, fontWeight: FontWeight.bold),))
                   ],
                 ),
               ),
             ),
               SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
              Container(
               height: MediaQuery.sizeOf(context).height*0.046,
               width: MediaQuery.sizeOf(context).width*0.3,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
               ),
               child: Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child:  Row(
                   children: [
                     Icon(Icons.book,size: 25,color:Color.fromARGB(255, 84, 48, 214),), SizedBox(width: 5,),
                     Expanded(child: Text('Book',style: TextStyle(color: Color.fromARGB(255, 84, 48, 214), fontSize: 20.sp, fontWeight: FontWeight.bold),))
                   ],
                 ),
               ),
             )
           ],
                      ),
                    )
                      ],
                    
                      
                    ),
                
          Stack(
                      children: [
                      Container(
           height: MediaQuery.sizeOf(context).height*0.26,
           width:MediaQuery.sizeOf(context).width*0.85,
           decoration: BoxDecoration(
             color: PrimaryColor,
             borderRadius: BorderRadius.circular(20)
           ),
            
                      ),
           Padding(
             padding: const EdgeInsets.only(top: 10, left: 20,bottom: 275),
             child: Row(
               children: [
                 Container(
                 height: 60,
                 width: 60,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(300),
                           image: DecorationImage(
                             image: AssetImage('assets/mireille.jpg'), // Replace with your image path
                             fit: BoxFit.cover, // This ensures the image covers the container
                           ),),
                 
                                   ),
                                    SizedBox(height: MediaQuery.sizeOf(context).width*0.03,),
               Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child:   Column(
                      children: [
                        Row(
                          children: [
                            Text( 'Feteh Mireille',  style: TextStyle(  fontSize: 20.sp,
                                        color: Color.fromARGB(255, 226, 215, 253), 
                                      ),
                                    ),
                                    Icon(Icons.verified, color: Color.fromARGB(255, 224, 187, 5),) ,    
                          ],
                        ),
                                Text( 'phD in software Engineering',  style: TextStyle(
                                    color: Color.fromARGB(255, 198, 163, 255)
                                  ),
                                ),
                      ],
                    ),
                ),             
               ],
             ),
           ),
                    Padding(
                      padding: const EdgeInsets.only(top: 75, left: 9),
                      child:   Column(
               children: [
                 Padding(
                   padding: EdgeInsets.only(right: 25),
                   child: Row(
                     children: [
                       Text('No. of students', style: TextStyle(  fontSize: 14.sp,  color:  Color.fromARGB(255, 198, 163, 255)  ),),
                       SizedBox(width: 10,),
                       Text('1234+',style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 224, 187, 5))),
                       SizedBox(width: 30,),
                       Text('3000 XAF/Hr', style: TextStyle(  fontSize: 16.sp,
                                            color: Color.fromARGB(255, 226, 215, 253), 
                                          ),)
                     ],
                   ),
                 ),
                 SizedBox(height: 10,),
                                         Padding(
                                           padding: EdgeInsets.only(right: 45),
                                           child: Row(
                                                                       children: [
                                                                         Icon(Icons.location_on_rounded,color: Colors.white, size: 20.sp,), SizedBox(width: 3,),
                                                                         Text('Bamenda',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp, color: Color.fromARGB(255, 224, 187, 5))),
                                                                         SizedBox(width: 50,),
                                                                          Icon(Icons.star, color: Colors.white, size: 20.sp,), SizedBox(width: 3,),
                                                                         Text('4.9(120 ratings)', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp, color: Color.fromARGB(255, 224, 187, 5) ),)
                                                                       ],
                                                                     ),
                                         ),
               ],
             ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 150),
                      child: Row(
           children: [
             Container(
               height: MediaQuery.sizeOf(context).height*0.046,
               width: MediaQuery.sizeOf(context).width*0.4,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
               ),
               child: Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child:  Row(
                   children: [
                     Icon(Icons.person,color:Color.fromARGB(255, 242, 187, 23),size: 25,),
                     SizedBox(width: 5,),
                     Expanded(child: Text('View Profile',style: TextStyle(color: Color.fromARGB(255, 242, 187, 23), fontSize: 17.sp, fontWeight: FontWeight.bold),))
                   ],
                 ),
               ),
             ),
               SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
              Container(
               height: MediaQuery.sizeOf(context).height*0.046,
               width: MediaQuery.sizeOf(context).width*0.3,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
               ),
               child: Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child:  Row(
                   children: [
                     Icon(Icons.book,size: 25,color:Color.fromARGB(255, 84, 48, 214),), SizedBox(width: 5,),
                     Expanded(child: Text('Book',style: TextStyle(color: Color.fromARGB(255, 84, 48, 214), fontSize: 20.sp, fontWeight: FontWeight.bold),))
                   ],
                 ),
               ),
             )
           ],
                      ),
                    )
                      ],
                    
                      
                    ),
                
          Stack(
                      children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                                   height: MediaQuery.sizeOf(context).height*0.26,
                                   width:MediaQuery.sizeOf(context).width*0.85,
                                   decoration: BoxDecoration(
                                     color: PrimaryColor,
                                     borderRadius: BorderRadius.circular(20)
                                   ),
                                    
                        ),
                      ),
           Padding(
             padding: const EdgeInsets.only(top: 10, left: 20,bottom: 275),
             child: Row(
               children: [
                 Container(
                 height: 60,
                 width: 60,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(300),
                           image: DecorationImage(
                             image: AssetImage('assets/calling picture 2.jpg'), // Replace with your image path
                             fit: BoxFit.cover, // This ensures the image covers the container
                           ),),
                 
                                   ),
                                    SizedBox(height: MediaQuery.sizeOf(context).width*0.03,),
               Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child:   Column(
                      children: [
                        Row(
                          children: [
                            Text( 'Nyanga Piethras',  style: TextStyle(  fontSize: 20.sp,
                                        color: Color.fromARGB(255, 226, 215, 253), 
                                      ),
                                    ),
                                    Icon(Icons.verified, color: Color.fromARGB(255, 224, 187, 5),) ,    
                          ],
                        ),
                                Text( 'phD in software Engineering',  style: TextStyle(
                                    color: Color.fromARGB(255, 198, 163, 255)
                                  ),
                                ),
                      ],
                    ),
                ),             
               ],
             ),
           ),
                    Padding(
                      padding: const EdgeInsets.only(top: 75, left: 9),
                      child:     Column(
               children: [
                 Padding(
                   padding: EdgeInsets.only(right: 25),
                   child: Row(
                     children: [
                       Text('No. of students', style: TextStyle(  fontSize: 14.sp,  color:  Color.fromARGB(255, 198, 163, 255)  ),),
                       SizedBox(width: 10,),
                       Text('1234+',style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 224, 187, 5))),
                       SizedBox(width: 30,),
                       Text('3000 XAF/Hr', style: TextStyle(  fontSize: 16.sp,
                                            color: Color.fromARGB(255, 226, 215, 253), 
                                          ),)
                     ],
                   ),
                 ),
                 SizedBox(height: 10,),
                                         Padding(
                                           padding: EdgeInsets.only(right: 45),
                                           child: Row(
                                                                       children: [
                                                                         Icon(Icons.location_on_rounded,color: Colors.white, size: 20,), SizedBox(width: 3,),
                                                                         Text('Bamenda',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp, color: Color.fromARGB(255, 224, 187, 5))),
                                                                         SizedBox(width: 50,),
                                                                          Icon(Icons.star, color: Colors.white, size: 20,), SizedBox(width: 3,),
                                                                         Text('4.9(120 ratings)', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp, color: Color.fromARGB(255, 224, 187, 5) ),)
                                                                       ],
                                                                     ),
                                         ),
               ],
             ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 150),
                      child: Row(
           children: [
             Container(
               height: MediaQuery.sizeOf(context).height*0.046,
               width: MediaQuery.sizeOf(context).width*0.4,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
               ),
               child: Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child: Row(
                   children: [
                     Icon(Icons.person,color:Color.fromARGB(255, 242, 187, 23),size: 25,),
                     SizedBox(width: 5,),
                     Expanded(child: Text('View Profile',style: TextStyle(color: Color.fromARGB(255, 242, 187, 23), fontSize: 17.sp, fontWeight: FontWeight.bold),))
                   ],
                 ),
               ),
             ),
               SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
              Container(
               height: MediaQuery.sizeOf(context).height*0.046,
               width: MediaQuery.sizeOf(context).width*0.3,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
               ),
               child: Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child: Row(
                   children: [
                     Icon(Icons.book,size: 25,color:Color.fromARGB(255, 84, 48, 214),), SizedBox(width: 5,),
                     Expanded(child: Text('Book',style: TextStyle(color: Color.fromARGB(255, 84, 48, 214), fontSize: 20.sp, fontWeight: FontWeight.bold),))
                   ],
                 ),
               ),
             )
           ],
                      ),
                    )
                      ],
                    
                      
                    ),
                
           Stack(
                      children: [
                      Container(
           height: MediaQuery.sizeOf(context).height*0.26,
           width:MediaQuery.sizeOf(context).width*0.85,
           decoration: BoxDecoration(
             color: PrimaryColor,
             borderRadius: BorderRadius.circular(20)
           ),
            
                      ),
           Padding(
             padding: const EdgeInsets.only(top: 10, left: 20,bottom: 275),
             child: Row(
               children: [
                 Container(
                 height: 60,
                 width: 60,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(300),
                           image: DecorationImage(
                             image: AssetImage('assets/laughing picture.jpg'), // Replace with your image path
                             fit: BoxFit.cover, // This ensures the image covers the container
                           ),),
                 
                                   ),
                                    SizedBox(height: MediaQuery.sizeOf(context).width*0.03,),
               Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child:  Column(
                      children: [
                        Row(
                          children: [
                            Text( 'Ngwa Juthel',  style: TextStyle(  fontSize: 20.sp,
                                        color: Color.fromARGB(255, 226, 215, 253), 
                                      ),
                                    ),
                                    Icon(Icons.verified, color: Color.fromARGB(255, 224, 187, 5),) ,    
                          ],
                        ),
                                Text( 'phD in software Engineering',  style: TextStyle(
                                    color: Color.fromARGB(255, 198, 163, 255)
                                  ),
                                ),
                      ],
                    ),
                ),             
               ],
             ),
           ),
                    Padding(
                      padding: const EdgeInsets.only(top: 75, left: 9),
                      child:   Column(
               children: [
                 Padding(
                   padding: EdgeInsets.only(right: 25),
                   child: Row(
                     children: [
                       Text('No. of students', style: TextStyle(  fontSize: 14.sp,  color:  Color.fromARGB(255, 198, 163, 255)  ),),
                       SizedBox(width: 10,),
                       Text('1234+',style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 224, 187, 5))),
                       SizedBox(width: 30,),
                       Text('3000 XAF/Hr', style: TextStyle(  fontSize: 16.sp,
                                            color: Color.fromARGB(255, 226, 215, 253), 
                                          ),)
                     ],
                   ),
                 ),
                 SizedBox(height: 10,),
                                         Padding(
                                           padding: EdgeInsets.only(right: 45),
                                           child: Row(
                                                                       children: [
                                                                         Icon(Icons.location_on_rounded,color: Colors.white, size: 20,), SizedBox(width: 3,),
                                                                         Text('Bamenda',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp, color: Color.fromARGB(255, 224, 187, 5))),
                                                                         SizedBox(width: 50,),
                                                                          Icon(Icons.star, color: Colors.white, size: 20,), SizedBox(width: 3,),
                                                                         Text('4.9(120 ratings)', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp, color: Color.fromARGB(255, 224, 187, 5) ),)
                                                                       ],
                                                                     ),
                                         ),
               ],
             ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 150),
                      child: Row(
           children: [
             Container(
               height: MediaQuery.sizeOf(context).height*0.046,
               width: MediaQuery.sizeOf(context).width*0.4,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
               ),
               child: Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child:  Row(
                   children: [
                     Icon(Icons.person,color:Color.fromARGB(255, 242, 187, 23),size: 25,),
                     SizedBox(width: 5,),
                     Expanded(child: Text('View Profile',style: TextStyle(color: Color.fromARGB(255, 242, 187, 23), fontSize: 17.sp, fontWeight: FontWeight.bold),))
                   ],
                 ),
               ),
             ),
               SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
              Container(
               height: MediaQuery.sizeOf(context).height*0.046,
               width: MediaQuery.sizeOf(context).width*0.3,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
               ),
               child: Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child:  Row(
                   children: [
                     Icon(Icons.book,size: 25,color:Color.fromARGB(255, 84, 48, 214),), SizedBox(width: 5,),
                     Expanded(child: Text('Book',style: TextStyle(color: Color.fromARGB(255, 84, 48, 214), fontSize: 20.sp, fontWeight: FontWeight.bold),))
                   ],
                 ),
               ),
             )
           ],
                      ),
                    )
                      ],
                    
                      
                    )
                
                    ],
                  ),
                // SizedBox(height: MediaQuery.sizeOf(context).width*0.01,),
           
            ],
          ),
        ),
        ),
        bottomNavigationBar:   BottomNavigationBar(
          currentIndex: _selectedIndex,    
          onTap: _onItemTapped,            
          selectedItemColor: PrimaryColor, 
          unselectedItemColor: Colors.grey, 
           
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, ), label: 'Home'  ),
          BottomNavigationBarItem(icon: Icon(Icons.message,), label: 'Chart'),
          BottomNavigationBarItem(icon: Icon(Icons.person,), label: 'Profile')
        ],),
    );
  }
}