import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSearch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 75.0),
                      child: Text(
                        "JobsPeso",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36, color: Colors.blue[900]),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    isSearch == false
                        ? searchButton()
                        : Container(
                            margin: EdgeInsets.only(right: 30.0),
                            width: 280,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Search for jobs",
                                  prefixIcon: Icon(Icons.search),
                                  suffixIcon: InkWell(
                                      onTap: () {
                                        setState(() {
                                          isSearch = false;
                                        });
                                      },
                                      child: Icon(Icons.close))),
                            ),
                          )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: GridView.builder(
                itemCount: 3,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 1.3, crossAxisCount: 3),
                itemBuilder: (_, item) {
                  return gridViewItem();
                }),
          )
        ],
      ),
    );
  }

  Widget searchButton() {
    return InkWell(
      onTap: () {
        setState(() {
          isSearch = true;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 30.0),
        width: 120,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.blue[900],
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            "Search",
            style: TextStyle(color: Colors.blue[900], fontSize: 18),
          ),
        ),
      ),
    );
  }

  gridViewItem() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        width: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            left: BorderSide(width: 3, color: Colors.deepPurple),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(color: Colors.blue[900], shape: BoxShape.circle),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Senior Front End Developer",
                style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text("Xelure Technologies"),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "National Capital Reg\nPHP 80K - 150K monthly",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text("Remote/Hybrid work environment\nCompetative Salary\nHMO for Primary and Dependent"),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "5h ago",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: 110,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: Text(
                    "Apply Now",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
