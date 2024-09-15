import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _currentIndex = 0;
  CarouselController _carouselController = CarouselController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(height: 20,),

            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('lib/images/@moonv_arts.jpeg'),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/home'),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black12,
                    child: Icon(Icons.menu),
                  ),
                )
              ],
            ),

            SizedBox(height: 30,),

            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ready to Live', style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),),

                    Text('Healthier?', style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),

                Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.search_sharp, size: 30, color: Colors.white,),
                )
              ],
            ),

            SizedBox(height: 20,),
            //Carousel slider
            Container(
              height: MediaQuery.of(context).size.width * 0.6,
              width: MediaQuery.of(context).size.width * 0.85,
              child: CarouselSlider(
                items: [
                  buildSlideshowElement(context,
                    'Drinking Tracker',
                    'Stay hydrated. It\'s nature\'s best refreshment.',
                    Colors.black, 'lib/images/drink_water.jpeg'
                  ),
                  buildSlideshowElement(context,
                      'Steps Counter',
                      'Stay active. Take a run every morning, enjoy the gift youth brings.',
                      Colors.white, 'lib/images/running.jpeg'
                  ),
                  buildSlideshowElement(context,
                      'Weightlifting',
                      'Stay strong. Burn fat and build muscle each day.',
                      Colors.white, 'lib/images/pull-ups.jpeg'
                  ),
                  buildSlideshowElement(context,
                      'Eat Healthy',
                      'Stay healthy. Eat your proteins, fruits and vegetables.',
                      Colors.green, 'lib/images/rice_salmon.jpeg'
                  ),
                ],
                //carouselController: _carouselController,
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 7),
                  enableInfiniteScroll: true,
                  viewportFraction: 1,
                  //enlargeCenterPage: true,
                  onPageChanged: (index, reason){
                    setState(() {
                      _currentIndex = index;
                    });
                  }
                )
              ),
            ),

            SizedBox(height: 20,),

            Row(
              children: [
                Text('Today\'s Meal', style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),),

                Spacer(),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.lightGreenAccent,
                  child: Icon(Icons.add),
                ),
              ],
            ),

            SizedBox(height: 20,),

            Container(
              height: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(32),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Breakfast', style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),),

                        Spacer(),
                        Icon(Icons.access_time_filled_rounded, size: 18, color: Colors.lightGreenAccent,),

                        SizedBox(width: 5,),
                        Text('06:00pm - 07:00pm', style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),),
                      ],
                    ),
                    Spacer(),

                    Row(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.48,
                              height: MediaQuery.of(context).size.width * 0.18,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),

                            Positioned(
                              top: 0,
                              left: 0,
                              bottom: 0,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.18,
                                    decoration: BoxDecoration(
                                      color: Colors.white70,
                                      image: DecorationImage(
                                        image: AssetImage('lib/images/lunch.jpeg'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                            ),


                            Positioned(
                                top: 0,
                                left: 40,
                                bottom: 0,
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.18,
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    image: DecorationImage(image: AssetImage('lib/images/fruits mix.jpeg'), fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                )
                            ),


                            Positioned(
                                top: 0,
                                left: 80,
                                bottom: 0,
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.18,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('lib/images/waterbottle.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white70,
                                  ),
                                )
                            ),

                            Positioned(
                              top: 0,
                              bottom: 0,
                              left: 120,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.18,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(Icons.add, color: Colors.white,),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text('730kCal', style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),)
                      ],
                    ),
                    Spacer(),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: Row(
                              children: [
                                Text('200kcal', style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w800,
                                ),),
                                Spacer(),

                                Text('10kcal', style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w800,
                                ),),
                                Spacer(),

                                Text('120kcal', style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w800,
                                ),),
                              ],
                            ),
                            ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSlideshowElement(BuildContext context, String title,
      String text, Color color, String image){
    return Container(
      height: MediaQuery.of(context).size. width * 0.6,
      width: MediaQuery.of(context).size. width * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: color,
            ),),
            Container(
              width: MediaQuery.of(context).size. width * 0.3,
              child: Text(text, style: TextStyle(
                color: color,
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {

                },
              child: CircleAvatar(child: Icon(Icons.swipe_right_alt_rounded))
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
