import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                    radius: 48, // Image radius
                    backgroundImage: AssetImage('lib/images/avatar.jpg'),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const _ProfileProperty(
              propertyName: "Email",
              propertyValue: "19110373@student.hcmute.edu.vn",
              maxLines: 2,
            ),
            const SizedBox(height: 12),
            const _ProfileProperty(
              propertyName: "Username",
              propertyValue: "hungpq",
              maxLines: 2,
            ),
            const SizedBox(height: 12),
            const _ProfileProperty(
              propertyName: "Password",
              propertyValue: "Change Password",
              maxLines: 2,
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsetsDirectional.only(
                      start: 12,
                      bottom: 12),
                  child: Text(
                    "Personal Info",
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  alignment: Alignment.bottomCenter,
                  icon: const Icon(
                    Icons.edit_rounded,
                    color: Colors.white,
                    size: 20,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            const _ProfileProperty(
              propertyName: "First Name",
              propertyValue: "Hung",
              maxLines: 2,
            ),
            const SizedBox(height: 12),
            const _ProfileProperty(
              propertyName: "Last Name",
              propertyValue: "Pham Quang",
              maxLines: 2,
            ),
            const SizedBox(height: 12),
            const _ProfileProperty(
              propertyName: "Gender",
              propertyValue: "Male",
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileProperty extends StatelessWidget {
  const _ProfileProperty({
    Key? key,
    required this.propertyName,
    required this.propertyValue,
    this.maxLines = 1,
  }) : super(key: key);

  final String propertyName;
  final String propertyValue;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            propertyName,
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
          Expanded(
            child: Text(
              propertyValue,
              maxLines: maxLines,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
