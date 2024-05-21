import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double relativeHeight = MediaQuery.of(context).size.height * (600 / 896);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xffE79796), Color(0xffE79796).withOpacity(0.0)],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: [
                IconButton(
                  icon: Image.asset('assets/images/settings.png'),
                  onPressed: () {
                    // Handle button tap.
                  },
                ),
              ],
            ),
          ),
          body: Stack(
            children: [
              Positioned(
                right: 0,
                child: SizedBox(
                  width: 250,
                  child: Image.asset(
                    'assets/images/yarn01.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: width,
                  height: relativeHeight,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.75),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 80),
                      Container(
                        margin: EdgeInsets.only(left: 42.0),
                        child: Text(
                          'Anonymous Kitten',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontFamily: 'GmarketSans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 42.0),
                        child: Text(
                          'Computing',
                          style: TextStyle(
                            fontFamily: 'GmarketSans',
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 42.0, top: 20.0, right: 42.0),
                        height: 113,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 177, 132),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 105,
                              height: 105,
                              margin: EdgeInsets.only(left: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Image.asset(
                                      'assets/images/calculator.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Container(
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromARGB(255, 255, 177, 132),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 5,
                                    right: 5,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromARGB(255, 255, 177, 132),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    left: 0,
                                    child: Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromARGB(255, 255, 177, 132),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    right: 40,
                                    child: Container(
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromARGB(255, 255, 177, 132),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromARGB(255, 255, 177, 132),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                                width:
                                    10), // Add some space between the box and the text
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'GPA Calculator',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                      fontFamily: 'GmarketSans',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Try out our GPA calculator...',
                                    style: TextStyle(
                                      fontFamily: 'GmarketSans',
                                      fontSize: 10.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 10.0, right: 20.0),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // TODO: Link to GPA Calculator
                                        },
                                        child: Text(
                                          'Get Started',
                                          style: TextStyle(
                                            fontFamily: 'GmarketSans',
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            side:
                                                BorderSide(color: Colors.white),
                                          ),
                                          backgroundColor: Color.fromARGB(
                                              255, 255, 178, 132),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 42.0, top: 20.0),
                        child: Text(
                          'Bookmarks',
                          style: TextStyle(
                            fontFamily: 'GmarketSans',
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0,
                            color: Color(0xffE79796), // Add this line
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 42.0),
                          child: ListView.separated(
                            itemCount:
                                10, // TODO: Replace with actual list length
                            separatorBuilder: (context, index) =>
                                Divider(color: Color(0xffE79796)),
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(bottom: 10.0),
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.0,
                                                  vertical: 5.0),
                                              decoration: BoxDecoration(
                                                color: Color(0xffE79796),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    'Tag ${index + 1}',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontFamily:
                                                            'GmarketSans',
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(width: 10.0),
                                                  Image.asset(
                                                      'assets/images/tag_icon.png',
                                                      color: Colors.white),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 20.0),
                                            Text(
                                              'Post ${index + 1}',
                                              style: TextStyle(
                                                fontFamily: 'GmarketSans',
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Date ${index + 1}',
                                          style: TextStyle(
                                            fontFamily: 'GmarketSans',
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10.0),
                                    Text(
                                      'Content ${index + 1}',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'GmarketSans'),
                                    ),
                                  ],
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
              Positioned(
                top: MediaQuery.of(context).size.height - relativeHeight - 110,
                left: 36.0,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 60.0,
                      backgroundColor: Colors.grey,
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        width: 15.0,
                        height: 15.0,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height - relativeHeight - 30,
                right: 36.0,
                child: IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // Handle button tap.
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
