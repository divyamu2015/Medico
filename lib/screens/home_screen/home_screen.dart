import 'package:flutter/material.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:medico_project/authantication/login_screen/login_view_page.dart';
import 'package:medico_project/screens/booking_page.dart/booking_page_view.dart';
import 'package:medico_project/screens/chatbot/chatbot_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.userId});
  final int userId;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<SliderDrawerState> _sliderDrawerKey =
      GlobalKey<SliderDrawerState>();
  String title = "Medico Care";

  int _tabIndex = 1;
  int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }

  int? userId;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
    userId = widget.userId;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SliderDrawer(
          key: _sliderDrawerKey,
          sliderOpenSize: 300.0,
          slideDirection: SlideDirection.leftToRight,
          sliderBoxShadow: SliderBoxShadow(
            blurRadius: 25,
            spreadRadius: 5,
            color: const Color.fromARGB(255, 94, 135, 168),
          ),
          slider: _buildDrawer(),
          appBar: SliderAppBar(
            config: SliderAppBarConfig(
              title: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          child: SafeArea(
            child: Scaffold(
              extendBody: true,
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  if (userId != null) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return ChatScreen(userId: userId!);
                        },
                      ),
                    );
                  } else {
                    // Optional: handle error or show a toast/snackbar
                  }
                },
                child: Icon(Icons.chat),
              ),
              bottomNavigationBar: CircleNavBar(
                activeIcons: const [
                  Icon(Icons.book_rounded, color: Colors.deepPurple),
                  Icon(Icons.home, color: Colors.deepPurple),
                  Icon(Icons.logout, color: Colors.deepPurple),
                ],
                inactiveIcons: const [
                  Text("My Booking"),
                  Text("Home"),
                  Text("Logout"),
                ],
                color: Colors.white,
                height: 60,
                circleWidth: 60,
                activeIndex: tabIndex,
                onTap: (index) {
                  tabIndex = index;
                  pageController.jumpToPage(tabIndex);
                  if (index == 0) {
                    // Navigate to My Booking page
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => BookingPageView(),
                      ),
                    );
                  } else if (index == 2) {
                    // Navigate to Logout page OR perform logout then navigate
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                    // Or perform logout logic here then navigate
                  }
                },
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
                cornerRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(24),
                  bottomLeft: Radius.circular(24),
                ),
                shadowColor: const Color.fromARGB(255, 248, 219, 175),
                elevation: 10,
              ),
              body: PageView(
                controller: pageController,
                onPageChanged: (v) {
                  tabIndex = v;
                },
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: const Color.fromARGB(255, 158, 233, 225),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: const Color.fromARGB(255, 180, 210, 235),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: const Color.fromARGB(255, 162, 238, 209),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDrawer() {
    return Container(
      width: 200.0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              child: Icon(Icons.person, size: 50, color: Colors.white),
              // backgroundImage: AssetImage('assets/images/user.png'),
            ),
            SizedBox(height: 10),
            Text('name'),
            SizedBox(height: 30),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Color.fromARGB(255, 163, 79, 182),
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Color.fromARGB(255, 14, 13, 13)),
              ),
              selectedColor: Colors.purple,
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen(userId: userId!);
                    },
                  ),
                );
              },
            ),
            // ListTile(
            //   leading: Icon(
            //     Icons.feedback_outlined,
            //     color: Color.fromARGB(255, 163, 79, 182),
            //   ),
            //   title: Text(
            //     "Feedback",
            //     style: TextStyle(color: Color.fromARGB(255, 10, 10, 10)),
            //   ),
            // ),
            ListTile(
              leading: Icon(
                Icons.book_rounded,
                color: Color.fromARGB(255, 103, 30, 119),
              ),
              title: Text(
                "View Booking History",
                style: TextStyle(color: Color.fromARGB(255, 10, 10, 10)),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.paypal_sharp,
                color: Color.fromARGB(255, 163, 79, 182),
              ),
              title: Text(
                "Payment History",
                style: TextStyle(color: Color.fromARGB(255, 10, 10, 10)),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.info_outlined,
                color: Color.fromARGB(255, 163, 79, 182),
              ),
              title: Text(
                "About Us",
                style: TextStyle(color: Color.fromARGB(255, 10, 10, 10)),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Color.fromARGB(255, 163, 79, 182),
              ),
              title: Text(
                "Logout",
                style: TextStyle(color: Color.fromARGB(255, 10, 10, 10)),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
