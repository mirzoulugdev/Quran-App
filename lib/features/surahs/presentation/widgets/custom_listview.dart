import 'package:flutter/material.dart';

class CustomListviewWidget extends StatelessWidget {
  final String leading, title1, title2,triling;
  const CustomListviewWidget({
    super.key,
    required TabController tabController, required this.leading, required this.title1, required this.title2, required this.triling,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: _tabController,
        children: [
          ListTile(
            leading: Image.asset(leading),
            title: Text(
              title1,
              style: TextStyle(
                  color: Color(0xff65D6FC),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            subtitle: Text(
              title2,
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            trailing: Text(
              triling,
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff65D6FC),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
