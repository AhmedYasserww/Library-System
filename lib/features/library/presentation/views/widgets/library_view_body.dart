import 'package:flutter/material.dart';
import 'package:library_system/core/utils/app_color.dart';
import 'package:library_system/core/utils/styles.dart';
import 'package:library_system/core/widgets/custom_text_field.dart';
import 'package:library_system/generated/assets.dart';

class LibraryViewBody extends StatelessWidget {
  const LibraryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 24),
            Text(
              "DISCOVER YOUR NEXT GREAT READ : ",
              style: Styles.textStyleBold18.copyWith(color: const Color(0xff838995)),
            ),
            const SizedBox(height: 16),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: Styles.textStyleBold30.copyWith(color: Colors.white),
                children: [
                  const TextSpan(text: "Explore And Search For "),
                  TextSpan(
                    text: "Any Book",
                    style: Styles.textStyleBold30.copyWith(color: const Color(0xffe5b21b)),
                  ),
                  const TextSpan(text: " In Our Library"),
                ],
              ),
            ),
            SizedBox(height: 24,),
            CustomTextField(
              fillColor: Color(0xff1c2232),
              filledColor: true,

              prefixIcon: Icon(Icons.search,color: Colors.grey,),
              hintText: "Search by title or author....",
            ),
            SizedBox(height: 44,),
            Row(
              children: [
                Text("All Books",style: Styles.textStyleBold24,),
                SizedBox(width: 16,),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff1c2232),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey,width: 1)

                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                    child: Row(
                      children: [
                    Icon(Icons.tune_outlined,size: 32,  color:  Color(0xff929BAB)),
                        SizedBox(width: 16,),
                        Text("Sort by ",style: Styles.textStyleBold24.copyWith(color: Color(0xffeceff5)),),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 16,),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff1c2232),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey,width: 1)

                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                    child: Icon(Icons.filter_list_alt,size: 32,  color:  Color(0xffeceff5)),
                  ),
                )
              ],
            ),
            SizedBox(height: 8,),
            Divider(color: Color(0xff929BAB),),
            SizedBox(height: 8,),
    
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(15),
        
            
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              children: [
                SizedBox(height: 2,),
                Image(image: AssetImage(Assets.imagesImage2),),
                SizedBox(height: 12,),
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                )),
                SizedBox(height: 16,)
        
        
              ],
            ),
          ),
        ),
        SizedBox(height: 4,),
        Text("Origin",style: Styles.textStyleBold24.copyWith(color: Colors.white),),
        Text("Dan Brown",style: Styles.textStyleMedium18.copyWith(color: Color(0xff606670)),),
        SizedBox(height: 2,),
        Text("\$7.99",style: Styles.textStyleBold30.copyWith(color: AppColors.buttonColor),),
      ],
    ),
            

          ],
        ),
      ),
    );
  }
}
