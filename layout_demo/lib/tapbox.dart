import 'package:flutter/material.dart';

class TapBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TapBox Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _TapBoxA(),
            _TapBoxBParent(),
            _TapBoxCParent()
          ],
        ),
      )
    );
  }
}




class _TapBoxA extends StatefulWidget {
  @override
  _TapBoxAState createState() => _TapBoxAState();
}

class _TapBoxAState extends State<_TapBoxA> {

  var _isActive = false;

  void _onTap() {
    setState(() {
      _isActive = !_isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          _isActive ? 'Active' : 'InActive',
        ),
        decoration: BoxDecoration(
          color: _isActive ? Colors.green : Colors.grey[500],
        ),
        width: 150,
        height: 150,
      ),
    );
  }
}

///==============================_TapBoxBParent==============================================
class _TapBoxBParent extends StatefulWidget {
  @override
  __TapBoxBParentState createState() => __TapBoxBParentState();
}

class __TapBoxBParentState extends State<_TapBoxBParent> {

  var _isActive = false;

  void _ontap() {
    setState(() {
      _isActive = !_isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _TabBoxB(isActive: _isActive, onTap: _ontap);
  }
}

class _TabBoxB extends StatelessWidget {
  final bool isActive;
  final Function onTap;

  _TabBoxB({Key key, @required this.isActive, @required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          isActive ? 'Active' : 'InActive',
        ),
        decoration: BoxDecoration(
          color: isActive ? Colors.green : Colors.grey[500],
        ),
        width: 150,
        height: 150,
      ),
    );
  }
}

///============================_TapBoxCParent================================================

class _TapBoxCParent extends StatefulWidget {
  @override
  __TapBoxCParentState createState() => __TapBoxCParentState();
}

class __TapBoxCParentState extends State<_TapBoxCParent> {

  var _isActive = false;

  void _ontap() {
    setState(() {
      _isActive = !_isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _TapBoxC(isActive: _isActive, onTap: _ontap);
  }
}

class _TapBoxC extends StatefulWidget {
  final bool isActive;
  final Function onTap;

  _TapBoxC({
    Key key,
    this.isActive: false,
    @required this.onTap,
  }) : super(key: key);
  @override
  __TapBoxCState createState() => __TapBoxCState();
}

class __TapBoxCState extends State<_TapBoxC> {

  bool _highlight = false;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _onTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: _onTapDown,
      onTapCancel: _onTapCancel,
      onTapUp: _onTapUp,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          widget.isActive ? 'Active' : 'InActive',
        ),
        decoration: BoxDecoration(
          color: widget.isActive ? Colors.green : Colors.grey[500],
          border: _highlight
              ? Border.all(
            color: Colors.teal[700],
            width: 10,
          )
              : null,
        ),
        width: 150,
        height: 150,
      ),
    );
  }
}



