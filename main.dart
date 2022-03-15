import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyForm(),
    );
  }
}

class MyForm extends StatelessWidget {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(


        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://visme.co/blog/wp-content/uploads/2017/07/50-Beautiful-and-Minimalist-Presentation-Backgrounds-031.jpg'),
            fit: BoxFit.cover,
          )
          
        ),

        padding: EdgeInsets.only(
          left: 320, right: 320, top: 50,
        ),
        child: Form(
          key: _key,
          child: Column(
            children: [
              Text("MAD & PWA Lab Attendance Form",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 33,
              ),textAlign: TextAlign.center,),

              SizedBox(
                height: 30,
              ),

              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                // initialValue: "User Name",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Email Id cannot be empty";
                  } else if (value.length <= 5) {
                    return "Email Id should be greater than 5";
                  } else {
                    return null;
                  }
                },
              ),

              SizedBox(
                height: 30,
              ),

              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: 'Date',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                // initialValue: "User Name",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Date cannot be empty";
                  } else if (value.length <= 5) {
                    return "Date should be greater than 5";
                  } else {
                    return null;
                  }
                },
              ),

              SizedBox(
                height: 30,
              ),

              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: 'Branch',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                // initialValue: "User Name",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Branch name cannot be empty";
                  } else if (value.length < 2) {
                    return "Branch name shouldn't be less than 2";
                  } else {
                    return null;
                  }
                },
              ),

              SizedBox(
                height: 30,
              ),

              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                // initialValue: "User Name",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Name cannot be empty";
                  } else if (value.length <= 5) {
                    return "Name should be greater than 5";
                  } else {
                    return null;
                  }
                },
              ),

              SizedBox(
                height: 30,
              ),

              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: 'Div',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                // initialValue: "User Name",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Division cannot be empty";
                  } else if (value.length >= 2) {
                    return "Division should be a single character";
                  } else {
                    return null;
                  }
                },
              ),

              SizedBox(
                height: 30,
              ),

              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: 'Roll No.',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                // initialValue: "User Name",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Roll No cannot be empty";
                  } else if (value.length > 2) {
                    return "Roll No should be less than 100";
                  } else {
                    return null;
                  }
                },
              ),

              SizedBox(
                height: 30,
              ),

              FlatButton(
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    // print("Your data is submitted");
                    regAttendance(context);
                  }
                },
                child: Text("Submit", style : TextStyle(fontSize: 20,)),
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(18),
                
              )
            ],
          ),
        ),
      ),
    );
  }

  void regAttendance(BuildContext context){
    var alertDialog = AlertDialog(
      title: Text("Attendance marked successfully",textAlign: TextAlign.center,style: TextStyle(
        fontSize: 20,
        color: Colors.black87,
        backgroundColor: Colors.white24,

      ),
      ),
   
      // content : Text("NULL"),
    );

    showDialog(
      context: context, 
      builder: (BuildContext context){
        return alertDialog;
      }
      );
  }

}
