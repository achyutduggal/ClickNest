import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(),
            ProfileInfoSection(),
            ShoppingSettingsSection(),
            AccountSettingsSection(),
            LogoutButton(),
          ],
        ),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('images/trial/trial2.jpeg')
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('John Doe', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
              Text('john.doe@example.com', style: TextStyle(color: Colors.black, fontSize: 16)),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileInfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileInfoRow(label: 'Username', value: 'john_doe'),
          ProfileInfoRow(label: 'Email', value: 'john.doe@example.com'),
          ProfileInfoRow(label: 'Phone', value: '+1234567890'),
          ProfileInfoRow(label: 'Address', value: '123 Main St, Anytown, USA'),
        ],
      ),
    );
  }
}

class ProfileInfoRow extends StatelessWidget {
  final String label;
  final String value;

  ProfileInfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(value, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}

class ShoppingSettingsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Shopping', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('My Cart'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {

            },
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('Wishlist'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {

            },
          ),
        ],
      ),
    );
  }
}

class AccountSettingsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Account Settings', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Change Password'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Change password logic
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Notifications logic
            },
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text('Privacy'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Privacy logic
            },
          ),
        ],
      ),
    );
  }
}

class LogoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: () {
          // Logout logic
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.redAccent,
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: const Text('Logout', style: TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}
