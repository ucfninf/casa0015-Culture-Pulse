import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:oktoast/oktoast.dart';
import 'package:culture_pulse_app/cache.dart';
import 'package:culture_pulse_app/model/every_scenic_entity.dart';
import 'package:culture_pulse_app/app_page/map_detail.dart';
import 'package:culture_pulse_app/app_page/navigation_page.dart';
import 'package:sp_util/sp_util.dart';

class MyCollectionPage extends StatefulWidget {
  const MyCollectionPage({super.key});

  @override
  State<MyCollectionPage> createState() => _MyCollectionPageState();
}

class _MyCollectionPageState extends State<MyCollectionPage> {
  List<EveryScenicEntity> _list = [];

  @override
  void initState() {
    /// load object list here
    super.initState();
    _list = (SpUtil.getObjectList(Cache.myCollectionScenicList) != null &&
            SpUtil.getObjectList(Cache.myCollectionScenicList)!.isNotEmpty)
        ? (SpUtil.getObjectList(Cache.myCollectionScenicList) as List<Map>)
            .map((e) => EveryScenicEntity.fromJson(e as Map<String, dynamic>))
            .toList()
        : [];

    // /// TEST
    // _list = AllScenic.scenicList.where((element) => element.id! < 10).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Color(SpUtil.getInt(Cache.mainColorCache) ?? Cache.mainColor.value),
        centerTitle: true,
        title: const Text(
          'My Collection',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
                _list.length, (index) => _buildEveryPosition(index))
          ],
        ),
      ),
    );
  }

  Widget _buildEveryPosition(index) {
    return GestureDetector(
      onTap: () {
        /// Jump to attraction details page
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => MapDetailPage(
                  scenicModel: _list[index],
                )));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    _list[index].name ?? '',
                    style: const TextStyle(overflow: TextOverflow.ellipsis),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.asset(
                      'assets/image/${_list[index].photo!.first}.png',
                      width: 90,
                      height: 90,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    _list[index].introduce ?? '',
                    maxLines: 4,
                    style: const TextStyle(overflow: TextOverflow.ellipsis),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      /// Uncollect
                      _list.remove(_list[index]);
                      List<EveryScenicEntity> tempList = List.from(_list);
                      SpUtil.putObjectList(
                          Cache.myCollectionScenicList, tempList);
                      showToast('Uncollect successfully');
                      setState(() {});
                    },
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 20,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 120,
                      height: 32,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          side: const BorderSide(color: Colors.blue),
                        ),
                        onPressed: () {
                          /// Jump to attraction details page
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => MapDetailPage(
                                    scenicModel: _list[index],
                                  )));
                        },
                        child: const Text(
                          'View Details',
                          
                          // style
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 120,
                      height: 32,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          side: const BorderSide(color: Colors.orange),
                        ),
                        onPressed: () {
                          /// Navigate page
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => NavigationPage(
                                        destinationPosition: LatLng(
                                            _list[index].latitude!,
                                            _list[index].longitude!),
                                      )));
                        },
                        child: const Text(
                          'Navigate',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
