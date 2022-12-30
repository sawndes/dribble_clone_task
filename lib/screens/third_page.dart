import 'package:flight_booking_ui/widgets/ticket_widget.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0, left: 30, right: 30),
            child: Text(
              'Boarding Pass',
              style: GoogleFonts.abel(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipPath(
              clipper: CustomTicket(),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 2, color: Colors.white30),
                  color: Colors.white.withOpacity(0.5),
                ),
                height: 500,
                width: 700,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35.0, left: 15),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.airplanemode_active_outlined,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'PC979',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),

                    // padding: const EdgeInsets.(8.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 30),
                      child: Column(
                        children: [
                          Text(
                            'ODS',
                            style: GoogleFonts.anton(
                              fontSize: 50,
                              color: Colors.white,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 30.0),
                            child: Text(
                              'Odessa, Ukraine',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            'CDG',
                            style: GoogleFonts.anton(
                              fontSize: 50,
                              color: Colors.white,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Text(
                              'Paris, France',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                '10:15 AM',
                                style: GoogleFonts.prompt(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Fri, 24 Dec',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Column(
                            children: [
                              Text(
                                'B4',
                                style: GoogleFonts.prompt(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Gate',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          Column(
                            children: [
                              Text(
                                '21A',
                                style: GoogleFonts.prompt(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Seat',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Download Ticket',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
