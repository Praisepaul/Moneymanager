// ignore_for_file: file_names, non_constant_identifier_names, prefer_typing_uninitialized_variables

enum TransactionType { inflow, outflow }

enum ItemCategoryType {
  food,
  transport,
  shopping,
  fashion,
  education,
  health,
  transfer,
  entertainment,
  others
}

class UserInfo {
  final String name;
  final String email;
  final String totalBalance;
  final String inflow;
  final String outflow;
  final List<Transaction> transactions;

  const UserInfo({
    required this.name,
    required this.email,
    required this.totalBalance,
    required this.inflow,
    required this.outflow,
    required this.transactions,
  });
}

class Transaction {
  final ItemCategoryType categoryType;
  final TransactionType transactionType;
  final String itemCategoryName;
  final String itemName;
  final String amount;
  final String date;

  const Transaction(
    this.categoryType,
    this.transactionType,
    this.itemCategoryName,
    this.itemName,
    this.amount,
    this.date,
  );
}

const List<Transaction> transactions = [
  Transaction(
    ItemCategoryType.fashion,
    TransactionType.outflow,
    "Shoes",
    "Puma Sneakers",
    "₹ 8500",
    "12th Oct 2021",
  ),
  Transaction(
    ItemCategoryType.food,
    TransactionType.outflow,
    "Groceries",
    "Vegetables",
    "₹ 500",
    "11th Oct 2021",
  ),
  Transaction(
    ItemCategoryType.education,
    TransactionType.outflow,
    "Books",
    "The Lean Startup",
    "₹ 400",
    "10th Oct 2021",
  ), 
  Transaction(
    ItemCategoryType.health,
    TransactionType.outflow,
    "Medicines",
    "Paracetamol",
    "₹ 100",
    "9th Oct 2021",
  ),
  Transaction(
    ItemCategoryType.entertainment,
    TransactionType.outflow,
    "Movies",
    "Black Widow",
    "₹ 300",
    "8th Oct 2021",
  ),
  Transaction(
    ItemCategoryType.transport,
    TransactionType.outflow,
    "Fuel",
    "Petrol",
    "₹ 1000",
    "7th Oct 2021",
  ),
  Transaction(
    ItemCategoryType.shopping,
    TransactionType.outflow,
    "Electronics",
    "Headphones",
    "₹ 1500",
    "6th Oct 2021",
  ),
  Transaction(
    ItemCategoryType.others,
    TransactionType.outflow,
    "Miscellaneous",
    "Gift",
    "₹ 200",
    "5th Oct 2021",
  ),
  Transaction(
    ItemCategoryType.transfer,
    TransactionType.inflow,
    "Salary",
    "Monthly Salary",
    "₹ 30000",
    "4th Oct 2021",
  ),
  Transaction(
    ItemCategoryType.transfer,
    TransactionType.inflow,
    "Refund",
    "Tax Refund",
    "₹ 5000",
    "3rd Oct 2021",
  ),
];

const List<Transaction> transactions2 = [
  Transaction(
    ItemCategoryType.fashion,
    TransactionType.outflow,
    "Leather Jacket",
    "Black Jacket",
    "₹ 5000",
    "12th Oct 2021",
  ),
  Transaction(
    ItemCategoryType.food,
    TransactionType.outflow,
    "Pizza",
    "Margherita",
    "₹ 300",
    "11th Oct 2021",
  ),
  Transaction(
    ItemCategoryType.education,
    TransactionType.outflow,
    "Tuition Fee",
    "Semester Fee",
    "₹ 50000",
    "10th Oct 2021",
  ), 
  Transaction(
    ItemCategoryType.health,
    TransactionType.outflow,
    "Medicines",
    "Augmentin",
    "₹ 200",
    "9th Oct 2021",
  )
];
const userdata = UserInfo(
    name: "Praise Paul",
    email: "praise20024christ@gmail.com",
    totalBalance: "₹ 295000",
    inflow: "₹ 30000",
    outflow: "₹ 20000",
    transactions: transactions);
