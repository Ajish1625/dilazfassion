import 'package:flutter/material.dart';

// void main() => runApp(NavDrawer());

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[

          DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/myunde logo.png"),
                  )
              ),
              child: Stack(
                children: [

                  Align(
                    alignment: Alignment(-0.99,0.70),
                    child: Text('Login Member name',style: TextStyle(
                        fontStyle: FontStyle.italic
                    ),),
                  ),

                  Align(
                    alignment: Alignment(-0.99,0.99),
                    child: Text('mail id',style: TextStyle(
                        fontStyle: FontStyle.italic
                    ),),
                  )
                ],
              )
          ),

          ListTile(
            leading: Icon(Icons.input),
            title: Text('Logi/Register'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}