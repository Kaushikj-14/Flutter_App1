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
                        title:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [Text('${entries[index]}')],
                              ),
                              Column(

                                children: [Text('Bhagat Colony',)],
                              )
                            ]),
                        
                        subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[
                              Column(
                                children: [Text(subtitle[0])],
                              ),
                              Row(children: [
                                Icon(Icons.location_on),
                                Text('8157 Miles')
                              ],)
                            ] ),

                      ),

                      ListTile(
                          title:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                IconButton(
                                  icon: Icon(Icons.home),
                                  alignment: Alignment.topRight,
                                  onPressed: () {
                                    print("Icon Button clicked");
                                  },
                                ),
                                Column(
                                  children: [
                                    // IconButton(onPressed: (){}, icon: Icon(Icons.star_border))
                                    MaterialButton(
                                      shape: const CircleBorder(),
                                      color: Colors.red,
                                      padding: const EdgeInsets.all(10),
                                      onPressed: () {},
                                      child: const Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                  ],
                                )
                              ]
                          ),

                          // subtitle: Column(children: [Text('AC Type2'),Text('Unknown'),],crossAxisAlignment: CrossAxisAlignment.start,),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Text('AC Type2'),Text('Unknown'),],
                              ),

                              Column(
                                children: [
                                  MaterialButton(
                                    shape: const CircleBorder(),
                                    color: Colors.green,
                                    padding: const EdgeInsets.all(10),
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.near_me_sharp,
                                      size: 22,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],

                              )
                            ],
                          ),
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
      BottomNavigationBarItem(icon: Icon(Icons.location_on) ,label: 'Map'),
      BottomNavigationBarItem(icon: Icon(Icons.star_border),label: 'Favorite'),
      BottomNavigationBarItem(icon: Icon(Icons.payment),label: 'Message'),
      BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More'),

    ],),

    );
  }
}


//
// bottomNavigationBar: BottomNavigationBar(
// currentIndex: _selectedIndex,
// // onTap: _navigateBottomBar,
// type: BottomNavigationBarType.fixed,
// items: [
// BottomNavigationBarItem(icon: Icon(Icons.home) ,label: 'Home'),
// BottomNavigationBarItem(icon: Icon(Icons.star_border),label: 'Favorite'),
// BottomNavigationBarItem(icon: Icon(Icons.wallet),label: 'Message'),
// BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More'),
//
//
// ],),
//
// body: Center(
// child:Table(
// border: TableBorder.all(),
// defaultColumnWidth: const FixedColumnWidth(10.0),
// children: <TableRow>[
// _tablerow,
// ],
// ),
// ),


//body
//
// body: ListView.builder(
// itemCount: items.length,
// itemBuilder: (context, index) {
// return ListTile(
// // leading: Text('ID:ENO_TEST-GRIDSCAPE01'),
// title: Text('ID:ENO_TEST-GRIDSCAPE01'),
// // title: Text(items[index]['title']),
// subtitle: Text('30 Bhagat Colony Near Susen Circle'),
// trailing: Column(
//
// children: [
// Text('Bhagat Colony'),
// Icon(Icons.location_city),
// Text('miles'),
// Icon(Icons.favorite),
// Icon(Icons.location_city),
// ],
// ),
//
//
// onTap: () {
// // Handle item tap
// },
//
//
// );
//
//
// },
// ),

// TableRow _tablerow = const TableRow(
//   children: [
//     Padding(
//         padding:EdgeInsets.all(10.0),
//         child: Text('content 1'),
//     ),
//
//     Padding(
//       padding:EdgeInsets.all(10.0),
//       child: Text('content 2'),
//     ),

//
// SingleChildScrollView(
// reverse: true,
// padding: EdgeInsets.all(32),
// child: Container(
//
// child: Row(
// children: [
//
// ListTile(
//
// // scrollDirection: Axis.horizontal,
// // itemCount: products.length,
// // itemBuilder: (BuildContext ctxt, int index) {
// //   return new Text(products[index]);
// title: Text(products[0]),
// subtitle: Text("Ganga"),
// trailing: Column(
// children:[
// Text('Bhagat Colony'),
// Icon(Icons.location_city) ,
// Text('miles'),
// Icon(Icons.favorite)
// ],
//
// ),
// ),
// //},
//
//
// //),
// ],
// ),
// ),
// ),
//
//   ]
// );