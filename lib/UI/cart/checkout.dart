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

  Widget _buildCardNoExpDate(String title, String value){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: kSmallTextRegular.copyWith(color: Colors.grey),),
        const SizedBox(height: 10,),
        Container(
          padding: const EdgeInsets.only(left: 15),
          alignment: Alignment.centerLeft,
          height: 55,
          width: MediaQuery.of(context).size.width *0.442,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: kGreyColor
          ),
          child: Text(
            value,style: kSmallTextRegular,
          ),
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
        ),
        const SizedBox(height: 15,),
        Text('Card number',style: kSmallTextRegular.copyWith(color: Colors.grey),),
        const SizedBox(height: 8,),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 15),
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kGreyColor
          ),
          child: Text('1234   5678   5789   2345',style: kSmallTextRegular,),
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            _buildCardNoExpDate('Expiry Date', '05/23'),
            const SizedBox(width: 10,),
            _buildCardNoExpDate('CVV', '***')
          ],
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
       const SizedBox(height: 30,),
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text('Pay on delivery',style: kSmallTextRegular,),
               Text('(Currently not available due to COVID)',style: kSmallTextRegular)
             ],
           ),
           const Icon(Icons.toggle_on_rounded,size: 50,color: Colors.grey,)
         ],
       ),
       const SizedBox(height: 70,),
       Container(
         width: double.infinity,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(8),
           color: kBrandColor,
         ),
         child: MaterialButton(
             height: 50,
             onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>const CheckoutScreen()));},
             child:
             Text('Pay \$12,100.00',style: kNormalTextRegular.copyWith(color: Colors.white),)
         ),
       ),
       const SizedBox(height: 30,),

     ],
    ),),

    );
  }
}
