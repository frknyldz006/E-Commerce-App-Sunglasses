import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe3e3e3),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverAppBar(
              backgroundColor: Colors.transparent,
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back),
              ),
              actions: [
                IconButton(onPressed: () {

                }, icon: Icon(Icons.favorite))
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Image.network(
              "https://png.pngtree.com/png-vector/20240207/ourmid/pngtree-black-sunglasses-eyewear-png-image_11671474.png",
              height: 400,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height-440,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Scotty square blue light\nglasses essential",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 24),
                    ),
                    SizedBox(height: 20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Select Size",
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary)),
                            Row(
                              children: [
                                sizeC(
                                  context,
                                  "S",
                                ),
                                sizeC(context, "M"),
                                sizeC(context, "L"),
                                sizeC(context, "XL"),
                                sizeC(context, "XS")
                              ],
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text("Select Color",
                                style: TextStyle(
                                    color:
                                    Theme.of(context).colorScheme.secondary)),
                            Row(

                              children: [
                                CircleAvatar(radius: 10,backgroundColor: Colors.orange,),
                                SizedBox(width: 4,),
                                CircleAvatar(radius: 10,backgroundColor: Colors.purple,),
                                SizedBox(width: 4,),
                                CircleAvatar(radius: 10,backgroundColor: Colors.red,),
                                SizedBox(width: 4,),
                                CircleAvatar(radius: 10,backgroundColor: Colors.blue,),
                                SizedBox(width: 4,),
                                CircleAvatar(radius: 10,backgroundColor: Colors.grey,)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Divider(
                      color: Colors.white,
                    ),
                    ListTile(
                      title: Text("Product Details",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900)),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add, color: Colors.white)),
                    ),
                    ListTile(
                        title: Text("Review",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900)),
                        trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                            ))),
                    Divider(
                      color: Colors.white,
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$267.20",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 24)),
                        Container(
                          width: 140,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Add to Cart",
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding sizeC(BuildContext context, text) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0),
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ),
    );
  }
}
