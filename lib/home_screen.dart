import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> _selectDate() async{
    DateTime? _picked = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime(2040),
    );

    if(_picked != null){
      dateController.text = _picked.toString().split(" ")[0];
    }
  }

  TextEditingController dateController = TextEditingController();

  var weightGain = '2kg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100.0),
                    bottomRight: Radius.circular(100.0),
                  )
                ),
                height: MediaQuery.of(context).size.height * 0.60,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      // AppBar
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.pushNamed(context, '/first'),
                            child: CircleAvatar(
                              radius: 25,
                              child: Icon(Icons.chevron_left, color: Colors.white,),
                              backgroundColor: Colors.white24,
                            ),
                          ),
                          Spacer(),

                          Center(
                            child: Text('My Track', style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                          ),),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () => Navigator.pushNamed(context, '/first'),
                            child: CircleAvatar(
                              radius: 25,
                              child: Icon(Icons.menu, color: Colors.white,),
                              backgroundColor: Colors.white24,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 25,),

                      TextField(
                        decoration: InputDecoration(
                          hintText: 'DATE',
                          filled: true,
                          suffixIcon: Icon(Icons.keyboard_arrow_down, color: Colors.white,),
                          prefixIcon: Icon(Icons.calendar_today_outlined, color: Colors.lightGreen,),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white60),
                          )
                        ),
                        readOnly: true,
                        controller: dateController,
                        onTap: (){
                          _selectDate();
                        },
                      ),

                      SizedBox(height: 30,),
                      Text(
                        "You've gained $weightGain in a month, keep it up!",
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),

                      SizedBox(height: 5,),
                      Text(
                        "Still need to gain",
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),

                      SizedBox(height: 8,),
                      Text('950 kcal', style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                        color: Colors.white,
                      ),),

                      SizedBox(height: 20,),

                      Row(
                        children: [
                          Spacer(),
                          Column(
                            children: [
                              CircularPercentIndicator(
                                radius: 40,
                                progressColor: Colors.lightGreenAccent,
                                lineWidth: 5,
                                center: Text('35%', style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),),
                                percent: 0.35,
                                backgroundColor: Colors.white38,
                              ),
                              SizedBox(height: 5,),

                              Text('Protein', style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),)
                            ],
                          ),

                          Spacer(),
                          Column(
                            children: [
                              CircularPercentIndicator(
                                radius: 40,
                                center: Text('65%', style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),),
                                percent: 0.65,
                                backgroundColor: Colors.white38,
                                progressColor: CupertinoColors.systemYellow,
                              ),

                              SizedBox(height: 5,),

                              Text('Carbo', style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),)
                            ],
                          ),

                          Spacer(),
                          Column(
                            children: [
                              CircularPercentIndicator(
                                radius: 40,
                                center: Text('65%', style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),),
                                percent: 0.20,
                                progressColor: Colors.red,
                                backgroundColor: Colors.white38,
                              ),

                              SizedBox(height: 5,),

                              Text('Fat', style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),)
                            ],
                          ),

                          Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'My Daily Target',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),

                        Text(
                          'See All',
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20,),

                    Row(
                      children: [
                        Spacer(),
                        buildFeatureContainer('Water', '2300ml', Colors.white, 'lib/images/That Girl Waterbottle.jpeg'),
                        Spacer(),
                        buildFeatureContainer('Calories', '890kCal', Colors.black, 'lib/images/meat_salad.jpeg'),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Spacer(),
                        buildFeatureContainer('Weight', '60kg', Colors.white, 'lib/images/weight check.jpeg'),
                        Spacer(),
                        buildFeatureContainer('BPM', '800bps', Colors.black, 'lib/images/heart rate pulse.jpeg'),
                        Spacer(),
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
    );
  }

  Widget buildFeatureContainer(String title,
      String amount, Color colour, String image){
    return Container(
      height: MediaQuery.of(context).size.width * 0.38, //150,
      width: MediaQuery.of(context).size.width * 0.38,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Text(title, style: TextStyle(
              color: colour,
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),),
            Spacer(),
            Spacer(),

            Text('Total Cons', style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),),
            Text(amount, style: TextStyle(
              color: colour,
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
