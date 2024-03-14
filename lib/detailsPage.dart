
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class deatilsPage  extends StatefulWidget {


  @override
  State<deatilsPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<deatilsPage> {


 bool _isSelected1 = false; // State for the first checkbox
  bool _isSelected2 = false; 
  
 bool _isSelected3 = false; // State for the first checkbox
  bool _isSelected4 = false; 
  
 bool _isSelected5 = false; // State for the first checkbox
  bool _isSelected6 = false; 

  List<String> typeList = [
 '123 Elm St.',
    '456 Maple Ave.',
    '789 Pine Dr.',
    '101 Oak Ln.',
    '202 Birch Blvd.'

  ];

  //  String? selectedAddress; 
List<String> selectedAddresses = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar:AppBar(),

body:  SingleChildScrollView(
  child: Column(
            children: [
  
                Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
       mainAxisAlignment: MainAxisAlignment.center, // Adjust alignment as needed
       crossAxisAlignment: CrossAxisAlignment.center, // Aligns children to the start, mimicking the leading position
        children: [
          Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue.shade400, width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const CircleAvatar(
                      minRadius: BorderSide.strokeAlignOutside,
                      backgroundColor: Colors.transparent,
                      child: Text('1', style: TextStyle(color: Colors.black)),
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
                      border: Border.all(color: Colors.blue.shade400,width: 2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Text('2', style: TextStyle(color: Colors.blue.shade400)),
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
                      padding: EdgeInsets.only(left :16.0, top: 40, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Prefered work Type", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Text("This will help us to find the right volunteer service for you", style: TextStyle(
                            fontSize: 14,
                           color:Color(0xFF848383 ),
                             fontWeight: FontWeight.normal,)),
                          SizedBox(height: 16,),
                          Text('Preferred employment type ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          SizedBox(height: 4,),
                          _buildCheckboxOption("Full Time", _isSelected1, ( newValue) {
                          setState(() => _isSelected1 = newValue!);
                          }),
                       SizedBox(height: 8,),
  
                      _buildCheckboxOption("Part Time", _isSelected2, ( newValue) {
                                  setState(() => _isSelected2 = newValue!);
                                }),
  
  
        
  
                          SizedBox(height: 16),
                          Text('Preferred volunteer',
                           style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                           SizedBox(height: 4,),
             
                        _buildCheckboxOption("Field Volunteer ", _isSelected3, ( newValue) {
                          setState(() => _isSelected3 = newValue!);
                          }),
                       SizedBox(height: 8,),
  
                      _buildCheckboxOption("Online Volunteer", _isSelected4, ( newValue) {
                                  setState(() => _isSelected4 = newValue!);
                                }),
  
  
  
                      
                          SizedBox(height: 16),
                          Text('Preferred Shift', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          SizedBox(height: 4,),
                                    
                        _buildCheckboxOption("Day Shift (9am - 8pm)", _isSelected5, ( newValue) {
                          setState(() => _isSelected5 = newValue!);
                          }),
                       SizedBox(height: 8,),
  
                      _buildCheckboxOption("Night Shift (10pm - 6am)", _isSelected6, ( newValue) {
                                  setState(() => _isSelected6 = newValue!);
                                }),
                                 SizedBox(height: 16),
                          Text('Preferred Volunteer City (Select upto 3)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                           Text("Volunteer services are show based on your preferred city", style: TextStyle(
                            fontSize: 12,
                           color:Color(0xFF848383 ),
                             fontWeight: FontWeight.normal,)),
                             SizedBox(height: 16),
                            TextField(
                              // cursorHeight: 20,
                    decoration: InputDecoration(
                       contentPadding: EdgeInsets.symmetric(vertical: 5),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                      hintText: 'Search by volunteer title/service',
                      hintStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFFAFADAD)),
                       prefixIcon: IconButton(
                       
                        onPressed: () {

                        },
                        icon: Icon(Icons.search_outlined,color: Color(0xFFAFADAD) ,)),
                      
                    ),
                   
                  ),





InputDecorator(
  
              decoration: InputDecoration(
                
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                contentPadding: EdgeInsets.symmetric(vertical: 5),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  hint: Text("Search by volunteer title/service",
                  style: TextStyle(
                    fontSize: 12, 
                    fontWeight: FontWeight.w400, 
                    color: Color(0xFFAFADAD)),),
                  value: null, // Resetting the value to null after selection
                  // isExpanded: true,
                  items: typeList.map((String address) {
                    return DropdownMenuItem<String>(
                      value: address,
                      child: Text(address),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    if (!selectedAddresses.contains(newValue)) {
                      setState(() {
                        selectedAddresses.add(newValue!);
                      });
                    }
                  },
                ),
              ),
            ),
            // Display selected addresses or show hint text
            selectedAddresses.isNotEmpty
                ? Column(
                    children: selectedAddresses.map((address) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(address,
                        style: TextStyle(color: Colors.white ),
                        ),
  //                        child: Row(
  //   children: <Widget>[
      
  //     Text(
  //         address,
  //         style: TextStyle(color: Colors.white), // Adjust text style as needed
  //       ),
      

  //     // Suffix Icon
  //     Icon(Icons.close, color: Colors.white), // Change the icon as needed
  //   ],
  // ),
                        
                      );
                    }).toList(),
                  )
                : Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("No address selected", style: TextStyle(color: Colors.grey)),
                  ),
                        ],
                      ),
                    ),
              ),
            ],
          ),
),
 bottomNavigationBar: Padding(
              padding: const EdgeInsets.fromLTRB(40,25,40,44),
                        child: CupertinoButton(
              color: Colors.blue,
              child: Text('Next'),
              onPressed: () {
                // submit();
              },
            ),

           ), 
    );
  }

Widget _buildCheckboxOption(String title, bool isSelected, ValueChanged<bool?> onChanged) {
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
