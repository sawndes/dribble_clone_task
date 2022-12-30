import 'package:flight_booking_ui/screens/third_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var travellers = 2;
  void incTra() {
    setState(() {
      travellers = travellers + 1;
    });
  }

  void decTra() {
    setState(() {
      travellers = travellers - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      bottomNavigationBar: SizedBox(
        height: height * 0.07,
        child: BottomNavigationBar(
            currentIndex: 1,
            backgroundColor: Colors.grey[300],
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_outlined,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.airplane_ticket_rounded,
                ),
                label: '',
              ),
            ]),
      ),
      body: Column(
        children: [
          Container(
            height: height * 0.93,
            color: Colors.grey[300],
            // padding: EdgeInsets.only(top: 60),
            child: Stack(
              // backgroundColor: Colors.grey[300],
              // alignment: Alignment.center,
              // textDirection: TextDirection.rtl,
              // fit: StackFit.loose,

              // clipBehavior: Clip.hardEdge,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Colors.blue,
                  ),
                  height: 300,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 80.0, left: 15),
                        child: Column(
                          children: [
                            Text(
                              'Book Your',
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 140, 228, 143),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                ),
                              ),
                            ),
                            Text(
                              'Next Flight',
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 210,
                  left: 15,
                  right: 15,
                  height: 500,
                  // width: MediaQuery.of(context).size.width,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.white,
                    ),
                    height: 350,
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(2),
                                      primary: Colors.grey,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: Row(
                                      children: const [
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.assistant_direction_rounded,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text('  Round trip'),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(2),
                                      primary: Colors.grey,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: Row(
                                      children: const [
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.assistant_direction_rounded,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text('  One way '),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(3),
                                      primary: Colors.grey,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: Row(
                                      children: const [
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.assistant_direction_rounded,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text('  One way'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text(
                                  'From',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding:
                                    EdgeInsets.only(left: 15.0, bottom: 10),
                                child: TextField(
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration.collapsed(
                                    hintText: 'Odessa (ODS),',
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                ),
                                child: Divider(
                                  thickness: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text(
                                  'To',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding:
                                    EdgeInsets.only(left: 15.0, bottom: 10),
                                child: TextField(
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration.collapsed(
                                    hintText: 'Paris',
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                ),
                                child: Divider(
                                  thickness: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                      children: const [
                                        Text(
                                          'Depart',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            '21, Aug 2022',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Icon(Icons.calendar_month),
                                  Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                      children: const [
                                        Text(
                                          'Arrive',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            '29, Aug 2022',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Travellers',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextButton(
                                      onPressed: decTra,
                                      child: Text(
                                        '-',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30,
                                        ),
                                      ),
                                      style: TextButton.styleFrom(
                                          padding: EdgeInsets.all(0),
                                          fixedSize: Size(1, 1),
                                          elevation: 2,
                                          backgroundColor: Colors.grey),
                                    ),
                                  ),
                                  Text(
                                    travellers.toString(),
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextButton(
                                      onPressed: incTra,
                                      child: Text(
                                        '+',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30,
                                        ),
                                      ),
                                      style: TextButton.styleFrom(
                                          padding: EdgeInsets.all(0),
                                          fixedSize: Size(1, 1),
                                          elevation: 2,
                                          backgroundColor: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const ThirdPage(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(15),
                              primary: const Color.fromARGB(255, 161, 229, 83),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Search Flights',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ]),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
