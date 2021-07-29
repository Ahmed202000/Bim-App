import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  String text,
  @required Function function,
  bool isUpperCase = true,
  double radius = 0.0,
}) =>
    Container(
      width: width,
      height: 40.0,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
    );

Widget defaultFormField({

  @required TextEditingController controller,
  @required TextInputType type,
  @required String label,
  @required IconData prefix,
  Function onTab,
  IconData suffix,
  bool isClickable=true,
  @required Function validet,
  bool isPassword=false,
  Function suffixPressed,
}) =>
    TextFormField(
      obscureText: isPassword,
      controller: controller,
      keyboardType: type,
      onTap: onTab,
      enabled: isClickable,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix!=null ? IconButton(
          onPressed: suffixPressed,
          icon: Icon
            (suffix),
        ) :null ,
        border: OutlineInputBorder(),
      ),
      validator: validet,
    );

Widget buildTaskItem(Map model)=>Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
      CircleAvatar(
        radius: 40.0,
        child:
        Text('${model['date']}'),
      ),
      SizedBox(width: 20.0,),

      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${model['title']}', style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, color: Colors.black),),
          Text('${model['time']}', style: TextStyle(color: Colors.grey),),
        ],
      ),
    ],
  ),
);

