import 'package:abmart_uranus_academy/constants.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  Widget _buildCategories(Color color, String image){
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        color: color,
      ),
      child: Image.asset(image,fit: BoxFit.scaleDown,),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Ab',
                    style: kHeading5,
                  ),
                  Image.asset(
                    kLogoImage,
                    height: 27,
                    width: 27,
                    color: kBrandColor,
                  ),
                  Text(
                    'mart',
                    style: kHeading5,
                  )
                ],
              ),
              Image.asset(
                kLogoImage,
                height: 27,
                width: 27,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(
            height: height * 0.0279,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: kTextFieldBorderColor)),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 20,
                ),
                SizedBox(
                  width: width * 0.041,
                ),
                Text(
                  'Search for products',
                  style: kSmallTextRegular.copyWith(
                      color: const Color(0xff828282)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.0357,
          ),
          Stack(
            children: [
              Container(
                height: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        image: AssetImage('asset/images/black_friday.jpg'),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                  top: height * 0.0189,
                  left: width * 0.0483,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Black Friday Offers',
                        style: kVeryVerySmallTextSelectedRegular,
                      ),
                      Text(
                        'Up to 50% OFF',
                        style: kSmallTextBold.copyWith(color: Colors.white),
                      ),
                      Text(
                        '15th-26th November',
                        style: kMediumTextBold.copyWith(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: height * 0.0352,
                        decoration: BoxDecoration(
                            color: kBrandColor,
                            borderRadius: BorderRadius.circular(8)),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            'Shop Now',
                            style: kVeryVerySmallTextSelectedRegular,
                          ),
                        ),
                      )
                    ],
                  )),
              Positioned(
                  bottom: height * 0.0111,
                  left: width * 0.5 - 38,
                  child: Row(
                    children: [
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: kBrandColor,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ],
                  ))
            ],
          ),
          SizedBox(
            height: height * 0.0357,
          ),
          Text(
            'Categories',
            style: kLargeTextBold,
          ),
          SizedBox(
            height: height * 0.0357,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCategories(Color(0xffFFE7D1).withOpacity(0.3),'asset/images/food_and_groceries.png'),
              _buildCategories(Color(0xffEB5757).withOpacity(0.3),'asset/images/covid_essentials.png'),
              _buildCategories(Color(0xff2F80ED).withOpacity(0.3),'asset/images/drinks.png'),
              _buildCategories(Color(0xff27AE60).withOpacity(0.3),'asset/images/household_electronics.png'),

            ],
          ),
          SizedBox(
            height: height * 0.0357,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCategories(Color(0xff9B51E0).withOpacity(0.3),'asset/images/home.png'),
              _buildCategories(Color(0xffBF09AD).withOpacity(0.3),'asset/images/baby_products.png'),
              _buildCategories(Color(0xffE2B93B).withOpacity(0.4),'asset/images/clothing.png'),
              _buildCategories(Color(0xff00B2FF).withOpacity(0.3),'asset/images/pets.png'),

            ],
          ),
        ]),
      ),
    );
  }
}
