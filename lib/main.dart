import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Learn columns and rows

/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,

            children: [
              Container(
                color: Colors.white,
                child: Text("Container 1"),
                width: double.infinity,
                height: 100,
              ),
              SizedBox(height: 10),
              Container(
                color: Colors.red,
                child: Text("Container 2"),
                width: 100,
                height: 100,
              ),
              SizedBox(height: 10),
              Container(
                color: Colors.blue,
                child: Text("Container 3"),
                width: 100,
                height: 100,
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
*/

//Challenge of the picture

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         body: SafeArea(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 width: 100,
//                 color: Colors.red,
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     width: 100,
//                     height: 100,
//                     color: Colors.yellow,
//                   ),
//                   Container(
//                     width: 100,
//                     height: 100,
//                     color: Colors.green,
//                   )
//                 ],
//               ),
//               Container(
//                 width: 100,
//                 color: Colors.blue,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(
              radius: 46,
              backgroundImage: AssetImage('images/mypic.jpg'),
            ),
            Text(
              "Ibtihal Homadi",
              style: TextStyle(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "Pacifico",
              ),
            ),
            Text(
              " Flutter Developer",
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple[500],
                letterSpacing: 4,
                fontWeight: FontWeight.bold,
                fontFamily: "SourceSans3",
              ),
            ),

            SizedBox(
              width: 150.0,
              height: 16.0, child: Divider(color: Colors.deepPurple[300],thickness: 2),
            ),

            //old way

            // Container(
            //   margin: EdgeInsets.symmetric(vertical: 10, horizontal: 26),
            //   padding: EdgeInsets.all(10),
            //   color: Colors.deepPurple[100],
            //   child: Row(
            //     children: [
            //       Icon(
            //         Icons.phone,
            //         color: Colors.deepPurple[200],
            //       ),
            //       SizedBox(width: 12),
            //       Text(
            //         '+967 783 414 928',
            //         style: TextStyle(
            //             fontFamily: "SourceSans3",
            //             fontSize: 20,
            //             fontWeight: FontWeight.bold,
            //             color: Colors.deepPurple[600]),
            //       )
            //     ],
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.symmetric(vertical: 10, horizontal: 26),
            //   padding: EdgeInsets.all(10),
            //   color: Colors.deepPurple[100],
            //   child: Row(
            //     children: [
            //       Icon(
            //         Icons.email,
            //         color: Colors.deepPurple[200],
            //       ),
            //       SizedBox(width: 12),
            //       Text(
            //         'ibtihalhomadi@gmail.com',
            //         style: TextStyle(
            //             fontFamily: "SourceSans3",
            //             fontSize: 20,
            //             fontWeight: FontWeight.bold,
            //             color: Colors.deepPurple[600]),
            //       )
            //     ],
            //   ),
            // ),

            //another way using card
            //but card widget don't accept the padding widget so we use padding class

            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 26),
              // padding: EdgeInsets.all(10), // error
              color: Colors.deepPurple[100],
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.deepPurple[200],
                    ),
                    SizedBox(width: 30),
                    Text(
                      '+967 783 414 928',
                      style: TextStyle(
                          fontFamily: "SourceSans3",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple[600]),
                    )
                  ],
                ),
              ),
            ),

            //z\another way using card with ListTile Widget
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 26),
              color: Colors.deepPurple[100],
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.deepPurple[200],
                ),
                title: Text(
                  'ibtihalhomadi@gmail.com',
                  style: TextStyle(
                      fontFamily: "SourceSans3",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple[600]),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
