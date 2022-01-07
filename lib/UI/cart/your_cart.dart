import 'package:abmart_uranus_academy/UI/cart/checkout.dart';
import 'package:abmart_uranus_academy/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YourCart extends StatefulWidget {
  const YourCart({Key? key}) : super(key: key);

  @override
  _YourCartState createState() => _YourCartState();
}

class _YourCartState extends State<YourCart> {

  Widget _buildCartContainerList(String image, String name, String price, String quantity){
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: kGreyColor
                ),
                child: Image.asset(image,fit: BoxFit.contain,),
              ),
              const SizedBox(width: 15,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,style: kSmallTextRegular.copyWith(color: Colors.black),),
                  RichText(
                      text: TextSpan(
                          text: '\$$price',
                          style: kNormalTextBold.copyWith(color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' NGN',
                                style: kVerySmallTextSelectedRegular.copyWith(color: Colors.black)
                            )
                          ]
                      )),
                  Text('Qty: $quantity', style: kSmallTextRegular.copyWith(color: Colors.grey[500]),)
                ],
              ),
            ],
          ),
          const Icon(Icons.edit_outlined,size: 20,color: Colors.black,)
        ],
      ),
    );
  }

  Widget _buildRowBottom(String title, String value){
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: kSmallTextBold.copyWith(color: Colors.grey),),
          Text(value, style: kSmallTextBold.copyWith(color: Colors.black,) ),
        ],
      ),
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
                    Text(
                      '3 Items',
                      style: kSmallTextRegular.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 20,width: 20,)
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kGreyColor
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      Text("25",style: kHeading2.copyWith(color: Colors.black),),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('%',style: kLargeTextBold,),
                          Text('OFF',style: kVeryLittleSmallTextSelectedRegular.copyWith(color: Colors.black),)
                        ],
                      )
                    ],
                  ),
                  const SizedBox(width: 10,),
                  Container(height: 100,width: 2,color: Colors.grey[300],),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: width*0.536,
                    child: RichText(
                      textAlign: TextAlign.left,
                        text: TextSpan(
                      text: 'use code',
                      style: kNormalTextRegular.copyWith(color: Colors.grey[500]),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' ABMARTLAUNCH',
                          style: kNormalTextBold.copyWith(color: Colors.black)
                        ),
                        TextSpan(
                            text: ' at checkout',
                            style: kNormalTextRegular.copyWith(color: Colors.grey[500])
                        ),
                      ],
                    )),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            _buildCartContainerList('asset/images/indomie.png', 'Indomie Onion Chicken', '2800','5' ),
            const SizedBox(height: 25,),
            _buildCartContainerList('asset/images/indomie.png', 'Indomie Onion Chicken', '2800','3' ),
            const SizedBox(height: 25,),
            _buildCartContainerList('asset/images/indomie.png', 'Indomie Onion Chicken', '2800','1' ),
            const SizedBox(height: 15,),
            const Divider(),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kGreyColor
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Promo Code',style: kSmallTextRegular.copyWith(color: Colors.grey[500]),),
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: kBrandColor
                    ),
                    child: Center(child: Text('Add',style: kSmallTextRegular.copyWith(color: Colors.white), )),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15,),
            _buildRowBottom('Sub total (9 items)','\$11,200.00'),
            _buildRowBottom('Shipping Fees','\$900.00'),
            _buildRowBottom('Discount','\$0.00'),
            _buildRowBottom('Total','\$12,100.00'),
            const SizedBox(
              height: 70,
            ),
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
                    Text('Checkout',style: kNormalTextRegular.copyWith(color: Colors.white),)
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
