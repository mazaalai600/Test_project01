import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset('assets/proback.jpg'),
          Transform.translate(
            offset: const Offset(0, 100),
            child: Column(
              children: <Widget>[
                _buildProfileImage(context),
                _buildProfileDetails(context),
                _buildAction(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileImage(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: ClipOval(
        child: Image.asset(
          'assets/temka.jpg',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  Widget _buildProfileDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'temka',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w600,
            ),
          ),
          _buildDetailsRow('nas', '21'),
          _buildDetailsRow('tuluv', 'idvehgvi'),
        ],
      ),
    );
  }

  Widget _buildDetailsRow(String heading, String value) {
    return Row(
      children: <Widget>[
        Text(
          '$heading: ',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(value)
      ],
    );
  }

  Widget _buildAction(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildIcon(Icons.restaurant, 'Hvns'),
        _buildIcon(Icons.favorite, 'sonirholtoi'),
        _buildIcon(Icons.directions_walk, 'alhalt'),
      ],
    );
  }

  Widget _buildIcon(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: 40,
          ),
          Text(text),
        ],
      ),
    );
  }
}
