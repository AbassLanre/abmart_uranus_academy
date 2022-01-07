import 'package:abmart_uranus_academy/UI/homescreen/home_screen.dart';
import 'package:abmart_uranus_academy/constants.dart';
import 'package:flutter/material.dart';

class OrderConfirmation extends StatefulWidget {
  const OrderConfirmation({Key? key}) : super(key: key);

  @override
  _OrderConfirmationState createState() => _OrderConfirmationState();
}

class _OrderConfirmationState extends State<OrderConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        physics: const BouncingScrollPhysics(),
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
                      'Order Confirmation',
                      style: kLargeTextBold,
                    ),
                  ],
                ),
                const SizedBox(height: 20,width: 20,),
              ],
            ),
            const SizedBox(height: 70),
            Image.asset('asset/images/order.png',width: MediaQuery.of(context).size.width -31,height: 160 ,),
          Image.asset('asset/images/confirm.png',height: 50,width: 70,),
            const SizedBox(height: 80),
            Text('Your order has been placed!',style: kMediumTextBold,),
            const SizedBox(height: 8),
            Text('You will receive an email with your order and tracking details',style: kNormalTextRegular,textAlign: TextAlign.center,),
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
                  Text('Continue Shopping',style: kNormalTextRegular.copyWith(color: Colors.white),)
              ),
            ),

          ],
        ),
      ),
    );
  }
}
