import 'package:abmart_uranus_academy/UI/Details/details.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class HomeScreenHome extends StatefulWidget {
  const HomeScreenHome({Key? key}) : super(key: key);

  @override
  _HomeScreenHomeState createState() => _HomeScreenHomeState();
}

class _HomeScreenHomeState extends State<HomeScreenHome> {

  Widget _buildTodaysDeal(){
    double height =MediaQuery.of(context).size.height;
    double width =MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailsScreen()));},
      child: Column(
        children: [
          Container(
            width: width * 0.3937,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: width*0.355,
                      height: height*0.154,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: kGreyColor,
                      ),
                      child: Hero(
                        tag: 'asset/images/indomie.png',
                        child: Image.asset(
                          'asset/images/indomie.png',
                        height: height*0.118,
                          width: width*0.273,
                        ),
                      ),
                    ),
                    Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          width: width*0.0821,
                          height: height*0.02567,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),topRight: Radius.circular(8)),
                            color: kBrandColor.withOpacity(0.4)
                          ),
                          child: Center(child: Text('-10%',style: kVeryVerySmallTextSelectedRegular.copyWith(color: Colors.orange),)),
                        ))
                  ],
                ),
                const SizedBox(height: 10),
                Text('Indomie Onion Chicken', style: kSmallTextRegular,textAlign: TextAlign.start,),
                const SizedBox(height: 4),
                RichText(
                    text: TextSpan(
                      text: '\$3,350',
                      style: kSmallTextRegular.copyWith(decoration: TextDecoration.lineThrough,color: Colors.grey),
                      children: <TextSpan>[
                        TextSpan(text: ' \$2,800',style: kSmallTextRegular.copyWith(color: Colors.black,decoration: TextDecoration.none)),
                      ]
                    )),
              ],
            ),
          ),
          const SizedBox(height: 2,),

        ],
      ),
    );
  }
  Widget _buildCovidEssentials(){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        SizedBox(
          height: height*0.38,
        ),
        Container(
          width: width*0.442,
          height: height*0.2879,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kGreyColor,
          ),
          child: Image.asset(
            'asset/images/indomie.png',
            height: height*0.118,
            width: width*0.273,
          ),
        ),
        Positioned(
            top: height*0.23995,
            left: width*0.02657,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,),
              height: height*0.1383,
              width: width*0.4154,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8),bottomLeft: Radius.circular(8)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10,),
                  RichText(
                    text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: "\$3,350",style: kSmallTextBold.copyWith(color: Colors.black)),
                      TextSpan(text: ' NGN',style: kVeryVerySmallTextSelectedRegular.copyWith(color: Colors.black))
                    ]
                  ),),
                  const SizedBox(height: 10,),
                  Text('Portable Hand Thermometer',style: kVerySmallTextSelectedRegular.copyWith(color: Colors.black54),),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.star,color: kBrandColor,size: 13,),
                      Icon(Icons.star,color: kBrandColor,size: 13,),
                      Icon(Icons.star,color: kBrandColor,size: 13,),
                      Icon(Icons.star,color: kBrandColor,size: 13,),
                      Icon(Icons.star_border_outlined,color: kBrandColor,size: 13,),
                      Text(' (100)',style: kVerySmallTextSelectedRegular.copyWith(color: Colors.black),)

                    ],
                  )
                ],
              ),
            ))
      ],
    );
  }
  Widget _buildNewInStore(){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        SizedBox(
          height: height*0.38,
        ),
        Container(
          width: width*0.442,
          height: height*0.2879,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kGreyColor,
          ),
          child: Image.asset(
            'asset/images/indomie.png',
            height: height*0.118,
            width: width*0.273,
          ),
        ),
        Positioned(
            top: height*0.23995,
            left: width*0.02657,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              height: height*0.1383,
              width: width*0.4154,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8),bottomLeft: Radius.circular(8)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10,),
                  RichText(
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: "\$3,350",style: kSmallTextBold.copyWith(color: Colors.black)),
                          TextSpan(text: ' NGN',style: kVeryVerySmallTextSelectedRegular.copyWith(color: Colors.black))
                        ]
                    ),),
                  const SizedBox(height: 10,),
                  Text('Portable Hand Thermometer',style: kVerySmallTextSelectedRegular.copyWith(color: Colors.black54),),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.star,color: kBrandColor,size: 13,),
                      Icon(Icons.star,color: kBrandColor,size: 13,),
                      Icon(Icons.star,color: kBrandColor,size: 13,),
                      Icon(Icons.star,color: kBrandColor,size: 13,),
                      Icon(Icons.star_border_outlined,color: kBrandColor,size: 13,),
                      Text(' (100)',style: kVerySmallTextSelectedRegular.copyWith(color: Colors.black),)

                    ],
                  )
                ],
              ),
            ))
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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            SizedBox(height: height*0.0357,),
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
                top: height*0.0189,
                  left: width*0.0483,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Black Friday Offers',style: kVeryVerySmallTextSelectedRegular,),
                      Text('Up to 50% OFF',style: kSmallTextBold.copyWith(color: Colors.white),),
                      Text('15th-26th November',style: kMediumTextBold.copyWith(color: Colors.white),),
                      const SizedBox(height: 10,),
                      Container(
                        height: height*0.0352,
                        decoration: BoxDecoration(
                          color: kBrandColor,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: MaterialButton(
                          onPressed: (){},
                          child: Text('Shop Now', style:kVeryVerySmallTextSelectedRegular ,),
                        ),
                      )

                    ],
                  ) ),
                Positioned(
                    bottom: height*0.0111,
                    left: width*0.5 - 38,
                    child: Row(
                      children: [
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: kBrandColor,
                            borderRadius: BorderRadius.circular(8)
                          ),
                        ),
                        const SizedBox(width: 7,),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)
                          ),
                        ),
                        const SizedBox(width: 7,),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)
                          ),
                        ),
                      ],
                    ))
              ],
            ),
            SizedBox(height: height*0.0357,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Today's Deal",style: kLargeTextBold,),
                Text("See all",style: kSmallTextRegular,),
              ],
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: height * 0.3,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context,int index){
                return _buildTodaysDeal();
              }, separatorBuilder: (BuildContext context, int index) { return const SizedBox(width: 10,); },),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Covid essentials",style: kLargeTextBold,),
                Text("See all",style: kSmallTextRegular,),
              ],
            ),
            const SizedBox(height: 5,),
            GridView.builder(
              shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: height*0.38,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index){
                  return _buildCovidEssentials();
                }),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("New In Store",style: kLargeTextBold,),
                Text("See all",style: kSmallTextRegular,),
              ],
            ),
            const SizedBox(height: 5,),
            GridView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: height*0.38,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index){
                  return _buildNewInStore();
                }),




          ],
        ),
      ),
    );
  }
}
