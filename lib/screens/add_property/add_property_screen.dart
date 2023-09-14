import 'package:flutter/material.dart';
import 'package:flutter_dashboard_test/constants/constants.dart';

class AddPropertyScreen extends StatefulWidget {
  const AddPropertyScreen({super.key});

  @override
  State<AddPropertyScreen> createState() => _AddPropertyScreenState();
}

String _selectedState = "California";
String _selectedCity = "Austin";
String _selectedZipcode = "903421";
String _selectedPType = "Movable property";
var nothing = null;
bool isChanged = false;

List<String> states = [
  'California',
  'Texas',
  'Florida',
  'New Jersey',
  'Hawaii',
  'Alaska',
  'Ohio'
];
List<String> cities = [
  'Austin',
  'Seattle',
  'San Francisco',
  'Chicago',
  'Los Angeles',
  'Portland',
  'New York'
];
List<String> zipCodes = [
  '903421',
  '4568374',
  '385775',
  '856728',
  '297123',
  '3876534',
  '938202'
];
List<String> propertyTypes = [
  'Movable property',
  'Immovable property',
  'Tangible property',
  'Intangible property',
  'Private property',
  'Public property'
];
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _AddPropertyScreenState extends State<AddPropertyScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Drawer(
      width: _size.width <= 1100 ? _size.width : _size.width * 0.4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Builder(
                      builder: (context) {
                        return IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: Colors.indigo.shade900,
                            size: 15,
                          ),
                          onPressed: () {
                            Scaffold.of(context).closeEndDrawer();
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Add a New Property",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: kBgDarkColor),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      labelStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      labelText: 'Property Name',
                      hintStyle: TextStyle(color: Colors.grey.shade300),
                      hintText: "Property Name"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Name is required';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      labelStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      hintStyle: TextStyle(color: Colors.grey.shade300),
                      labelText: 'Street Address',
                      hintText: "Street Address"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Address is required';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: DropdownButtonFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                  ),
                  value: _selectedState,
                  hint: Text(
                    'Select State',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  isExpanded: true,
                  items: states.map((String val) {
                    return DropdownMenuItem(
                      value: val,
                      child: Text(
                        val,
                      ),
                    );
                  }).toList(),
                  validator: (String? value) {
                    if (value!.isEmpty || value == null) {
                      return "State is required";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    setState(() {
                      _selectedState = value!;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      _selectedState = value!;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: DropdownButtonFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                  ),
                  value: _selectedCity,
                  hint: Text(
                    'Select City',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  isExpanded: true,
                  items: cities.map((String val) {
                    return DropdownMenuItem(
                      value: val,
                      child: Text(
                        val,
                      ),
                    );
                  }).toList(),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "City is required";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    setState(() {
                      _selectedCity = value!;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      // isChanged = true;
                      _selectedCity = value!;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: DropdownButtonFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  value: _selectedZipcode,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                  ),
                  hint: Text(
                    'Select Zipcode',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  isExpanded: true,
                  items: zipCodes.map((String val) {
                    return DropdownMenuItem(
                      value: val,
                      child: Text(
                        val,
                      ),
                    );
                  }).toList(),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Zipcode is required";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    setState(() {
                      _selectedZipcode = value!;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      _selectedZipcode = value!;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        value: _selectedPType,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                        ),
                        hint: Text(
                          'Select Property Type',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        isExpanded: true,
                        items: propertyTypes.map((String val) {
                          return DropdownMenuItem(
                            value: val,
                            child: Text(
                              val,
                            ),
                          );
                        }).toList(),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Property type is required";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          setState(() {
                            _selectedPType = value!;
                          });
                        },
                        onChanged: (value) {
                          setState(() {
                            _selectedPType = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.attach_money_outlined),
                            prefixIconColor: Colors.grey,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 1),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                            labelText: 'Approx Rent Per Month',
                            hintStyle: TextStyle(color: Colors.grey.shade300),
                            hintText: "Approx Rent"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Rent is required';
                          }
                          return null;
                        },
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: DropdownButtonFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  value: _selectedPType,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                  ),
                  hint: Text(
                    'Select Property Owner',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  isExpanded: true,
                  items: propertyTypes.map((String val) {
                    return DropdownMenuItem(
                      value: val,
                      child: Text(
                        val,
                      ),
                    );
                  }).toList(),
                  validator: (value) {
                    if (value!.isEmpty || value == null) {
                      return "Please choose an Owner";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    setState(() {
                      _selectedPType = value!;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      _selectedPType = value!;
                    });
                  },
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          backgroundColor: kButtonColor,
                          maximumSize: Size(150, 60)),
                      onPressed: () {
                        final isValid = _formKey.currentState?.validate();
                        if (isValid!) {
                          _formKey.currentState?.save();
                          const snackdemo = SnackBar(
                            content: Text('Successfully Added the Property'),
                            backgroundColor: Colors.green,
                            elevation: 10,
                            behavior: SnackBarBehavior.floating,
                            margin: EdgeInsets.all(5),
                          );
                          ScaffoldMessenger.of(_formKey.currentContext!)
                              .showSnackBar(snackdemo);
                        } else {
                          const snackdemo = SnackBar(
                            content: Text('Error in the form'),
                            backgroundColor: Colors.red,
                            elevation: 10,
                            behavior: SnackBarBehavior.floating,
                            margin: EdgeInsets.all(5),
                          );
                          ScaffoldMessenger.of(_formKey.currentContext!)
                              .showSnackBar(snackdemo);
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Add",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right_outlined,
                            color: Colors.white,
                            size: 20,
                          )
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
