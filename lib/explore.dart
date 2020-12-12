


import 'package:demo_food/utils/AppConstant.dart';
import 'package:flutter/material.dart';

class ExploreContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Discover something delicious',
                    style: TextStyle(fontSize: 17, color: Colors.grey),
                  ),
                  Container(
                    width: size.width * .27,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.filter_alt_outlined,
                          color: AppConstant.primaryColor,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Filter',
                          style: TextStyle(color: AppConstant.primaryColor, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              foodImageContainer(size,"assets/images/noodles.jpg"),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'Stir Fry Zucchini Noodles',
                    style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      categoryContainer("Noodles"),
                      SizedBox(width: 15),
                      categoryContainer("Italian"),
                      SizedBox(width: 15),
                      categoryContainer("Main Dish"),
                    ],
                  ),
                  Icon(
                    Icons.delete_outline,
                    size: 30,
                    color: Colors.grey,
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Column(
            children: [
              SizedBox(height: 15),
              foodImageContainer(size,"assets/images/burger.jpg"),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'Chicken Burger ',
                    style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      categoryContainer("Noodles"),
                      SizedBox(width: 15),
                      categoryContainer("Italian"),
                      SizedBox(width: 15),
                      categoryContainer("Main Dish"),
                    ],
                  ),
                  Icon(
                    Icons.delete_outline,
                    size: 30,
                    color: Colors.grey,
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Column(
            children: [
              SizedBox(height: 15),
              foodImageContainer(size,"assets/images/futchka.jpg"),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    "SPECIAL Jelly Fuchka",
                    style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      categoryContainer("Noodles"),
                      SizedBox(width: 15),
                      categoryContainer("Italian"),
                      SizedBox(width: 15),
                      categoryContainer("Main Dish"),
                    ],
                  ),
                  Icon(
                    Icons.delete_outline,
                    size: 30,
                    color: Colors.grey,
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Container foodImageContainer(Size size,String imagePath) {
    return Container(
      height: size.height * .27,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Container(
              height: size.height * .3,
              width: size.width,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    '$imagePath',
                    fit: BoxFit.fitWidth,
                  ))),
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child: Container(
              height: size.height * .28,
              width: size.width * .29,
              child: Stack(
                children: [
                  Image.asset('assets/images/shape_bg.jpg'),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.access_time_outlined, color: Colors.white),
                        Text("20 min", style: TextStyle(color: Colors.white)),
                        SizedBox(height: 10),
                        Divider(
                          thickness: 1,
                          color: Colors.white,
                        ),
                        Icon(Icons.favorite_border, color: Colors.white),
                        Text("130 cal", style: TextStyle(color: Colors.white)),
                        SizedBox(height: 10),
                        Divider(
                          thickness: 1,
                          color: Colors.white,
                        ),
                        Container(
                          height: size.height * 0.07,
                          width: size.height * 0.075,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.business_center_outlined,
                                color: AppConstant.primaryColor,
                              ),
                              SizedBox(height: 5),
                              Text(
                                '3/6',
                                style: TextStyle(color: AppConstant.primaryColor, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                // padding: EdgeInsets.only(),
                margin: EdgeInsets.only(left: 10,top: 10),
                height: size.height * .05,
                width: size.height * .05,
                decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: Icon(
                  Icons.star,
                  color: AppConstant.primaryColor,
                ),
              ))
        ],
      ),
    );
  }
  Container categoryContainer(String name) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(22), border: Border.all(color: Colors.grey)),
      child: Text(
        '$name',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
