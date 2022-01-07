import 'package:abmart_uranus_academy/constants.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {

  Widget _buildPersonalInformation(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Personal Information', style: kMediumTextBold,),
        const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Olanrewaju Abass-Olisa', style: kSmallTextRegular,),
                const SizedBox(height: 7,),
                Text('kalanruse@gmail.com', style: kSmallTextRegular,),
                const SizedBox(height: 7,),
                Text('+234 818 1539 602', style: kSmallTextRegular,),
              ],
            ),
            Text('Change', style: kSmallTextRegular.copyWith(color: Colors.grey),),
          ],
        )
      ],
    );
  }

  Widget _buildDeliveryLocation(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Delivery Location', style: kMediumTextBold,),
        const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width *0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('20, Adeniran Ogunsanya Street, Surulere, Lagos', style: kSmallTextRegular,textAlign: TextAlign.start,),
                ],
              ),
            ),
            Text('Change', style: kSmallTextRegular.copyWith(color: Colors.grey),),
          ],
        )
      ],
    );
  }

  Widget _buildPaymentOption(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Payment Option', style: kMediumTextBold,),
        const SizedBox(height: 20,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 55,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color:const Color(0xffFF8819) ),
                  color: kGreyColor
                ),
                child: Image.asset('asset/images/mastercard.png',),
              ),
              const SizedBox(width: 10,),
              Container(
                height: 55,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kGreyColor
                ),
                child: Image.asset('asset/images/visa.png',),
              ),
              const SizedBox(width: 10,),
              Container(
                height: 55,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kGreyColor
                ),
                child: Image.asset('asset/images/paypal.png',),
              ),
            ],
          ),
        )
      ],
    );
  }




  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
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
                 'Checkout',
                 style: kLargeTextBold,
               ),
               Text(
                 '3 Items',
                 style: kSmallTextRegular.copyWith(color: Colors.grey),
               ),
             ],
           ),
           const SizedBox(height: 20,width: 20,)
         ],
       ),
       const SizedBox(height: 40,),
       _buildPersonalInformation(),
       const SizedBox(height: 30,),
       _buildDeliveryLocation(),
       const SizedBox(height: 30,),
       _buildPaymentOption(),

     ],
    ),),

    );
  }
}
