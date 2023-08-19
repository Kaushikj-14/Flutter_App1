import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScrollableItems(),
    );
  }
}
class ScrollableItems extends StatelessWidget {
  // final List<Map<String, dynamic>> items = List.generate(
  //   10,
  //       (index) => {
  //     'title': 'Item $index',
  //     'subtitle': 'Subtitle $index',
  //     'icon': Icons.star,
  //   },
  // );

  int _selectedIndex = 0;
  final List<String> products = ['Id123','Id234','Id345','Id456','Id567'];
  int index=0;
  final List<String> entries = <String>['ID ENO-TEST-GRIDSCAPE01', 'ID: MultiTest', 'ID: Delta'];
  final List<int> colorCodes = <int>[600, 500, 100];
  final List<String> subtitle = ['30 Bahgat Colony Near Susen Circle'];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        
        appBar: AppBar(
        title: Text('Scrollable Items'),
      ),



         body:ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.all(8),
              height: 200,
              color: Colors.white,

              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(children: [



                      ListTile(
                        title:Text('${entries[index]}'),
                        subtitle: Text(subtitle[0]),

                      ),

                      ListTile(
                          title:Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.home),
                                  alignment: Alignment.topRight,
                                  onPressed: () {
                                    print("Icon Button clicked");
                                  },
                                ),

                              ]
                          ),
                            subtitle: Column(children: [Text('AC Type2'),Text('Unknown'),],crossAxisAlignment: CrossAxisAlignment.start,),

                      ) ,



                    ],

                    ),

                ],

                ),


              ),


            );

          }
      ),

    bottomNavigationBar: BottomNavigationBar(
    currentIndex: _selectedIndex,
    // onTap: _navigateBottomBar,
    type: BottomNavigationBarType.fixed,
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home) ,label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.star_border),label: 'Favorite'),
      BottomNavigationBarItem(icon: Icon(Icons.wallet),label: 'Message'),
      BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More'),

    ],),

    );
  }
}


