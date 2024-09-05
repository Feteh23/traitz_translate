// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `search`
  String get search {
    return Intl.message(
      'search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `popular trends`
  String get populartrends {
    return Intl.message(
      'popular trends',
      name: 'populartrends',
      desc: '',
      args: [],
    );
  }

  /// `science`
  String get subject1 {
    return Intl.message(
      'science',
      name: 'subject1',
      desc: '',
      args: [],
    );
  }

  /// `Technology`
  String get subject2 {
    return Intl.message(
      'Technology',
      name: 'subject2',
      desc: '',
      args: [],
    );
  }

  /// `Economics`
  String get subject3 {
    return Intl.message(
      'Economics',
      name: 'subject3',
      desc: '',
      args: [],
    );
  }

  /// `Mathematics`
  String get subject4 {
    return Intl.message(
      'Mathematics',
      name: 'subject4',
      desc: '',
      args: [],
    );
  }

  /// `popular tutor`
  String get populartutor {
    return Intl.message(
      'popular tutor',
      name: 'populartutor',
      desc: '',
      args: [],
    );
  }

  /// `phD in Software Engineering`
  String get phD {
    return Intl.message(
      'phD in Software Engineering',
      name: 'phD',
      desc: '',
      args: [],
    );
  }

  /// `No. of students: 1234+`
  String get no {
    return Intl.message(
      'No. of students: 1234+',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `View profile`
  String get View {
    return Intl.message(
      'View profile',
      name: 'View',
      desc: '',
      args: [],
    );
  }

  /// `book`
  String get book {
    return Intl.message(
      'book',
      name: 'book',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
