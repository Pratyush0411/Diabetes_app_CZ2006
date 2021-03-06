import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:intl/intl.dart';


//void main() => runApp(ExercisePage());


class FoodMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Diabetes App',
        home: MealLogPageState(),
        theme: ThemeData(
          // Define the default brightness and colors.
          primaryColor: Colors.teal.shade800,
          backgroundColor: Colors.pink.shade100,

          // Define the default font family.
          fontFamily: 'Roboto',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
              headline3: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              headline4: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade800),
              headline5: TextStyle(fontSize: 40, color: Colors.teal.shade800),
              headline6: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ));
  }
}
class MealLogPageState extends StatefulWidget {
  @override
  MealLogForm createState() => MealLogForm();

}
class MealLogForm extends State<MealLogPageState> {
  @override
  Widget build(BuildContext context) {
    double progressValue = 153;
    return Scaffold(
        appBar: AppBar(
            title:
            Text('Meal log', style: TextStyle(color: Colors.pink.shade100)),
            centerTitle: true,
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.pink.shade100,
                ),
                onPressed: null),
            backgroundColor: Colors.teal.shade800),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(children: [
                  SizedBox(
                      width: 400,
                      height: 300,

                      child: Card(
                      elevation: 5,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Text('Calorie Intake (7 days)',
                                    style:
                                    TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                margin: EdgeInsets.only(
                                    left: 80, right: 0, top: 10)),
                          ]
                      )
                  )
                  ),
                  Container (
                      margin: EdgeInsets.only(
                          left: 0, right: 0, top: 20),
                      child: SizedBox(
                      width: 200,
                      height:40,
                      child: ElevatedButton.icon(
                        onPressed: null,

                        icon: Icon(
                          Icons.sticky_note_2_outlined,
                          size: 18,
                        ),
                        label: Text("Log Meal",
                            style: Theme.of(context).textTheme.headline3),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.pink.shade100)
                                )),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.pink.shade100)),
                      ))),
                  Container(
                      margin: EdgeInsets.only(
                          left: 0, right: 0, top: 20),
                    child: Column(
                        children: [
                          Row(
                            children: [Text("Current Meal Plan",
                        style: Theme.of(context).textTheme.headline3)],
                          ),
                          Card(
                              elevation: 5,
                              child: Container(
                                  margin: EdgeInsets.all(10),
                                  //padding:EdgeInsets.all(15),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('9:00 AM',
                                            style:
                                            Theme.of(context).textTheme.headline4),
                                        Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Vegetable omelette + fruits side",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline3),
                                            ]),
                                      ]))),
                          Card(
                              elevation: 5,
                              child: Container(
                                  margin: EdgeInsets.all(10),
                                  //padding:EdgeInsets.all(15),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('2:00 PM',
                                            style:
                                            Theme.of(context).textTheme.headline4),
                                        Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Basil fried bown rice",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline3),
                                            ]),
                                      ]))),
                          Card(
                              elevation: 5,
                              child: Container(
                                  margin: EdgeInsets.all(10),
                                  //padding:EdgeInsets.all(15),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('7:00 PM',
                                            style:
                                            Theme.of(context).textTheme.headline4),
                                        Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Chicken White Bean soup",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline3),
                                            ]),
                                      ]))),
                  ]
                  )
                  ),
                  Container (
                      margin: EdgeInsets.only(
                          left: 0, right: 0, top: 10, bottom: 10),
                      child: SizedBox(
                          width: 300,
                          height:40,
                          child: ElevatedButton.icon(
                            onPressed: null,

                            icon: Icon(
                              Icons.edit_outlined,
                              size: 18,
                            ),
                            label: Text("Change Meal Plan",
                                style: Theme.of(context).textTheme.headline3),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.pink.shade100)
                                    )),
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    Colors.pink.shade100)),
                          ))),
                ]
                )
            )
        )
    );
  }
}
