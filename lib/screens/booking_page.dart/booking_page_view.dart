import 'package:flutter/material.dart';

class BookingPageView extends StatefulWidget {
  const BookingPageView({super.key});

  @override
  State<BookingPageView> createState() => _BookingPageViewState();
}

class _BookingPageViewState extends State<BookingPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Hello, Booking Page!'),
    );
  }
}