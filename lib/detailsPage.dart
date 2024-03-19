import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vishwamitra_uidesign/congratulationpage.dart';

class deatilsPage extends StatefulWidget {


  final String userName;
  final String phoneNumber;


  const deatilsPage({Key? key, required this.userName, required this.phoneNumber}) : super(key: key);


  @override
  State<deatilsPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<deatilsPage> {



  bool _isSelected1 = false; 
  bool _isSelected2 = false;
  bool _isSelected3 = false; 
  bool _isSelected4 = false;
  bool _isSelected5 = false;
  bool _isSelected6 = false;
  bool _isSelected7 = false;
  bool _isSelected8 = false; 
  bool _isSelected9 = false;
  List<bool> isSelected = [false, false, false, false, false, false];

  String selectionMessage = '';
    String selectionMessage1 = '';
  String selectionMessage2 = '';
  String selectionMessage3 = '';
  String selectionMessage4 = '';
  String selectionMessage5 = '';
  // bool isSelected = false;

  List<String> volunteerTypes = [
    'Teaching Volunteer',
    'Mathematic Teacher',
    'Kids Crafting and Teaching Volunteer',
    'Computer Teacher',
    'Woman Empowerment',
    'Animal Rescue Volunteer'
  ];

  List<String> typeList = [
    '123 Elm St.',
    '456 Maple Ave.',
    '789 Pine Dr.',
    '101 Oak Ln.',
    '202 Birch Blvd.'
  ];

  bool textFieldTapped = false;
  String? selectedAddress;

  List<String> selectedAddresses = [];

  List<String> selectedvolunterType = [];

  String filterAdress = "";
  String filtervolunterType = "";

  FocusNode focusNode = FocusNode(); 
  bool isListVisible = false;
 FocusNode searchFocusNode = FocusNode();
  FocusNode focusvolunterType =
      FocusNode();
  bool isListVisibleVolunterType = false;

  @override
  void initState() {
    super.initState();

    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        setState(() {
          isListVisible = true; 
        });
      } else {
        setState(() {
          isListVisible = false;
         
        });
      }
    });
      focusvolunterType.addListener(() {
    
      if (!textFieldTapped) {
        if (focusvolunterType.hasFocus) {
          setState(() {
            isListVisibleVolunterType = true;
          });
        } else {
          setState(() {
            isListVisibleVolunterType = false;
          });
        }
      }
    });
  }


void showSelectionDialog(BuildContext context, String userName, String phoneNumber) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Your selections"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text("Name: $userName"), 
              Text("Phone: $phoneNumber"),
              Text("Preferred work Type", style: TextStyle(fontWeight: FontWeight.bold)),
              if (_isSelected1) Text("Full Time"),
              if (_isSelected2) Text("Part Time"),
              Text('Preferred volunteer', style: TextStyle(fontWeight: FontWeight.bold)),
              if (_isSelected3) Text("Field Volunteer"),
              if (_isSelected4) Text("Online Volunteer"),
              Text('Preferred Shift', style: TextStyle(fontWeight: FontWeight.bold)),
              if (_isSelected5) Text("Day Shift (9am - 8pm)"),
              if (_isSelected6) Text("Night Shift (10pm - 6am)"),
              Text('Suggested cities', style: TextStyle(fontWeight: FontWeight.bold)),
              if (_isSelected7) Text("Koregaon Park/Pune Region, MH"),
              if (_isSelected8) Text("Shivaji Nagar/Pune Region, MH"),
              if (_isSelected9) Text("Mysore/Mysuru Region, KA"),
              Text('Volunteer Types:', style: TextStyle(fontWeight: FontWeight.bold)),
              for (int i = 0; i < isSelected.length; i++)
                if (isSelected[i]) Text(volunteerTypes[i]),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop(); 
              Get.to(() => Congratulation()) ;
            },
          ),
        ],
      );
    },
  );
}

  @override
  void dispose() {
    focusNode.dispose();
    focusvolunterType
        .dispose(); 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> filteredList = typeList
        .where((address) =>
            address.toLowerCase().contains(filterAdress.toLowerCase()))
        .toList();
    List<String> filteredvolunterTpe = volunteerTypes
        .where((type) =>
            type.toLowerCase().contains(filtervolunterType.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Adjust alignment as needed
                crossAxisAlignment: CrossAxisAlignment
                    .center, // Aligns children to the start, mimicking the leading position
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.blue.shade400, width: 2),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.check, // This is the tick icon
                            color: Colors.blue,
                            size:
                                18, // You can adjust the size to fit your design
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 1,
                        child: Container(
                          color: Color(0xFFD8D8D8),
                        ),
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.blue.shade400, width: 2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Text('2',
                              style: TextStyle(color: Colors.blue.shade400)),
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'About me',
                        style: TextStyle(
                            color: Color(0xFF1694EF),
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          'Deatils',
                          style: TextStyle(
                              color: Color(0xFF1694EF),
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, top: 40, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Prefered work Type",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text(
                        "This will help us to find the right volunteer service for you",
                        style: TextStyle(
                          fontSize: 14,
                           color: Color(0xFF848383),
                          fontWeight: FontWeight.normal,
                        )),
                    SizedBox(
                      height: 16,
                    ),
                    Text('Preferred employment type ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                             SizedBox(height: 4),
                                      if (selectionMessage1.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(selectionMessage1, style: TextStyle(color: Colors.red)),
                      ),
                  
                    SizedBox(
                      height: 4,
                    ),
                    _buildCheckboxOption("Full Time", _isSelected1, (newValue) {
                      setState(() => _isSelected1 = newValue!);
                    }),
                    SizedBox(
                      height: 8,
                    ),

                    _buildCheckboxOption("Part Time", _isSelected2, (newValue) {
                      setState(() => _isSelected2 = newValue!);
                    }),

                    SizedBox(height: 16),
                    Text('Preferred volunteer',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                            SizedBox(height: 4),
                              if (selectionMessage2.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(selectionMessage2, style: TextStyle(color: Colors.red)),
                    ),
           
                    SizedBox(
                      height: 4,
                    ),

                    _buildCheckboxOption("Field Volunteer ", _isSelected3,
                        (newValue) {
                      setState(() => _isSelected3 = newValue!);
                    }),
                    SizedBox(
                      height: 8,
                    ),

                    _buildCheckboxOption("Online Volunteer", _isSelected4,
                        (newValue) {
                      setState(() => _isSelected4 = newValue!);
                    }),

                    SizedBox(height: 16),
                    Text('Preferred Shift',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                            SizedBox(height: 4),
                              if (selectionMessage3.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(selectionMessage3, style: TextStyle(color: Colors.red)),
                      ),
           
                    SizedBox(
                      height: 4,
                    ),

                    _buildCheckboxOption("Day Shift (9am - 8pm)", _isSelected5,
                        (newValue) {
                      setState(() => _isSelected5 = newValue!);
                    }),
                    SizedBox(
                      height: 8,
                    ),

                    _buildCheckboxOption(
                        "Night Shift (10pm - 6am)", _isSelected6, (newValue) {
                      setState(() => _isSelected6 = newValue!);
                    }),
                    SizedBox(height: 16),
                    Text('Preferred Volunteer City (Select upto 3)',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text(
                        "Volunteer services are show base4d on your preferred city",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF848383),
                          fontWeight: FontWeight.normal,
                        )),
                    SizedBox(height: 16),

                    TextField(
                      focusNode: focusNode,
                      onChanged: (value) {
                        setState(() {
                          filterAdress = value;
                        });
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          color: Color(0xFFAFADAD),
                        ),
                        hintText: "Search by volunteer title/service",
                        hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFAFADAD)),
                      ),
                    ),

                    if (isListVisible) ...[
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                         
                          border: Border.all(color: Colors.grey, width: 2.0),
                         
                        ),
                        child: ListView.builder(
                          itemCount: filteredList.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                if (!selectedAddresses
                                        .contains(filteredList[index]) &&
                                    selectedAddresses.length < 3) {
                                  setState(() {
                                    selectedAddresses.add(filteredList[index]);
                                  });
                                }else {
                                     ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                              content: Text("You can select only 3 options"),
                                              duration: Duration(seconds: 2), // How long the Snackbar will be shown
                                            ),
                                          );
                                }
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        16.0), 
                                height: 30, 
                                alignment: Alignment
                                    .centerLeft, 
                                child: Text(
                                  filteredList[index],
                                  style: TextStyle(
                                    fontSize: 16, 
                                  ),
                                  overflow: TextOverflow
                                      .ellipsis, 
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],

                    // Display selected addresses or show hint text
                    selectedAddresses.isNotEmpty
                        ?  Column(
                                                        // mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                children: selectedAddresses.map((address) {
                                  return IntrinsicWidth(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      margin: EdgeInsets.only(top: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            address,
                                            style: TextStyle(color: Colors.white),
                                          ),
                                          IconButton(
                                            icon: Icon(
                                              Icons.close,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {
                                          
                                              setState(() {
                                                selectedAddresses.remove(address);
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList(),
                              )

                        : Container(),

                    SizedBox(height: 16),
                    Text('Suggested cities',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                            SizedBox(height: 4),
                              if (selectionMessage4.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(selectionMessage4, style: TextStyle(color: Colors.red)),
                    ),
           
                    SizedBox(
                      height: 4,
                    ),
                    _buildCheckboxOption(
                        "Koregaon Park/Pune Region, MH", _isSelected7,
                        (newValue) {
                      setState(() => _isSelected7 = newValue!);
                    }),
                    SizedBox(
                      height: 8,
                    ),

                    _buildCheckboxOption(
                        "Shivaji Nagar/Pune Region, MH", _isSelected8,
                        (newValue) {
                      setState(() => _isSelected8 = newValue!);
                    }),
                    SizedBox(
                      height: 8,
                    ),

                    _buildCheckboxOption(
                        "Mysore/Mysuru Region, KA", _isSelected9, (newValue) {
                      setState(() => _isSelected9 = newValue!);
                    }),
                    SizedBox(height: 16),
                    Text('Wht volunteer type/service are you looking for?',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text("You can select up to 5 preferences",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF848383),
                          fontWeight: FontWeight.normal,
                        )),
                    SizedBox(height: 16),
                    TextField(
                      focusNode: focusvolunterType,
                      onChanged: (value) {
                        setState(() {
                          filtervolunterType = value;
                        });
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          color: Color(0xFFAFADAD),
                        ),
                        hintText: "Search by volunteer title/service",
                        hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFAFADAD)),
                      ),
                    ),

                    if (isListVisibleVolunterType) ...[
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                      
                          border: Border.all(color: Colors.grey, width: 2.0),
                          
                        ),
                        child: ListView.builder(
                          itemCount: filteredvolunterTpe.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                if (!selectedvolunterType
                                        .contains(filteredvolunterTpe[index]) &&
                                    selectedvolunterType.length < 5) {
                                  setState(() {
                                    selectedvolunterType
                                        .add(filteredvolunterTpe[index]);
                                  });
                                } else {
                                     ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                              content: Text("You can select only 5 options"),
                                              duration: Duration(seconds: 2), // How long the Snackbar will be shown
                                            ),
                                          );

                                }
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        16.0), 
                                height: 30, 
                                alignment: Alignment
                                    .centerLeft, 
                                child: Text(
                                  volunteerTypes[index],
                                  style: TextStyle(
                                    fontSize: 16, 
                                  ),
                                  overflow: TextOverflow
                                      .ellipsis,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],


                  
                    selectedvolunterType.isNotEmpty
                                                      ?  Column(
                                                  // mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                          children: selectedvolunterType.map((type) {
                            return IntrinsicWidth(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                margin: EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                   color: Color(0xFF005FA4),  
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      type,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                    
                                        setState(() {
                                          selectedvolunterType.remove(type);
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        )


                        : Container(),

                                    SizedBox(
                                      height: 32,
                                    ),
                                
                              Container(
                              decoration: const BoxDecoration(color: Color(0xFFF4FAFE)),
                              width: 342,
                              height: 372,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 16,
                                    ),
                                                  const Text(
                                    'Suggested volunteer types/services',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xFF848383)),
                                  ),
                                  if (selectionMessage.isNotEmpty)
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        selectionMessage,
                                        style: const TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                        ),
                                      ),  
                                    ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  ListView.separated(
                                    shrinkWrap: true,
                                    itemCount: volunteerTypes.length,
                                    separatorBuilder: (BuildContext context, int index) {
                                      return const SizedBox(height: 8);
                                    },
                                    itemBuilder: (BuildContext context, int index) {
                                      return Align(
                                        alignment: Alignment.centerLeft,
                                        child: GestureDetector(
                                          onTap: () {
                                            int selectedCount = isSelected.where((item) => item).length;
                                            if (isSelected[index] || selectedCount < 5) {
                                              setState(() {
                                                isSelected[index] = !isSelected[index];
                                                selectionMessage = '';
                                              });
                                            } else {
                                              setState(() {
                                                selectionMessage = 'You can choose only 5 things.';
                                              });
                                            }
                                          },
                                          child: FittedBox(
                                            child: Container(
                                              height: 36,
                                              decoration: BoxDecoration(
                                                color: isSelected[index]
                                                    ? Colors.blue
                                                    : Colors.white,
                                                borderRadius: BorderRadius.circular(32),
                                                border: Border.all(
                                                  color: isSelected[index]
                                                      ? Colors.transparent
                                                      : const Color(0xFFAFADAD),
                                                ),
                                              ),
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              child: Center(
                                                child: Text(
                                                  volunteerTypes[index],
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: isSelected[index]
                                                        ? Colors.white
                                          : const Color(0xFF3D3C3C),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            

                  ],
                ),
              ),



            ),
          ],
        ),
      ),



bottomNavigationBar: Padding(
  padding: const EdgeInsets.fromLTRB(40, 25, 40, 44),
  child: CupertinoButton(
    color: Colors.blue,
    child: Text('Next'),
  onPressed: () {
 
  setState(() {
    selectionMessage1 = '';
    selectionMessage2 = '';
    selectionMessage3 = '';
    selectionMessage4 = '';
    selectionMessage = '';
  });
  if (!_isSelected1 && !_isSelected2) {
    setState(() {
      selectionMessage1 = 'Select at least 1 option.';
    });
  }
  if (!_isSelected3 && !_isSelected4) {
    setState(() {
      selectionMessage2 = 'Select at least 1 option.';
    });
  }
  if (!_isSelected5 && !_isSelected6) {
    setState(() {
      selectionMessage3 = 'Select at least 1 option.';
    });
  }
  if (!_isSelected7 && !_isSelected8 && !_isSelected9) {
    setState(() {
      selectionMessage4 = 'Select at least 1 option.';
    });
  }
  int selectedCount = isSelected.where((item) => item).length;
  if (selectedCount == 0) { 
    setState(() {
      selectionMessage = 'Select at least 1 thing.';
    });
  } else if (selectionMessage1.isEmpty && selectionMessage2.isEmpty && selectionMessage3.isEmpty && selectionMessage4.isEmpty) {
    //  showSelectionDialog(context);
    // Get.to(() => Congratulation());
                showSelectionDialog(context, widget.userName, widget.phoneNumber); 
  }
},

  ),
),


              );
            }

  Widget _buildCheckboxOption(
      String title, bool isSelected, ValueChanged<bool?> onChanged) {
    return Container(
      height: 42,
      decoration: BoxDecoration(
        border: Border.all(color: isSelected ? Colors.blue : Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(title),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Checkbox(
              value: isSelected,
              onChanged: onChanged,
              activeColor: Colors.blue,
              checkColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
