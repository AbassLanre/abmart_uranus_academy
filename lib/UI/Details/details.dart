import 'package:abmart_uranus_academy/UI/cart/your_cart.dart';
import 'package:abmart_uranus_academy/constants.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final String product;
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  Widget _buildMoreImages() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.0708,
      width: width * 0.1533,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: kGreyColor2),
      child: Image.asset(
        widget.product,
        fit: BoxFit.contain,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
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
                Text(
                  'Details',
                  style: kLargeTextBold,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.search_outlined,
                      size: 20,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>YourCart()));
                        },
                        child: Stack(
                          children: [
                            Image.asset(
                              'asset/images/VectorCart.png',
                              height: 20,
                              width: 20,
                              color: Colors.black,
                            ),
                            Positioned(
                              left: 12,
                              child: Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: kBrandColor),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Stack(
              children: [
                SizedBox(
                  height: height * 0.38,
                  width: width * 0.93,
                ),
                Container(
                  height: height * 0.322,
                  width: width * 0.822,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: kGreyColor2),
                  child: Image.asset(
                    widget.product,
                    height: height * 0.228,
                    width: width * 0.583,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                    top: height * 0.0484,
                    left: width * 0.72,
                    child: Container(
                      height: height * 0.332,
                      width: width * 0.199,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            height: 4,
                          ),
                          _buildMoreImages(),
                          _buildMoreImages(),
                          _buildMoreImages(),
                          _buildMoreImages(),
                          const SizedBox(
                            height: 7,
                          ),
                        ],
                      ),
                    ))
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: kBrandColor.withOpacity(0.2)),
              child: Text(
                'Food and Groceries',
                style: kVeryLittleSmallTextSelectedRegular.copyWith(
                    color: kBrandColor),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Indomie Onion Chicken',
              style: kLargeTextBold.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: kBrandColor,
                  size: 13,
                ),
                Icon(
                  Icons.star,
                  color: kBrandColor,
                  size: 13,
                ),
                Icon(
                  Icons.star,
                  color: kBrandColor,
                  size: 13,
                ),
                Icon(
                  Icons.star,
                  color: kBrandColor,
                  size: 13,
                ),
                Icon(
                  Icons.star,
                  color: Colors.grey,
                  size: 13,
                ),
                Text(
                  ' (100 ratings)',
                  style: kVerySmallTextSelectedRegular.copyWith(
                      color: Colors.grey),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(
                        text: '\$3,350',
                        style: kSmallTextRegular.copyWith(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey),
                        children: <TextSpan>[
                      TextSpan(
                          text: ' \$2,800',
                          style: kHeading5.copyWith(
                              color: kBrandColor,
                              decoration: TextDecoration.none)),
                      TextSpan(
                          text: ' NGN',
                          style: kSmallTextRegular.copyWith(
                              color: Colors.black,
                              decoration: TextDecoration.none)),
                    ])),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.share_outlined,
                      size: 20,
                      color: kBrandColor,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.favorite_border_outlined,
                      size: 20,
                      color: kBrandColor,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Description',
              style: kNormalTextBold,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 110,
              width: double.infinity,
              child: Text(
                'Popular for its exotic taste, Indomie Onion Chicken '
                    'flavour is made of rich ingredients, spices and chicken'
                    ' flavour. This flavour comes with a sachet of seasoning '
                    'oil made from fresh onions in vegetable oil, which when '
                    'cooked together with the seasoning.....',
                textAlign: TextAlign.start,
                style: kSmallTextRegular,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text('See more details   >',style: kSmallTextRegular.copyWith(color: kBrandColor),),
            const SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kBrandColor,
              ),
              child: MaterialButton(
                height: 50,
                onPressed: (){},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                  const SizedBox(width: 15,),
                  Text('Add to Cart',style: kNormalTextRegular.copyWith(color: Colors.white),)
                ],
              ),),
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
