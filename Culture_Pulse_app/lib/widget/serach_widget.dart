// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:culture_pulse_app/cache.dart';
import 'package:culture_pulse_app/custom_database/database.dart';
import 'package:culture_pulse_app/model/every_scenic_entity.dart';
import 'package:culture_pulse_app/app_page/map_detail.dart';
import 'package:sp_util/sp_util.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  final List<String> _data = [];
  final List<String> _searchResult = [];

  @override
  void initState() {
    for (var model in AllScenic.scenicList) {
      _data.add(model.name ?? '');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Color(SpUtil.getInt(Cache.mainColorCache) ?? Cache.mainColor.value),
        centerTitle: true,
        title: const Text('Fuzzy Search'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onTap: null,
              controller: _searchController,
              onChanged: _onSearchTextChanged,
              decoration: const InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _searchResult.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    EveryScenicEntity model = AllScenic.scenicList.firstWhere(
                        (element) => element.name == _searchResult[index]);

                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => MapDetailPage(
                                  scenicModel: model,
                                )));
                  },
                  child: ListTile(
                    title: Text(
                      _searchResult[index],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _onSearchTextChanged(String value) {
    setState(() {
      _searchResult.clear();
      if (value.isNotEmpty) {
        for (var item in _data) {
          if (item.toLowerCase().contains(value.toLowerCase())) {
            _searchResult.add(item);
          }
        }
      }
    });
  }
}
