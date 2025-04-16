import 'package:flutter/material.dart';

class AgentLoginView extends StatefulWidget {
  const AgentLoginView({super.key});

  @override
  State<AgentLoginView> createState() => _AgentLoginViewState();
}

class _AgentLoginViewState extends State<AgentLoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Center(
          child: Container(
            height: 325,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
              child: Column(
                spacing: 15,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Agent Login',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                      prefixIcon: Icon(Icons.phone_outlined),
                      hintText: 'Mobile Number',
                      fillColor: Colors.white,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                      prefixIcon: Icon(Icons.lock_outline),
                      hintText: 'Password',
                      fillColor: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // TODO: Implement the login functionality
                          },
                          icon: Icon(Icons.login),
                          iconAlignment: IconAlignment.end,
                          label: Text('Login'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurpleAccent,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 50,
                    children: [
                      TextButton.icon(
                        label: Text('Forgot Password?'),
                        icon: Icon(Icons.lock_reset_outlined),
                        onPressed: () {
                          // TODO: Implement the forgot password functionality
                        },
                      ),
                      TextButton.icon(
                        label: Text('Sign Up'),
                        icon: Icon(Icons.person_add_alt_outlined),
                        onPressed: () {
                          // TODO: Implement the forgot password functionality
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
