import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vishwamitra_uidesign/congratulationpage.dart';

class deatilsPage extends StatefulWidget {
  @override
  State<deatilsPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<deatilsPage> {
// Define a FocusNode for the TextField
  FocusNode searchFocusNode = FocusNode();
// Define a boolean state to control the visibility of the list
  bool showList = false;

  bool _isSelected1 = false; // State for the first checkbox
  bool _isSelected2 = false;

  bool _isSelected3 = false; // State for the first checkbox
  bool _isSelected4 = false;

  bool _isSelected5 = false; // State for the first checkbox
  bool _isSelected6 = false;

  bool _isSelected7 = false;

  bool _isSelected8 = false; // State for the first checkbox
  bool _isSelected9 = false;

  List<bool> isSelected = [false, false, false, false, false, false];
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

  FocusNode focusNode = FocusNode(); // Added for managing TextField focus
  bool isListVisible = false;

  FocusNode focusvolunterType =
      FocusNode(); // Added for managing TextField focus
  bool isListVisibleVolunterType = false;

  @override
  void initState() {
    super.initState();

    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        setState(() {
          isListVisible = true; // Show the list when TextField is focused
        });
      } else {
        setState(() {
          isListVisible = false;
          // Hide the list when TextField loses focus
        });
      }
    });

    // focusvolunterType.addListener(() {
    //   if (focusvolunterType.hasFocus) {
    //     setState(() {
    //       isListVisibleVolunterType =
    //           true; // Show the list when TextField is focused
    //     });
    //   } else {
    //     setState(() {
    //       isListVisibleVolunterType =
    //           false; // Hide the list when TextField loses focus
    //     });
    //   }
    // });

      focusvolunterType.addListener(() {
      // Only change the state if the TextField is not being interacted with after focus
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

  @override
  void dispose() {
    focusNode.dispose();
    focusvolunterType
        .dispose(); // Clean up the focus node when the Form is disposed.
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
                        "Volunteer services are show based on your preferred city",
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
                        height: 150, // Set a fixed height for the container
                        decoration: BoxDecoration(
                          // Add border around the container
                          border: Border.all(color: Colors.grey, width: 2.0),
                          // borderRadius: BorderRadius.circular(5), // Optional: if you want rounded corners
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
                                }
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        16.0), // Maintain horizontal padding
                                height: 30, // Reduced height of each list item
                                alignment: Alignment
                                    .centerLeft, // Align the text to the start of the container
                                child: Text(
                                  filteredList[index],
                                  style: TextStyle(
                                    fontSize: 16, // Optionally adjust font size
                                  ),
                                  overflow: TextOverflow
                                      .ellipsis, // Prevents long text from breaking the layout
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
                        height: 150, // Set a fixed height for the container
                        decoration: BoxDecoration(
                          // Add border around the container
                          border: Border.all(color: Colors.grey, width: 2.0),
                          // borderRadius: BorderRadius.circular(5), // Optional: if you want rounded corners
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
                                }
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        16.0), // Maintain horizontal padding
                                height: 30, // Reduced height of each list item
                                alignment: Alignment
                                    .centerLeft, // Align the text to the start of the container
                                child: Text(
                                  volunteerTypes[index],
                                  style: TextStyle(
                                    fontSize: 16, // Optionally adjust font size
                                  ),
                                  overflow: TextOverflow
                                      .ellipsis, // Prevents long text from breaking the layout
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],

                    selectedvolunterType.isNotEmpty
                        // ? Column(
                        //     children: selectedvolunterType.map((type) {
                        //       return Container(
                        //         padding: EdgeInsets.symmetric(horizontal: 10),
                        //         margin: EdgeInsets.only(top: 10),
                        //         decoration: BoxDecoration(
                        //           color: Colors.blue,
                        //           borderRadius: BorderRadius.circular(100),
                        //         ),
                        //         child: Row(
                        //           mainAxisAlignment:
                        //               MainAxisAlignment.spaceBetween,
                        //           children: [
                        //             Text(
                        //               type,
                        //               style: TextStyle(color: Colors.white),
                        //             ),
                        //             IconButton(
                        //               icon: Icon(
                        //                 Icons.close,
                        //                 color: Colors.white,
                        //               ),
                        //               onPressed: () {
                        //                 setState(() {
                        //                   selectedvolunterType.remove(type);
                        //                 });
                        //               },
                        //             ),
                        //           ],
                        //         ),
                        //       );
                        //     }).toList(),
                        //   )


                              ?  Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
  children: selectedvolunterType.map((type) {
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
                            const SizedBox(
                              height: 24,
                            ),
                            ListView.separated(
                              shrinkWrap: true,
                              itemCount: volunteerTypes.length,
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const SizedBox(height: 8);
                              },
                              itemBuilder: (BuildContext context, int index) {
                                return Align(
                                  alignment: Alignment.centerLeft,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isSelected[index] = !isSelected[index];
                                      });
                                    },
                                    child: FittedBox(
                                      child: Container(
                                        height: 36,
                                        decoration: BoxDecoration(
                                          color: isSelected[index]
                                              ? Colors.blue
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(32),
                                          border: Border.all(
                                            color: isSelected[index]
                                                ? Colors.transparent
                                                : const Color(0xFFAFADAD),
                                          ),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
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
            Get.to(() => Congratulation());
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
