import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Padding buildTopic(String topicName) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20.0),
      child: Text(
        "$topicName :",
        style: GoogleFonts.lato(
          color: HexColor('#061C30'),
          // Reference --> https://www.color-hex.com/color/061c30
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
        // style: const TextStyle(
        //   fontSize: 30.0,
        //   color: Colors.white,
        //   fontWeight: FontWeight.bold,
        // ),
      ),
    );
  }

  InkWell buildTile(String heading, String content, String imageLoc) {
    return InkWell(
      onTap: () async {
        setState(() {});
      },
      borderRadius: BorderRadius.circular(10.0),
      child: Ink(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: HexColor('#061C30'),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5.0),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Text(
                      content,
                      style: TextStyle(
                        color: HexColor('#061C30'),
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        height: 150,
        width: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageLoc),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white60.withOpacity(0.3), BlendMode.dstATop),
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

  SizedBox hSpace() {
    return const SizedBox(
      width: 10.0,
    );
  }

  SizedBox vSpace() {
    return const SizedBox(
      height: 10.0,
    );
  }

  SingleChildScrollView buildTileRow(
      String h1,
      String h2,
      String h3,
      String h4,
      String c1,
      String c2,
      String c3,
      String c4,
      String l1,
      String l2,
      String l3,
      String l4) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildTile(h1, c1, l1),
          hSpace(),
          buildTile(h2, c2, l2),
          hSpace(),
          buildTile(h3, c3, l3),
          hSpace(),
          buildTile(h4, c4, l4),
          hSpace(),
          hSpace(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // ElevatedButton(
              //   onPressed: () {},
              //   child: const Center(child: Icon(Icons.arrow_forward_outlined)),
              //   style: ElevatedButton.styleFrom(
              //     padding: const EdgeInsets.only(bottom: 20.0),
              //     primary: Colors.black54,
              //   ),
              // ),
              Material(
                color: HexColor('#CDD1D5'),
                shadowColor: Colors.red,
                borderRadius: const BorderRadius.all(
                  Radius.circular(25.0),
                ),
                child: InkWell(
                  child: Ink(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_forward_outlined,
                        size: 30.0,
                        color: HexColor('#061C30'),
                      ),
                    ),
                  ),
                ),
              ),
               Text(
                "See More !",
                style: TextStyle(
                  color: HexColor('#061C30'),
                  fontSize: 18,
                ),
              ),
            ],
          ),
          hSpace(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#CDD1D5'), // 828D97
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircularProfileAvatar(
                      'assets/images/avatar.png',
                      child: Image.asset('assets/images/avatar.png'),
                      radius: 30.0,
                      elevation: 8.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.notifications_active,
                              size: 30.0,
                              color: HexColor('#061C30'),
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: HexColor('#9ba4ac'),
                            ),
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(100.0),
                            ),
                          ),
                        ),
                        hSpace(),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.reorder,
                              size: 30.0,
                              color: HexColor('#061C30'),
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: HexColor('#9ba4ac'),
                            ),
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(100.0),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 200.0),
                    Expanded(
                      child: Text(
                        "Discover your favorite job .",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lato(
                          color: HexColor('#061C30'),
                          // Reference --> https://www.color-hex.com/color/061c30
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Material(
                  color: Colors.white70,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                  elevation: 5.0,
                  child: InkWell(
                    child: Ink(
                      width: 375.0,
                      height: 45.0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Search your job... ',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                vSpace(),
                vSpace(),
                buildTopic("IT Services"),
                buildTileRow("Accenture", "TCS", "Cognizant", "Wipro", "Database Administrator", "Information Technology Analyst", "Software/Application Developer", "Web Developer", "assets/images/accenture.png", "assets/images/tcs.webp", "assets/images/Cognizant.jpg", "assets/images/wipro.png"),
                vSpace(),
                vSpace(),
                buildTopic("Technology"),
                buildTileRow("Google", "Apple", "Meta", "Amazon", "Data Scientist", "Information Security Analyst ", "Sales Engineer", "Computer Network Architect", "assets/images/google.webp", "assets/images/apple.png", "assets/images/meta.webp", "assets/images/amazon.png"),
                vSpace(),
                vSpace(),
                buildTopic("Healthcare & Life Sciences"),
                buildTileRow("Pfizer", "Novartis", "SII", "Mankind", "Business Research Analyst", "Principle Scientist", "R&D Consultant", "Incubation Manager", "assets/images/pfizer.png", "assets/images/novartis.webp", "assets/images/sii.jpg", "assets/images/mankind.png"),
                vSpace(),
                vSpace(),
                buildTopic("Manufacturing & Production"),
                buildTileRow("Volkswagen Group", "Toyota Group", "Samsung Electronics", "Ford", "Sales Executive", "Data Scientist", "Product Developer", "Research Engineer", "assets/images/volkswagen.jpg", "assets/images/toyota.jpg", "assets/images/samsung.png", "assets/images/ford.png"),
                vSpace(),
                vSpace(),
                buildTopic("Media, Entertainment & Telecom"),
                buildTileRow("Amazon Entertainment", "AT&T Inc.", "Vodafone Group", "Jio Telecom", "SDE- III", "Lead Product Marketing Manager", "Trainee Engineer", "Manager-Territory Sales", "assets/images/amazonPrime.png", "assets/images/att.png", "assets/images/vodafone.png", "assets/images/jio.png"),
                vSpace(),
                vSpace(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
