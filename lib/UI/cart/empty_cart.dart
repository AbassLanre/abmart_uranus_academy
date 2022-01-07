import 'package:abmart_uranus_academy/UI/homescreen/home_screen.dart';
import 'package:abmart_uranus_academy/constants.dart';
import 'package:flutter/material.dart';

class EmptyCart extends StatefulWidget {
  const EmptyCart({Key? key}) : super(key: key);

  @override
  _EmptyCartState createState() => _EmptyCartState();
}

class _EmptyCartState extends State<EmptyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      size: 20,
                      color: Colors.black,
                    )),
                Column(
                  children: [
                    Text(
                      'Your Cart',
                      style: kLargeTextBold,
                    ),
                  ],
                ),
                const SizedBox(height: 20,width: 20,),
              ],
            ),
            const SizedBox(height: 70),
            Image.asset('asset/images/your_cart_empty.png',fit: BoxFit.contain,),
            const SizedBox(height: 80),
            Text('Your Cart is Empty!',style: kMediumTextBold,),
            const SizedBox(height: 8),
            Text("Looks like you haven't added anything to your cart yet",style: kNormalTextRegular,textAlign: TextAlign.center,),
            const SizedBox(height: 30),
            Container(
              width:MediaQuery.of(context).size.width * 0.74,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kBrandColor,
              ),
              child: MaterialButton(
                  height: 50,
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>const HomeScreen()));},
                  child:
                  Text('Start Shopping',style: kNormalTextRegular.copyWith(color: Colors.white),)
              ),
            ),

          ],
        ),
      ),
    );
  }
}
