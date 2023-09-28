import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  List? ass;
  var data = '';
  void fetchAss() async {
    var resp =
        await http.get(Uri.parse('https://bisava.tech/api/assignment/fetch'));
    Map res = await json.decode(resp.body);

    print(res['assignments'][0]);
    setState(() {
      ass = res['assignments'];
    });
  }

  void updateAssignment(id) async {
     var resp =
        await http.post(Uri.parse('https://bisava.tech/api/assignment/'+id+'/update'),
          headers: {'Access-Control-Allow-Origin': '*',
            'Accept':'application/json'
          },
          body:{
            'asig': data,
          }
        );

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
    fetchAss();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignment'),
      ),
      body: Column(
          children: ass == null
              ? [
                  Text('Loading.....'),
                ]
              : ass!
                  .map((a) => Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(10.0),
                                  width: MediaQuery.of(context).size.width * 1,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    a['subject'],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                              InkWell(
                                onTap: () => showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    // title: const Text('AlertDialog Title'),
                                    content: TextField(
                                      onChanged: (text) {
                                        setState(() {
                                          data = text;
                                        });
                                      },
                                      decoration: InputDecoration(
                                        border: const OutlineInputBorder(),
                                        labelText: a['subject'],
                                      ),
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Cancel'),
                                        child: const Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          updateAssignment(a['id']);
                                          Navigator.pop(context, 'OK');
                                        },
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  ),
                                ),
                                child: Container(
                                    padding: EdgeInsets.all(10.0),
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          width: 3.0,
                                        ),
                                      ),
                                    ),
                                    child: Text(a['assignment'])),
                              ),
                            ],
                          )
                        ],
                      ))
                  .toList()),
    );
  }
}
