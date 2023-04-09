import 'package:flutter/material.dart';

class MCPApp extends StatelessWidget {
  const MCPApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MCP(),
    );
  }
}

// class MCP extends StatelessWidget {
//   const MCP({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SliderTestState();
//   }
// }

final List charList = [
  {
    'id': 1,
    'name': "Groot",
    'subname': "I am Groot",
    'minisF': "assets/mcp/guard/Groot.png",
    'healthy': "assets/mcp/cards/guard/groot.png",
    'injured': "assets/mcp/cards/guard/grootKO.png",
  },
  {
    'id': 2,
    'name': "Rocket Raccoon",
    'subname': "Rocket Raccoon",
    'minisF': "assets/mcp/guard/rocket1.png",
    'minisB': "assets/mcp/guard/rocket2.png",
    'healthy': "assets/mcp/cards/guard/rocket.png",
    'injured': "assets/mcp/cards/guard/rocketKO.png",
  },
  {
    'id': 3,
    'name': "Star-Lord",
    'subname': "Peter Quill",
    'minisF': "assets/mcp/guard/starlordF.png",
    'minisB': "assets/mcp/guard/starlordB.png",
    'healthy': "assets/mcp/cards/guard/starlord.png",
    'injured': "assets/mcp/cards/guard/starlordKO.png",
  },
];

class MCP extends StatefulWidget {
  const MCP({super.key});

  @override
  State<MCP> createState() => _MCP();
}

class _MCP extends State<MCP> {
  double _currentSliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: const Color.fromRGBO(0, 144, 99, 56),
      ),
      backgroundColor: const Color.fromARGB(202, 255, 255, 255),
      body: Slider(
        value: _currentSliderValue,
        max: 100,
        divisions: 5,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
      ),
    );
  }
}
