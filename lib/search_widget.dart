import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchWidget extends StatefulWidget {
  final String labelText;
  final bool requestFocus;
  final Function(String) onTextChanged;
  final Function onFilterClick;

  const SearchWidget(
      {Key key,
      this.labelText,
      this.onTextChanged,
      this.requestFocus = true,
      this.onFilterClick})
      : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final _searchQuery = new TextEditingController();
  Timer _debounce;

  @override
  void initState() {
    super.initState();
    _searchQuery.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchQuery.removeListener(_onSearchChanged);
    _searchQuery.dispose();
    super.dispose();
  }

  _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce.cancel();
    _debounce = Timer(const Duration(milliseconds: 1000), () {
      widget.onTextChanged(_searchQuery.text.trim());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              border: Border.all(
                width: 1.0,
                color: Color(0xffd3dbe0),
              ),
            ),
            child: TextField(
              controller: _searchQuery,
              textCapitalization: TextCapitalization.none,
              autofocus: widget.requestFocus,
              textAlignVertical: TextAlignVertical.center,
              style: Theme.of(context).textTheme.subtitle,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xffd3dbe0),
                ),
                suffixIcon: _searchQuery.text.isEmpty
                    ? null
                    : IconButton(
                        icon: Icon(
                          Icons.clear,
                          color: Color(0xffd3dbe0),
                        ),
                        onPressed: () {
                          _searchQuery.clear();
                        },
                      ),
                focusedBorder: InputBorder.none,
                hintText: widget.labelText,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: ClipOval(
            child: Material(
              color: Color.fromRGBO(17, 17, 17, 1),
              child: InkWell(
                splashColor: Color(0xffd3dbe0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.filter_list,
                    color: Color(0xffd3dbe0),
                  ),
                ),
                onTap: () {
                  widget.onFilterClick();
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
