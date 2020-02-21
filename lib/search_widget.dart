import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchWidget extends StatefulWidget {
  final String labelText;
  final bool requestFocus;
  final Function(String) onTextChanged;

  const SearchWidget(
      {Key key, this.labelText, this.onTextChanged, this.requestFocus = true})
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
    _debounce = Timer(const Duration(milliseconds: 500), () {
      widget.onTextChanged(_searchQuery.text.trim());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: TextField(
        controller: _searchQuery,
        textCapitalization: TextCapitalization.sentences,
        autofocus: widget.requestFocus,
        textAlignVertical: TextAlignVertical.center,
        style: Theme.of(context).textTheme.subtitle,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search),
          suffixIcon: _searchQuery.text.isEmpty
              ? null
              : IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    _searchQuery.clear();
                  },
                ),
          focusedBorder: InputBorder.none,
          hintText: widget.labelText,
        ),
      ),
    );
  }
}
