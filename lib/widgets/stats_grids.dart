import 'package:flutter/material.dart';

class StatsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.25,
        child: Column(
          children: [
            Flexible(
              child: Row(
                children: [
                  _buildStatCard('Total Cases', '1.81 M', Colors.orange),
                  _buildStatCard('Deaths', '105 K', Colors.red),
                ],
              ),
            ),
            Flexible(
              child: Row(
                children: [
                  _buildStatCard('Recovered', '391 K', Colors.green),
                  _buildStatCard('Active', '1.31 M', Colors.lightBlue),
                  _buildStatCard('Critical', 'N/A', Colors.purple),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Expanded _buildStatCard(String title, String count, MaterialColor color) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              count,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
