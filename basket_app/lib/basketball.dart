import 'package:flutter/material.dart';

class Basketball extends StatefulWidget {
  const Basketball({super.key});

  @override
  State<Basketball> createState() => _BasketballState();
}

class _BasketballState extends State<Basketball> {
  int count1 = 0;
  int count2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BasketBall points counter',
          style: TextStyle(
            color: Colors.white,
            backgroundColor: Colors.orange,
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(children: [
            Container(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    // SizedBox(),
                    MaterialButton(
                      onPressed: () {
                        
                      },
                      child: Text(
                        count1.toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 100,
                        ),
                      ),
                    ),
                    SizedBox(),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          count1 += 1;
                        });
                      },
                      child: Text(
                        'add point 1',
                        style: TextStyle(
                            backgroundColor: Colors.orange, fontSize: 30),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          count1 += 2;
                        });
                      },
                      child: Text(
                        'add point 2',
                        style: TextStyle(
                            backgroundColor: Colors.orange, fontSize: 30),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          count1 += 3;
                        });
                      },
                      child: Text(
                        'add point 3',
                        style: TextStyle(
                            backgroundColor: Colors.orange, fontSize: 30),
                      ),
                    ),
                  ],
                )),

            VerticalDivider(
              width: 20,
              indent: 8,
              endIndent: 200,
              thickness: 5,
            ),

            
            Container(
                alignment: Alignment.topRight,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(color: Colors.black, fontSize: 40),
                      ),
                      // SizedBox(),
                      MaterialButton (onPressed: (){},
                        child: Text(
                          count2.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 100,
                          ),
                        ),
                      ),
                      SizedBox(),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            count2 += 1;
                          });
                        },
                        child: Text(
                          'add point 1',
                          style: TextStyle(
                              backgroundColor: Colors.orange, fontSize: 30),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            count2 += 2;
                          });
                        },
                        child: Text(
                          'add point 2',
                          style: TextStyle(
                              backgroundColor: Colors.orange, fontSize: 30),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            count2 += 2;
                          });
                        },
                        child: Text(
                          'add point 3',
                          style: TextStyle(
                              backgroundColor: Colors.orange, fontSize: 30),
                        ),
                      ),
                    ]))
          ]),
          SizedBox(
            height: 100,
          ),
          Container(
            width: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.orange, borderRadius: BorderRadius.only()),
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  count2=0;
                  count1=0;
                });
              },
              child: Text('reset'),
            ),
          )
        ],
      ),
    );
  }
}
