import 'package:flutter/material.dart';

class Choice {
  const Choice({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.time,
    required this.colour,
  });

  final String title;
  final String subtitle;
  final String time;
  final String image;
  final Color colour;
}

const List<Choice> choices = const <Choice>[
  const Choice(
    title: 'Dr.Andarson Jhon',
    subtitle: "Medicine",
    time: "10:00",
    image: "assets/avatars.png",
    colour: Color(0xFFBEDCCD),
  ),
  const Choice(
    title: 'Dr.Sydan Hass',
    subtitle: "Dermatologist",
    time: "01:00",
    image: "assets/life1.png",
    colour: Color(0xFFCBDAFD),
  ),
  const Choice(
    title: 'Dr.Criss Mark',
    subtitle: "Obstetrician",
    time: "08:10",
    image: "assets/life2.png",
    colour: Color(0xFFA9D3F0),
  ),
  const Choice(
    title: 'Dr.Jhonsina Bag',
    subtitle: "Dentists",
    time: "07:10",
    image: "assets/life3.png",
    colour: Color(0xFFDBCAE6),
  ),
  const Choice(
    title: 'Dr.Pradhipa Roy',
    subtitle: "Ent",
    time: "'11:00",
    image: "assets/life4.png",
    colour: Color(0xFFEBF7CE),
  ),
  const Choice(
    title: 'Dr.Criss Mark',
    subtitle: "Obstetrician",
    time: "08:10",
    image: "assets/life2.png",
    colour: Color(0xFFA9D3F0),
  ),
  const Choice(
    title: 'Dr.Sydan Hass',
    subtitle: "Dermatologist",
    time: "01:00",
    image: "assets/life1.png",
    colour: Color(0xFFCBDAFD),
  ),
  const Choice(
    title: 'Dr.Andarson Jhon',
    subtitle: "Medicine",
    time: "10:00",
    image: "assets/avatars.png",
    colour: Color(0xFFF3CDCA),
  ),
  const Choice(
    title: 'Dr.Pradhipa Roy',
    subtitle: "Ent",
    time: "'11:00",
    image: "assets/life4.png",
    colour: Color(0xFFEBF7CE),
  ),
];

class peoplelist extends StatefulWidget {
  const peoplelist({Key? key}) : super(key: key);

  @override
  State<peoplelist> createState() => _peoplelistState();
}

class _peoplelistState extends State<peoplelist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: Scrollbar(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(17, 0, 13, 55),
          shrinkWrap: true,
          children: List.generate(
            choices.length,
            (index) {
              return Center(
                child: ChoiceCard(
                  choice: choices[index],
                  item: choices[index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Detail(choice: choices[index]),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {required this.choice,
      required this.onTap,
      required this.item,
      this.selected: false});

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          height: 65,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: choice.colour,
                  ),
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  child: Image.asset(
                    choice.image,
                    fit: BoxFit.fill,
                    height: 47,
                    width: 47,
                  ),
                ),
                SizedBox(
                  width: 165,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 12.0,
                      ),
                      RichText(
                        maxLines: 1,
                        text: TextSpan(
                          text: choice.title,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14.0,
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RichText(
                        maxLines: 1,
                        text: TextSpan(
                          text: choice.subtitle,
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 10.0,
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFEFF2F8),
                  ),
                  alignment: Alignment(1.5, 0.0),
                  width: 65,
                  height: 30,
                  child: TextButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 15,
                            height: 15,
                            child: Image.asset(
                              "assets/clock.png",
                              fit: BoxFit.cover,
                              color: Colors.black54,
                              height: 15,
                              width: 15,
                            ),
                          ),
                          Text(
                            choice.time,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Slidecard extends StatelessWidget {
  const Slidecard(
      {required this.choice,
      required this.onTap,
      required this.item,
      this.selected: false});

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.0, -0.7),
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          color: Colors.white,
          elevation: 1,
          child: Container(
            height: 100,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 13, right: 13, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: choice.colour,
                        ),
                        width: 45,
                        height: 45,
                        alignment: Alignment.center,
                        child: Image.asset(
                          choice.image,
                          fit: BoxFit.fill,
                          height: 40,
                          width: 40,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 125,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 7.0,
                            ),
                            RichText(
                              maxLines: 1,
                              text: TextSpan(
                                text: choice.title,
                                style: TextStyle(
                                    color: Color(0xFF656876),
                                    fontSize: 13,
                                    fontFamily: 'NunitoSans',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            RichText(
                              maxLines: 1,
                              text: TextSpan(
                                text: choice.subtitle,
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 10.0,
                                    fontFamily: 'NunitoSans',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFFDEFDE),
                        ),
                        alignment: Alignment(1.5, 0.0),
                        width: 53,
                        height: 29,
                        child: TextButton(
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  width: 13,
                                  height: 13,
                                  child: Image.asset(
                                    "assets/star.png",
                                    fit: BoxFit.cover,
                                    // color: Colors.grey,
                                    height: 13,
                                    width: 13,
                                  ),
                                ),
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'NunitoSans',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 0),
                  child: Container(
                    width: 250,
                    child: Text(
                        'Flutter is a free and open-source mobile UI framework created by Google and released in May 2017.',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontFamily: 'NunitoSans',
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Detail extends StatelessWidget {
  final String description =
      "Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source";

  final Choice choice;
  Detail({required this.choice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: Text('Back',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'NunitoSans',
                fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
              icon: Container(
                width: 20,
                height: 20,
                child: Image.asset(
                  'assets/share.png',
                  color: Colors.black,
                ),
              ),
              onPressed: () {}),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: choice.colour,
                          ),
                          width: 120,
                          height: 120,
                          alignment: Alignment.center,
                          child: Image.asset(
                            choice.image,
                            fit: BoxFit.fill,
                            height: 149,
                            width: 149,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(choice.title,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontFamily: 'NunitoSans',
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 5,
                            ),
                            Text(choice.subtitle,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 17,
                                    fontFamily: 'NunitoSans',
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment(0.0, 0.0),
                width: 130,
                height: 40,
                child: Text(
                  "About Doctor",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Container(
                child: DescriptionTextWidget(text: description),
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 23,
                      height: 23,
                      child: Image.asset(
                        "assets/clock.png",
                        fit: BoxFit.cover,
                        color: Colors.blue,
                        height: 23,
                        width: 23,
                      ),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      "08:00 AM  To  02:00 PM",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'NunitoSans',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "(Every Day)",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'NunitoSans',
                        // fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 23,
                      height: 23,
                      child: Image.asset(
                        "assets/rating.png",
                        fit: BoxFit.cover,
                        color: Colors.green,
                        height: 23,
                        width: 23,
                      ),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      "05 Years",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'NunitoSans',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Of Experience",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'NunitoSans',
                        // fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 15, right: 0, bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 200,
                        height: 40,
                        child: Row(
                          children: [
                            Text(
                              "Reviews",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'NunitoSans',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 17,
                                    height: 17,
                                    child: Image.asset(
                                      "assets/star.png",
                                      fit: BoxFit.cover,
                                      // color: Colors.blue,
                                      height: 17,
                                      width: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "4.9  (1.2k)",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'NunitoSans',
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment(0.0, 0.0),
                        width: 100,
                        height: 40,
                        child: TextButton(
                          child: Text(
                            "View All",
                            style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'NunitoSans',
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 160,
                margin: EdgeInsets.only(left: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    choices.length,
                    (index) {
                      return Center(
                        child: Slidecard(
                          choice: choices[index],
                          item: choices[index],
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Detail(choice: choices[index])),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.white,
        child: InkWell(
          onTap: () => print('tap on close'),
          child: Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xFFABDAE5),
                  ),
                  width: 330,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Book Appointment",
                      style: TextStyle(
                          fontFamily: 'NunitoSans',
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DescriptionTextWidget extends StatefulWidget {
  final String text;

  DescriptionTextWidget({required this.text});

  @override
  _DescriptionTextWidgetState createState() =>
      new _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 100) {
      firstHalf = widget.text.substring(0, 170);
      secondHalf = widget.text.substring(100, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
      child: secondHalf.isEmpty
          ? new Text(firstHalf)
          : new Column(
              children: <Widget>[
                new Text(
                  flag ? (firstHalf + "...") : (firstHalf + secondHalf),
                  style: new TextStyle(
                      color: Colors.black54, fontSize: 14.5, height: 1.9),
                ),
                new InkWell(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Text(
                        flag ? "Read More" : "Read Less",
                        style: new TextStyle(
                            fontFamily: 'NunitoSans',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            fontSize: 17),
                      ),
                    ],
                  ),
                  onTap: () {
                    setState(
                      () {
                        flag = !flag;
                      },
                    );
                  },
                ),
              ],
            ),
    );
  }
}
