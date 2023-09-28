import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Notices extends StatefulWidget {
  const Notices({super.key});

  @override
  State<Notices> createState() => _NoticesState();
}

class _NoticesState extends State<Notices> {
  List? ass;
  var data = '';
  void fetchAtt() async {
    var resp =
        await http.get(Uri.parse('https://bisava.tech/api/attendence/fetch'));
    Map res = await json.decode(resp.body);
    print(res);
    setState(() {
      ass = res['students'];
    });
  }

  void addStudent() async {
    var resp = await http
        .post(Uri.parse('https://bisava.tech/api/attendence/add'), headers: {
      'Access-Control-Allow-Origin': '*',
      'Accept': 'application/json'
    }, body: {
      'name': data,
    });

    Map res = await json.decode(resp.body);
    setState(() {
      ass = res['data'];
    });
    print(res);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchAtt();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendence'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  width: 3.0,
                ),
              )),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .7,
                    child: Text(
                      'Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .2,
                    child: Text(
                      'Presence',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Column(
                children: ass == null
                    ? [
                        Text('Loading.....'),
                      ]
                    : ass!
                        .map(
                          (a) => Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border(
                              bottom: BorderSide(
                                width: 1.0,
                              ),
                            )),
                            child: Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width * .7,
                                  child: Text(a['name'] ?? 'loading....'),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * .2,
                                  child: Text(a['presence'] ?? 'loading....'),
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList()),
            ElevatedButton(
                onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        // title: const Text('AlertDialog Title'),
                        content: TextField(
                          onChanged: (text) {
                            setState(() {
                              data = text;
                            });
                          },
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: 'student',
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              addStudent();
                              Navigator.pop(context, 'OK');
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    ),
                child: Text('Add Student'))
          ],
        ),
      ),
    );
  }
}
