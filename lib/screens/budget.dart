import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BudgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Budget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Display the date and other controls
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Thu, Nov 19',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.notifications),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Pie chart
              Container(
                height: 200, // Set a fixed height for the PieChart
                child: Center(
                  child: PieChart(
                    PieChartData(
                      sections: showingSections(),
                      centerSpaceRadius: 40,
                      sectionsSpace: 0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Budgets section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Budgets',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('+ Add new'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BudgetCategoryCard(category: 'Restaurant', amount: 0),
                    BudgetCategoryCard(category: 'Transport', amount: 0),
                    BudgetCategoryCard(category: 'Grocery', amount: 0),
                    BudgetCategoryCard(category: 'Medication', amount: 0),
                    BudgetCategoryCard(category: 'Beauty', amount: 0),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Budgets details placeholder
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.grey[300],
                child: Center(
                  child: Text('Budgets details will be displayed here'),
                ),
              ),
              SizedBox(height: 20),
              // Transactions section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transactions',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('+ Add new'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Transactions details placeholder
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.grey[300],
                child: Center(
                  child: Text('Transactions details will be displayed here'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return [
      PieChartSectionData(
        color: Colors.green,
        value: 20,
        title: 'Grocery',
        radius: 50,
        titleStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      PieChartSectionData(
        color: Colors.blue,
        value: 20,
        title: 'Medication',
        radius: 50,
        titleStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      PieChartSectionData(
        color: Colors.orange,
        value: 20,
        title: 'Transport',
        radius: 50,
        titleStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      PieChartSectionData(
        color: Colors.purple,
        value: 20,
        title: 'Beauty',
        radius: 50,
        titleStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      PieChartSectionData(
        color: Colors.red,
        value: 20,
        title: 'Cloth',
        radius: 50,
        titleStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
    ];
  }
}

class BudgetCategoryCard extends StatelessWidget {
  final String category;
  final double amount;

  BudgetCategoryCard({required this.category, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 100, // Set width to fix RenderFlex error
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.category), // You can use appropriate icons here
            Text(category),
            Text('\$$amount'),
          ],
        ),
      ),
    );
  }
}
