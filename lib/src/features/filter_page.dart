import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool ozgaruvchi1 = false;
  bool ozgaruvchi2 = false;
  bool ozgaruvchi3 = false;
  bool ozgaruvchi4 = false;
  bool ozgaruvchi5 = false;
  bool ozgaruvchi6 = false;
  bool ozgaruvchi7 = false;
  bool ozgaruvchi8 = false;
  bool ozgaruvchi9 = false;
  bool ozgaruvchi10 = false;
  bool ozgaruvchi11 = false;
  bool ozgaruvchi12 = false;
  bool ozgaruvchi13 = false;
  bool ozgaruvchi14 = false;
  bool ozgaruvchi15 = false;
  bool ozgaruvchi16 = false;
  bool ozgaruvchi17 = false;
  bool ozgaruvchi18 = false;
  bool ozgaruvchi19 = false;
  bool ozgaruvchi20 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Filter Search",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text(
                "Time",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
              Spacer(),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 10),
              Container(
                height: 40,
                width: 60,
                decoration: BoxDecoration(
                  color: ozgaruvchi1 == true ? Colors.white : Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  onPressed: () {
                    ozgaruvchi1 = !ozgaruvchi1;
                    setState(() {
                      if (ozgaruvchi1 == true) {
                        ozgaruvchi2 = false;
                        ozgaruvchi3 = false;
                        ozgaruvchi4 = false;
                      }
                    });
                  },
                  child: Text(
                    "All",
                    style: TextStyle(
                      color: ozgaruvchi1 == true ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 50,
                width: 90,
                decoration: BoxDecoration(
                  color: ozgaruvchi2 == true ? Colors.white : Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  onPressed: () {
                    ozgaruvchi2 = !ozgaruvchi2;
                    setState(() {
                      if (ozgaruvchi2 == true) {
                        ozgaruvchi1 = false;
                        ozgaruvchi3 = false;
                        ozgaruvchi4 = false;
                      }
                    });
                  },
                  child: Text(
                    "Newest",
                    style: TextStyle(
                      color: ozgaruvchi2 == true ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 50,
                width: 90,
                decoration: BoxDecoration(
                  color: ozgaruvchi3 == true ? Colors.white : Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  onPressed: () {
                    ozgaruvchi3 = !ozgaruvchi3;
                    setState(() {
                      if (ozgaruvchi3 == true) {
                        ozgaruvchi1 = false;
                        ozgaruvchi2 = false;
                        ozgaruvchi4 = false;
                      }
                    });
                  },
                  child: Text(
                    "Oldest",
                    style: TextStyle(
                      color: ozgaruvchi3 == true ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  color: ozgaruvchi4 == true ? Colors.white : Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  onPressed: () {
                    ozgaruvchi4 = !ozgaruvchi4;
                    setState(() {
                      if (ozgaruvchi4 == true) {
                        ozgaruvchi1 = false;
                        ozgaruvchi2 = false;
                        ozgaruvchi3 = false;
                      }
                    });
                  },
                  child: Text(
                    "Popularity",
                    style: TextStyle(
                      color: ozgaruvchi4 == true ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    "Rate",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                            color: ozgaruvchi5 == true
                                ? Colors.white
                                : Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              ozgaruvchi5 = !ozgaruvchi5;
                              setState(() {
                                if (ozgaruvchi5 == true) {
                                  ozgaruvchi1 = false;
                                  ozgaruvchi2 = false;
                                  ozgaruvchi3 = false;
                                  ozgaruvchi4 = false;
                                  ozgaruvchi6 = false;
                                  ozgaruvchi7 = false;
                                  ozgaruvchi8 = false;
                                }
                              });
                            },
                            child: Row(
                              children: [
                                Text(
                                  "5",
                                  style: TextStyle(
                                    color: ozgaruvchi5 == true
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  color: ozgaruvchi5 == true
                                      ? Colors.green
                                      : Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                            color: ozgaruvchi6 == true
                                ? Colors.white
                                : Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              ozgaruvchi6 = !ozgaruvchi6;
                              setState(() {
                                if (ozgaruvchi5 == true) {
                                  ozgaruvchi1 = false;
                                  ozgaruvchi2 = false;
                                  ozgaruvchi3 = false;
                                  ozgaruvchi4 = false;
                                  ozgaruvchi5 = false;
                                  ozgaruvchi7 = false;
                                  ozgaruvchi8 = false;
                                }
                              });
                            },
                            child: Row(
                              children: [
                                Text(
                                  "4",
                                  style: TextStyle(
                                    color: ozgaruvchi6 == true
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  color: ozgaruvchi6 == true
                                      ? Colors.green
                                      : Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                            color: ozgaruvchi7 == true? Colors.white : Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              ozgaruvchi7 = !ozgaruvchi7;
                              setState(() {
                                if (ozgaruvchi7 == true) {
                                  ozgaruvchi1 = false;
                                  ozgaruvchi2 = false;
                                  ozgaruvchi3 = false;
                                  ozgaruvchi4 = false;
                                  ozgaruvchi5 = false;
                                  ozgaruvchi6 = false;
                                  ozgaruvchi8 = false;
                                }
                              });
                            },
                            child: Row(
                              children: [
                                Text("3",style: TextStyle(
                                  color: ozgaruvchi7 == true
                                      ? Colors.black
                                      : Colors.white,
                                ),
                                ),
                                Icon(Icons.star, color: ozgaruvchi7 == true? Colors.green : Colors.white),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                            color: ozgaruvchi8 == true? Colors.white : Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              ozgaruvchi8 = !ozgaruvchi8;
                              setState(() {
                                if (ozgaruvchi8 == true) {
                                  ozgaruvchi1 = false;
                                  ozgaruvchi2 = false;
                                  ozgaruvchi3 = false;
                                  ozgaruvchi4 = false;
                                  ozgaruvchi5 = false;
                                  ozgaruvchi6 = false;
                                  ozgaruvchi7 = false;
                                }
                              });
                            },
                            child: Row(
                              children: [
                                Text("2",style: TextStyle(
                                  color: ozgaruvchi8 == true
                                      ? Colors.black
                                      : Colors.white,
                                ),),
                                Icon(Icons.star, color: ozgaruvchi8 == true? Colors.green : Colors.white),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                            color: ozgaruvchi9 == true? Colors.white : Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              ozgaruvchi9 = !ozgaruvchi9;
                              setState(() {
                                if (ozgaruvchi9 == true) {
                                  ozgaruvchi1 = false;
                                  ozgaruvchi2 = false;
                                  ozgaruvchi3 = false;
                                  ozgaruvchi4 = false;
                                  ozgaruvchi5 = false;
                                  ozgaruvchi6 = false;
                                  ozgaruvchi8 = false;
                                }
                              });
                            },
                            child: Row(
                              children: [
                                Text("1",style: TextStyle( color: ozgaruvchi9 == true ? Colors.black : Colors.white,),),
                                Icon(Icons.star, color: ozgaruvchi9 == true? Colors.green : Colors.white),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                "Category",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ],
          ),
          SizedBox(height: 10),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                      color: ozgaruvchi10 == true ? Colors.white : Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        ozgaruvchi10 = !ozgaruvchi10;
                        setState(() {
                          if (ozgaruvchi10 == true) {
                            ozgaruvchi1 = false;
                            ozgaruvchi2 = false;
                            ozgaruvchi3 = false;
                            ozgaruvchi4 = false;
                            ozgaruvchi5 = false;
                            ozgaruvchi6 = false;
                            ozgaruvchi8 = false;
                            ozgaruvchi9 = false;
                            ozgaruvchi10 = false;
                            ozgaruvchi11 = false;
                            ozgaruvchi12 = false;
                            ozgaruvchi12 = false;
                            ozgaruvchi13 = false;
                            ozgaruvchi14 = false;
                            ozgaruvchi15 = false;
                            ozgaruvchi16 = false;
                            ozgaruvchi17 = false;
                            ozgaruvchi18 = false;
                            ozgaruvchi19 = false;
                            ozgaruvchi20 = false;
                          }
                        });
                      },
                      child: Text("All",style: TextStyle( color: ozgaruvchi10 == true ? Colors.black : Colors.white,),),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 90,
                    decoration: BoxDecoration(
                      color: ozgaruvchi11 == true ? Colors.white : Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        ozgaruvchi11 = !ozgaruvchi11;
                        setState(() {
                          if (ozgaruvchi11 == true) {
                            ozgaruvchi1 = false;
                            ozgaruvchi2 = false;
                            ozgaruvchi3 = false;
                            ozgaruvchi4 = false;
                            ozgaruvchi5 = false;
                            ozgaruvchi6 = false;
                            ozgaruvchi7 = false;
                            ozgaruvchi8 = false;
                            ozgaruvchi9 = false;
                            ozgaruvchi10 = false;
                            ozgaruvchi12 = false;
                            ozgaruvchi13 = false;
                            ozgaruvchi14 = false;
                            ozgaruvchi15 = false;
                            ozgaruvchi16 = false;
                            ozgaruvchi17 = false;
                            ozgaruvchi18 = false;
                            ozgaruvchi19 = false;
                            ozgaruvchi20 = false;
                          }
                        });
                      },
                      child: Text("Cereal",style: TextStyle( color: ozgaruvchi11 == true ? Colors.black : Colors.white,),),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      color: ozgaruvchi11 == true? Colors.white : Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        ozgaruvchi11 = !ozgaruvchi11;
                        setState(() {
                          if (ozgaruvchi11 == true) {
                            ozgaruvchi1 = false;
                            ozgaruvchi2 = false;
                            ozgaruvchi3 = false;
                            ozgaruvchi4 = false;
                            ozgaruvchi5 = false;
                            ozgaruvchi6 = false;
                            ozgaruvchi7 = false;
                            ozgaruvchi8 = false;
                            ozgaruvchi9 = false;
                            ozgaruvchi10 = false;
                            ozgaruvchi12 = false;
                            ozgaruvchi13 = false;
                            ozgaruvchi14 = false;
                            ozgaruvchi15 = false;
                            ozgaruvchi16 = false;
                            ozgaruvchi17 = false;
                            ozgaruvchi18 = false;
                            ozgaruvchi19 = false;
                            ozgaruvchi20 = false;
                          }
                        });
                      },
                      child: Text("Vegetables",style: TextStyle( color: ozgaruvchi11 == true ? Colors.black : Colors.white,),),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: ozgaruvchi12 == true? Colors.white : Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        ozgaruvchi12 = !ozgaruvchi12;
                        setState(() {
                          if (ozgaruvchi12 == true) {
                            ozgaruvchi1 = false;
                            ozgaruvchi2 = false;
                            ozgaruvchi3 = false;
                            ozgaruvchi4 = false;
                            ozgaruvchi5 = false;
                            ozgaruvchi6 = false;
                            ozgaruvchi7 = false;
                            ozgaruvchi8 = false;
                            ozgaruvchi9 = false;
                            ozgaruvchi10 = false;
                            ozgaruvchi11 = false;
                            ozgaruvchi13 = false;
                            ozgaruvchi14 = false;
                            ozgaruvchi15 = false;
                            ozgaruvchi16 = false;
                            ozgaruvchi17 = false;
                            ozgaruvchi18 = false;
                            ozgaruvchi19 = false;
                            ozgaruvchi20 = false;
                          }
                        });
                      },
                      child: Row(
                        children: [
                          Text("Dinner",style: TextStyle( color: ozgaruvchi12 == true ? Colors.black : Colors.white,)),
                          Icon(Icons.star, color: ozgaruvchi12 == true? Colors.green : Colors.white),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        color: ozgaruvchi13 == true? Colors.white : Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          ozgaruvchi13 = !ozgaruvchi14;
                          setState(() {
                            if (ozgaruvchi13 == true) {
                              ozgaruvchi1 = false;
                              ozgaruvchi2 = false;
                              ozgaruvchi3 = false;
                              ozgaruvchi4 = false;
                              ozgaruvchi5 = false;
                              ozgaruvchi6 = false;
                              ozgaruvchi7 = false;
                              ozgaruvchi8 = false;
                              ozgaruvchi9 = false;
                              ozgaruvchi10 = false;
                              ozgaruvchi12 = false;
                              ozgaruvchi14 = false;
                              ozgaruvchi15 = false;
                              ozgaruvchi16 = false;
                              ozgaruvchi17 = false;
                              ozgaruvchi18 = false;
                              ozgaruvchi19 = false;
                              ozgaruvchi20 = false;
                            }
                          });
                        },
                        child: Text("Chinese",style: TextStyle( color: ozgaruvchi13 == true ? Colors.black : Colors.white,)),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        color: ozgaruvchi14 == true? Colors.white : Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          ozgaruvchi14 = !ozgaruvchi14;
                          setState(() {
                            if (ozgaruvchi11 == true) {
                              ozgaruvchi1 = false;
                              ozgaruvchi2 = false;
                              ozgaruvchi3 = false;
                              ozgaruvchi4 = false;
                              ozgaruvchi5 = false;
                              ozgaruvchi6 = false;
                              ozgaruvchi7 = false;
                              ozgaruvchi8 = false;
                              ozgaruvchi9 = false;
                              ozgaruvchi10 = false;
                              ozgaruvchi12 = false;
                              ozgaruvchi13 = false;
                              ozgaruvchi11 = false;
                              ozgaruvchi15 = false;
                              ozgaruvchi16 = false;
                              ozgaruvchi17 = false;
                              ozgaruvchi18 = false;
                              ozgaruvchi19 = false;
                              ozgaruvchi20 = false;
                            }
                          });
                        },
                        child: Text("Local Dish",style: TextStyle( color: ozgaruvchi14 == true ? Colors.black : Colors.white,)),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                        color: ozgaruvchi15 == true? Colors.white : Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          ozgaruvchi15 = !ozgaruvchi15;
                          setState(() {
                            if (ozgaruvchi11 == true) {
                              ozgaruvchi1 = false;
                              ozgaruvchi2 = false;
                              ozgaruvchi3 = false;
                              ozgaruvchi4 = false;
                              ozgaruvchi5 = false;
                              ozgaruvchi6 = false;
                              ozgaruvchi7 = false;
                              ozgaruvchi8 = false;
                              ozgaruvchi9 = false;
                              ozgaruvchi10 = false;
                              ozgaruvchi12 = false;
                              ozgaruvchi13 = false;
                              ozgaruvchi14 = false;
                              ozgaruvchi11 = false;
                              ozgaruvchi16 = false;
                              ozgaruvchi17 = false;
                              ozgaruvchi18 = false;
                              ozgaruvchi19 = false;
                              ozgaruvchi20 = false;
                            }
                          });
                        },
                        child: Text("Fruit",style: TextStyle( color: ozgaruvchi15 == true ? Colors.black : Colors.white,)),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        color: ozgaruvchi16 == true? Colors.white : Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          ozgaruvchi16 = !ozgaruvchi16;
                          setState(() {
                            if (ozgaruvchi16 == true) {
                              ozgaruvchi1 = false;
                              ozgaruvchi2 = false;
                              ozgaruvchi3 = false;
                              ozgaruvchi4 = false;
                              ozgaruvchi5 = false;
                              ozgaruvchi6 = false;
                              ozgaruvchi7 = false;
                              ozgaruvchi8 = false;
                              ozgaruvchi9 = false;
                              ozgaruvchi10 = false;
                              ozgaruvchi11 = false;
                              ozgaruvchi12 = false;
                              ozgaruvchi13 = false;
                              ozgaruvchi14 = false;
                              ozgaruvchi15 = false;
                              ozgaruvchi17 = false;
                              ozgaruvchi18 = false;
                              ozgaruvchi19 = false;
                              ozgaruvchi20 = false;
                            }
                          });
                        },
                        child: Text("BreakFast",style: TextStyle( color: ozgaruvchi16 == true ? Colors.black : Colors.white,)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    color: ozgaruvchi17 == true? Colors.white : Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      ozgaruvchi17 = !ozgaruvchi17;
                      setState(() {
                        if (ozgaruvchi17 == true) {
                          ozgaruvchi1 = false;
                          ozgaruvchi2 = false;
                          ozgaruvchi3 = false;
                          ozgaruvchi4 = false;
                          ozgaruvchi5 = false;
                          ozgaruvchi6 = false;
                          ozgaruvchi7 = false;
                          ozgaruvchi8 = false;
                          ozgaruvchi9 = false;
                          ozgaruvchi10 = false;
                          ozgaruvchi11 = false;
                          ozgaruvchi12 = false;
                          ozgaruvchi13 = false;
                          ozgaruvchi14 = false;
                          ozgaruvchi15 = false;
                          ozgaruvchi16 = false;
                          ozgaruvchi18 = false;
                          ozgaruvchi19 = false;
                          ozgaruvchi20 = false;
                        }
                      });
                    },
                    child: Text("Spanish",style: TextStyle( color: ozgaruvchi17 == true ? Colors.black : Colors.white,)),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 50,
                  width: 130,
                  decoration: BoxDecoration(
                    color: ozgaruvchi18 == true? Colors.white : Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      ozgaruvchi18 = !ozgaruvchi18;
                      setState(() {
                        if (ozgaruvchi18 == true) {
                          ozgaruvchi1 = false;
                          ozgaruvchi2 = false;
                          ozgaruvchi3 = false;
                          ozgaruvchi4 = false;
                          ozgaruvchi5 = false;
                          ozgaruvchi6 = false;
                          ozgaruvchi7 = false;
                          ozgaruvchi8 = false;
                          ozgaruvchi9 = false;
                          ozgaruvchi10 = false;
                          ozgaruvchi11 = false;
                          ozgaruvchi12 = false;
                          ozgaruvchi13 = false;
                          ozgaruvchi14 = false;
                          ozgaruvchi15 = false;
                          ozgaruvchi17 = false;
                          ozgaruvchi19 = false;
                          ozgaruvchi20 = false;
                        }
                      });
                    },
                    child: Text("Chinese",style: TextStyle( color: ozgaruvchi18 == true ? Colors.black : Colors.white,)),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 50,
                  width: 90,
                  decoration: BoxDecoration(
                    color: ozgaruvchi19 == true? Colors.white : Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: MaterialButton(onPressed: () {
                    ozgaruvchi19 = !ozgaruvchi19;
                    setState(() {
                      if (ozgaruvchi19 == true) {
                        ozgaruvchi1 = false;
                        ozgaruvchi2 = false;
                        ozgaruvchi3 = false;
                        ozgaruvchi4 = false;
                        ozgaruvchi5 = false;
                        ozgaruvchi6 = false;
                        ozgaruvchi7 = false;
                        ozgaruvchi8 = false;
                        ozgaruvchi9 = false;
                        ozgaruvchi10 = false;
                        ozgaruvchi11 = false;
                        ozgaruvchi12 = false;
                        ozgaruvchi13 = false;
                        ozgaruvchi14 = false;
                        ozgaruvchi15 = false;
                        ozgaruvchi16 = false;
                        ozgaruvchi17 = false;
                        ozgaruvchi18 = false;
                        ozgaruvchi20 = false;
                      }
                    });
                  },
                      child: Text("Lunch",style: TextStyle( color: ozgaruvchi19 == true ? Colors.black : Colors.white,))),
                ),
              ],
            ),
          ),
          SizedBox(height: 60),
          Center(
            child: Container(
              height: 70,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  "Filter",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40,color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
