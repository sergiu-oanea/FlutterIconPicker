import 'package:flutter/material.dart';
import '../Helpers/ColorBrightness.dart';
import '../IconPicker/iconPicker.dart';
import '../IconPicker/searchBar.dart';
import '../Models/IconPack.dart';

class FullScreenDialog extends StatelessWidget {
  const FullScreenDialog({
    Key? key,
    required this.showSearchBar,
    required this.showTooltips,
    required this.backgroundColor,
    required this.title,
    required this.iconPackMode,
    required this.customIconPack,
    required this.searchIcon,
    required this.searchClearIcon,
    required this.searchHintText,
    required this.iconColor,
    required this.noResultsText,
    required this.iconSize,
    required this.mainAxisSpacing,
    required this.crossAxisSpacing,
  }) : super(key: key);

  final bool? showSearchBar;
  final bool? showTooltips;
  final Color? backgroundColor;
  final Widget? title;
  final List<IconPack>? iconPackMode;
  final Map<String, IconData>? customIconPack;
  final Icon? searchIcon;
  final Icon? searchClearIcon;
  final String? searchHintText;
  final Color? iconColor;
  final String? noResultsText;
  final double? iconSize;
  final double? mainAxisSpacing;
  final double? crossAxisSpacing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 0,
            bottom: 16,
            left: 16,
            right: 16,
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: kToolbarHeight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DefaultTextStyle(
                      child: title!,
                      style: TextStyle(
                        color: ColorBrightness(backgroundColor!).isLight()
                            ? Colors.black
                            : Colors.white,
                        fontSize: 32,
                      ),
                    ),
                    Container(
                      transform: Matrix4.translationValues(12.0, 0.0, 0.0),
                      child: IconButton(
                        icon: Icon(
                          Icons.close,
                          color: ColorBrightness(backgroundColor!).isLight()
                              ? Colors.black
                              : Colors.white,
                          size: 32,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ],
                ),
              ),
              if (showSearchBar!)
                SearchBar(
                  iconPack: iconPackMode,
                  customIconPack: customIconPack,
                  searchIcon: searchIcon,
                  searchClearIcon: searchClearIcon,
                  searchHintText: searchHintText,
                  backgroundColor: backgroundColor,
                  iconColor: this.iconColor,
                ),
              Expanded(
                child: IconPicker(
                  showTooltips: showTooltips,
                  iconPack: iconPackMode,
                  customIconPack: customIconPack,
                  iconColor: iconColor,
                  backgroundColor: backgroundColor,
                  noResultsText: noResultsText,
                  iconSize: iconSize,
                  mainAxisSpacing: mainAxisSpacing,
                  crossAxisSpacing: crossAxisSpacing,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
