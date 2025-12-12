import 'package:flutter/material.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:medico_project/authentications/patient_authantication/login_screen/login_view_page.dart';
import 'package:medico_project/screens/patient_screen/chatbot/chatbot_view.dart';
import 'package:medico_project/screens/patient_screen/feeback_hospage.dart';
import 'package:medico_project/screens/patient_screen/view_my_hosbooking.dart';

// ...Imports remain the same...

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
              // floatingActionButton: FloatingActionButton(
              //   onPressed: () {
              //     if (userId != null) {
              //       Navigator.of(context).push(
              //         MaterialPageRoute(
              //           builder: (context) {
              //             return ChatScreen(userId: userId!);
              //           },
              //         ),
              //       );
              //     }
              //   },
              //   child: const Icon(Icons.chat),
              // ),
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
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HosDoctorAppointmentsPage(userId: userId!,),
                      ),
                    );
                  } else if (index == 2) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
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
                  // Tab 0 -- My Booking
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: const Color.fromARGB(255, 158, 233, 225),
                  ),
                  // Tab 1 -- Home with Chatbot Card
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.12),
                                blurRadius: 18,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 36),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                              //  mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        colors: [Color(0xFFA6C8FF), Color(0xFFB49EE7)],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                    ),
                                    child: Center(
                                      child: Icon(Icons.smart_toy, size: 48, color: Colors.white),
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  const Text(
                                    "Ask Our Chatbot",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    "Get instant answers to your questions.",
                                    style: TextStyle(fontSize: 16, color: Colors.grey),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 30),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color.fromARGB(255, 85, 115, 173),
                                          minimumSize: Size(double.infinity, 54),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(26.0),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => ChatScreen(userId: userId ?? 0),
                                            ),
                                          );
                                        },
                                        child: const Text(
                                          "Start Chat",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Tab 2 -- Logout (background only)
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
            ),
            SizedBox(height: 10),
            Text('name'),
            SizedBox(height: 30),
            ListTile(
              leading: Icon(Icons.home, color: Color.fromARGB(255, 163, 79, 182)),
              title: Text("Home", style: TextStyle(color: Color.fromARGB(255, 14, 13, 13))),
              selectedColor: Colors.purple,
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(userId: userId!),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.book_rounded, color: Color.fromARGB(255, 103, 30, 119)),
              title: Text("View Booking History", style: TextStyle(color: Color.fromARGB(255, 10, 10, 10))),
              onTap: () => HosDoctorAppointmentsPage(userId: userId!,),
            ),
            ListTile(
              leading: Icon(Icons.paypal_sharp, color: Color.fromARGB(255, 163, 79, 182)),
              title: Text("Feeback", style: TextStyle(color: Color.fromARGB(255, 10, 10, 10))),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => HosFeedbackPage(userid: userId!),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outlined, color: Color.fromARGB(255, 163, 79, 182)),
              title: Text("About Us", style: TextStyle(color: Color.fromARGB(255, 10, 10, 10))),
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Color.fromARGB(255, 163, 79, 182)),
              title: Text("Logout", style: TextStyle(color: Color.fromARGB(255, 10, 10, 10))),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

