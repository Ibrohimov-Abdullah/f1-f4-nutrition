
    import 'package:flutter/material.dart';

    class Asosiy_oyna extends StatefulWidget {
    @override
    State<Asosiy_oyna> createState() => _Asosiy_oynaState();
    }

    class _Asosiy_oynaState extends State<Asosiy_oyna> {
    bool isChecked = false;

    @override
    Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
    body: SingleChildScrollView(
    child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 60),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Create an account",
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black),
    ),
    SizedBox(height: 5),
    Text(
    "Let’s help you set up your account, it won’t take long.",
    style: TextStyle(color: Colors.black54, fontSize: 14),
    ),
    SizedBox(height: 30),
    Text("Name",
    style: TextStyle(
    fontWeight: FontWeight.w600, color: Colors.black)),
    SizedBox(height: 8),
    TextField(
    decoration: InputDecoration(
    hintText: "Enter Name",
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    ),
    ),
    ),
    SizedBox(height: 15),
    Text("Email",
    style: TextStyle(
    fontWeight: FontWeight.w600, color: Colors.black)),
    SizedBox(height: 8),
    TextField(
    decoration: InputDecoration(
    hintText: "Enter Email",
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    ),
    ),
    ),
    SizedBox(height: 15),
    Text("Password",
    style: TextStyle(
    fontWeight: FontWeight.w600, color: Colors.black)),
    SizedBox(height: 8),
    TextField(
    obscureText: true,
    decoration: InputDecoration(
    hintText: "Enter Password",
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    ),
    ),
    ),
    SizedBox(height: 15),
    Text("Confirm Password",
    style: TextStyle(
    fontWeight: FontWeight.w600, color: Colors.black)),
    SizedBox(height: 8),
    TextField(
    obscureText: true,
    decoration: InputDecoration(
    hintText: "Retype Password",
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    ),
    ),
    ),
    SizedBox(height: 15),
    Row(
    children: [
    Checkbox(
    value: isChecked,
    activeColor: Colors.orange,
    onChanged: (value) {
    setState(() {
    isChecked = value!;
    });
    },
    ),
    Text(
    "Accept terms & Condition",
    style: TextStyle(color: Colors.orange),
    )
    ],
    ),
    SizedBox(height: 20),
    GestureDetector(
    onTap: () {},
    child: Container(
    height: 55,
    width: double.infinity,
    decoration: BoxDecoration(
    color: Colors.green,
    borderRadius: BorderRadius.circular(8),
    ),
    child: Row(


    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(
    "Sign Up",
    style: TextStyle(color: Colors.white, fontSize: 16),
    ),
    SizedBox(width: 10),
    Icon(Icons.arrow_forward, color: Colors.white),
    ],
    ),
    ),
    ),
    SizedBox(height: 25),
    Row(
    children: [
    Expanded(child: Divider(thickness: 1)),
    Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Text("Or Sign in With",
    style: TextStyle(color: Colors.black54)),
    ),
    Expanded(child: Divider(thickness: 1)),
    ],
    ),
    SizedBox(height: 25),


    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    // Google
    Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    border: Border.all(color: Colors.grey),
    image: DecorationImage(
    image: AssetImage(
    "assets/Food Recipe App (Community).zip",
    ),
    fit: BoxFit.cover,
    ),
    ),
    ),
    SizedBox(width: 20),
    // Facebook
    Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    border: Border.all(color: Colors.grey),
    ),
    child: ClipRRect(
    borderRadius: BorderRadius.circular(8),
    child: Image.network(
    "https://upload.wikimedia.org/wikipedia/commons/0/05/Facebook_Logo_%282019%29.png",
    fit: BoxFit.cover,
    ),
    ),
    ),
    ],
    ),

    SizedBox(height: 30),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("Already a member? "),
    GestureDetector(
    onTap: () {},
    child: Text(
    "Sign In",
    style: TextStyle(color: Colors.orange),
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    ),
    );
    }
    }