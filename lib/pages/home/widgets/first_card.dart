import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.credit_card,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Cartão de crádito",
                                style: TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          
                          padding: const EdgeInsets.only(left:20, top: 20,bottom: 20),
                          child: Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                      "FATURA ATUAL",
                                      style: TextStyle(color: Colors.teal, fontSize: 13, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      "R\$ 600,30",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(color: Colors.teal, fontSize: 28, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                      
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 12, bottom: 12, left: 10, right: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        child: Column(children: <Widget>[
                          Expanded(
                              child: Container(
                                color: Colors.orange,
                              ),
                              flex: 3),
                          Expanded(
                              child: Container(
                                color: Colors.blueGrey,
                              ),
                              flex: 1),
                          Expanded(
                              child: Container(
                                color: Colors.green,
                              ),
                              flex: 2),
                        ]),
                        width: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[200],
            ),
          ),
        ],
      ),
    );
  }
}
