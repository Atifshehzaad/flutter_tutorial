import 'package:flutter/material.dart';

class ExpenseTrackerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {
              // Filter functionality can be added here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Balance Overview Section
          Container(
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total Balance',
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
                SizedBox(height: 5),
                Text(
                  '\$1,250.00',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildBalanceInfo('Income', '\$3,000', Colors.green),
                    _buildBalanceInfo('Expense', '\$1,750', Colors.red),
                  ],
                ),
              ],
            ),
          ),

          // Recent Transactions List
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                Text(
                  'Recent Transactions',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 10),
                _buildTransactionCard(
                  title: 'Grocery Shopping',
                  date: 'Today, 9:00 AM',
                  amount: '- \$50.00',
                  color: Colors.redAccent,
                  icon: Icons.shopping_cart,
                ),
                _buildTransactionCard(
                  title: 'Salary',
                  date: 'Yesterday, 5:00 PM',
                  amount: '+ \$2,500.00',
                  color: Colors.greenAccent,
                  icon: Icons.monetization_on,
                ),
                _buildTransactionCard(
                  title: 'Gym Membership',
                  date: '2 days ago',
                  amount: '- \$60.00',
                  color: Colors.redAccent,
                  icon: Icons.fitness_center,
                ),
                _buildTransactionCard(
                  title: 'Freelance Project',
                  date: 'Last Week',
                  amount: '+ \$400.00',
                  color: Colors.greenAccent,
                  icon: Icons.work,
                ),
              ],
            ),
          ),
        ],
      ),

      // Floating Action Button for Adding New Transaction
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to a screen to add a new transaction
        },
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.add),
      ),
    );
  }

  // Balance Info Section
  Widget _buildBalanceInfo(String label, String amount, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.white70, fontSize: 14),
        ),
        SizedBox(height: 5),
        Text(
          amount,
          style: TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  // Transaction Card for Recent Transactions
  Widget _buildTransactionCard({
    required String title,
    required String date,
    required String amount,
    required Color color,
    required IconData icon,
  }) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.2),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(date),
        trailing: Text(
          amount,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
