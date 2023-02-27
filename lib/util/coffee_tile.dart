import 'package:flutter/material.dart';

class CoffeTile extends StatelessWidget {
  const CoffeTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
        child: Container(
          padding: EdgeInsets.all(12),
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
              color: Colors.black54
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset('lib/images/rename1.jpg'),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Latte',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'With Almond Milk and Choco',
                      style: TextStyle(
                        color: Colors.grey[700]
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric( horizontal: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$4.00'),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child: Icon(Icons.add)
                    )
                  ],
                ),
              )
            ],
          )
        ),
    );
  }
}
