import 'package:flutter/material.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({super.key, required this.name, required this.address});
  final String name;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        UserDescription(name: name, address: address),
        const Spacer(),
        InkWell(
          onTap: () => {},
          child: Container(
            width: 85, // square size
            height: 37,
            decoration: BoxDecoration(
              color: Color(0xFF129575), // background color
              borderRadius: BorderRadius.circular(12), // rounded corners
              boxShadow: [], // no shadow
            ),
            child: Center(
              child: Text(
                'Follow',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class UserDescription extends StatelessWidget {
  const UserDescription({super.key, required this.name, required this.address});
  final String name;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(backgroundImage: NetworkImage('https://i.pravatar.cc/')),
        const SizedBox(width: 10),
        Column(
          children: [
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
            ),
            Row(
              children: [
                const SizedBox(width: 2),
                Icon(Icons.location_on, color: Color(0xFF129575)),
                Text(
                  address,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                    color: Color(0xFFA9A9A9),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
