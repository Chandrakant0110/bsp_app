import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class DelayScreen extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const DelayScreen(),
      );
  const DelayScreen({super.key});

  @override
  State<DelayScreen> createState() => _DelayScreenState();
}

class _DelayScreenState extends State<DelayScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  // Define the initial value for the dropdown
  String machineText = 'EB-1B-VBOR';
  String operationText = 'ROUGH TURNING';
  String delayTime = '';
  String isDelay = '';
  bool isLoading = false;

  // List of items for the dropdown menu
  final List<String> machineTextItems = [
    'EB-1B-VBOR',
    'EB-60C-RDRILL',
    'EB-60B-RDRILL',
    'HB-25-SLOT',
    'LB-26B-SLOT',
    'HB-02-VBOR',
    'EB-4D-VBOR'
  ];

  final List<String> operationTextItems = [
    'ROUGH TURNING',
    'MACHINING',
    'HOLD ON OD BY 4 JAWS SET AS/EXISTNG FACE',
    'DRILL 4 HOLES Dia44 AS/MARKING.',
    'SLOTTING KEYWAY.'
  ];

  Future<void> sendPostRequest() async {
    setState(() {
      isLoading = true;
    });
    final url = Uri.parse('${_textEditingController.text}delay');
    final headers = {
      'accept': 'application/json',
      'Content-Type': 'application/json',
    };
    final body = jsonEncode({
      'Operation': operationText,
      'Machine': machineText,
    });

    try {
      final response = await http.post(url, headers: headers, body: body);

      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        setState(() {
          isDelay = body['isDelay'];
          delayTime = body['time_required'];
        });
        print('Request successful');
        print('Response body: ${response.body}');
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error occurred: $e');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check for the Delay'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              TextField(
                controller: _textEditingController,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  label: Text('Paste the Server Url'),
                  hintText: 'Url...',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Color.fromARGB(255, 236, 219, 219),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const Divider(),
              const Text(
                'SELECT THE MACHINE',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      value: machineText,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 8.0),
                        border: OutlineInputBorder(),
                      ),
                      icon: const Icon(Icons.arrow_downward),
                      iconSize: 20,
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      onChanged: (String? newValue) {
                        setState(() {
                          machineText = newValue!;
                        });
                      },
                      items: machineTextItems
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'SELECT THE OPERATION',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      value: operationText,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 8.0),
                        border: OutlineInputBorder(),
                      ),
                      icon: const Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      onChanged: (String? newValue) {
                        setState(() {
                          operationText = newValue!;
                        });
                      },
                      items: operationTextItems
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              const Divider(),
              const Text(
                'RESULTS',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Delay in delivery of Job - $isDelay',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Operation Time required for Job - $delayTime',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 244, 204, 204),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.info,
                            size: 24,
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'What does the above feature do?',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'The above feature helps you to know the estimated Operation Time required for a particular Job. \nIt also helps us to know whether the job will face any delay or not in a particular machine for a desired operation.',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 12,
                  backgroundColor: const Color.fromARGB(255, 213, 211, 211),
                ),
                onPressed: () async {
                  if (_textEditingController.text.trim().isEmpty) {
                    Fluttertoast.showToast(
                        msg: 'Please enter the link for the server.');
                  }
                  if (_textEditingController.text.contains('https')) {
                    await sendPostRequest();
                  } else {
                    Fluttertoast.showToast(
                        msg: 'Please enter a valid server address.');
                  }
                },
                child: isLoading
                    ? const SizedBox(
                        height: 16,
                        width: 16,
                        child: CircularProgressIndicator())
                    : const Text(
                        '       Done       ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
