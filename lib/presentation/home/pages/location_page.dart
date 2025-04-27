import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  final double? latitude;
  final double? longitude;
  const LocationPage({
    super.key,
    this.latitude,
    this.longitude,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Location'),
      ),
      body: const Center(
        child: Text('Location page'),
      ),
    );
  }
}
