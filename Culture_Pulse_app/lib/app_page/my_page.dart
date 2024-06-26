import 'package:flutter/material.dart';

import 'package:oktoast/oktoast.dart';
import 'package:culture_pulse_app/cache.dart';
import 'package:culture_pulse_app/app_page/my_collection_page.dart';
import 'package:sp_util/sp_util.dart';

class MyPage extends StatefulWidget {
  const MyPage({
    super.key,
    this.refreshData,
  });

  final Function? refreshData;

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300, //adjust yellow background here
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(((SpUtil.getInt(Cache.mainColorCache) ??
                                    Cache.mainColor.value) +
                                2000) <
                            09
                        ? (SpUtil.getInt(Cache.mainColorCache) ??
                            Cache.mainColor.value)
                        : ((SpUtil.getInt(Cache.mainColorCache) ??
                                Cache.mainColor.value) +
                            2000)),
                    Color(SpUtil.getInt(Cache.mainColorCache) ??
                        Cache.mainColor.value),
                  ],
                ),
              ),
              child: _buildTopPersonalBasicInfo(),
            ),
            const SizedBox(
              height: 20, //adjust white first gap on homepage here
            ),
            
           //location for MY COLLECTION jump column
             const SizedBox(
              height: 10, //adjust gap between first and yellow gap tab here
            ),
            _everyJumpColumn('My Collection', () {
              /// Jump to my collection page
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const MyCollectionPage()));
            }), 
            
           // Insert a box for pictures between my collection and change color scheme
              const SizedBox(
                   height: 20, 
                    ),
              Container(      
                     height: 200, // adjust box height
                     color: Color.fromARGB(255, 250, 238, 198), 
                     child: Center(
                     child: Image.asset('assets/image/culture_pulse.png', 
                               width: 800, 
                               height: 150, 
                     fit: BoxFit.contain, // set the image fit box
                            ),
                           ),
                          ), 
                const SizedBox(
                     height: 20, 
                      ),
           
            const SizedBox(
              height: 10, // adjust gap between second and third tab distance here
            ),
            _everyJumpColumn('Restore original setting', () {
              showToast(
                  'Restored to original settings,all data has been restored to the original state');
              setState(() {
                SpUtil.putInt(Cache.mainColorCache, Cache.mainColor.value);
                SpUtil.putObjectList(Cache.myCollectionScenicList, []);
              });
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildTopPersonalBasicInfo() {
    return Container(
      padding: const EdgeInsets.all(18),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 120,
                  child: Row(
                    children: [
                      Text(
                        'Home Page',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                // Gaps.vGap20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.asset(
                              'assets/image/culture_pulse.png',
                              width: 130, // image size
                              height: 130,
                            )),
                        Container(
                          margin: const EdgeInsets.only(left: 20), //username location
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(
                                      SpUtil.getInt(Cache.mainColorCache) ??
                                          Cache.mainColor.value),
                                  borderRadius: BorderRadius.circular(19),
                                ),
                                padding: const EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                ),
                                child: const Text(
                                  'My Culture Pulse',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// One-line jump
  Widget _everyJumpColumn(String title, VoidCallback voidCallBack) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        voidCallBack.call();
      },
      child: Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(
              SpUtil.getInt(Cache.mainColorCache) ?? Cache.mainColor.value),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            const Icon(
              Icons.arrow_forward_ios,
              size: 14,
            ),
          ],
        ),
      ),
    );
  }
}
