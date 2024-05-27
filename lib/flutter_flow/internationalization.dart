import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // First
  {
    'obz57h07': {
      'en': 'YallaFIX',
      'ar': '',
    },
    'zl6dq79x': {
      'en': 'MAKE IT HAPPEN!',
      'ar': '',
    },
    'wqmsj2h0': {
      'en': 'Awesome Experience',
      'ar': '',
    },
    'uczieyyj': {
      'en': 'YOU WILL NEVER FORGET',
      'ar': '',
    },
    'y2xrt1u1': {
      'en': 'You\'re Our Responsability ',
      'ar': '',
    },
    'y7je4nto': {
      'en': 'we are great to serve you',
      'ar': '',
    },
    'u2llj9w8': {
      'en': 'GET STARTED',
      'ar': '',
    },
    '53k68apv': {
      'en': 'BE A PARTNER',
      'ar': '',
    },
    'dgu12nk8': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Emergency_advisor
  {
    '1ji9zc12': {
      'en': 'Emergency',
      'ar': '',
    },
    't2km3154': {
      'en': 'Car Type',
      'ar': '',
    },
    'e16ksyro': {
      'en': 'Car Model',
      'ar': '',
    },
    '28uqhkmd': {
      'en': 'Address',
      'ar': '',
    },
    'cnm3t1io': {
      'en': 'Car Issue',
      'ar': '',
    },
    '116h9bqx': {
      'en':
          'There is  a car need to Change the oil and tires and the car don\'t start',
      'ar': '',
    },
    'smi0p4fw': {
      'en': 'Send car',
      'ar': '',
    },
    'h9x5fa7f': {
      'en': 'Reject',
      'ar': '',
    },
    'c80g9jfk': {
      'en': 'Home',
      'ar': '',
    },
  },
  // booking_cust
  {
    'ftuh0gen': {
      'en': 'Appointment Information',
      'ar': '',
    },
    '5d5q9v2l': {
      'en': 'Option 1',
      'ar': '',
    },
    'nsae0v01': {
      'en': 'Choose a service',
      'ar': '',
    },
    'mh7drrxw': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'mudv365r': {
      'en': '',
      'ar': '',
    },
    'bdes8upr': {
      'en': 'Please enter yout car issue',
      'ar': '',
    },
    '8goacr0x': {
      'en': 'Choose date and time',
      'ar': '',
    },
    'dggoawvk': {
      'en': 'Request Appointment',
      'ar': '',
    },
    'tmyr8lkp': {
      'en': 'Book an Appointment',
      'ar': '',
    },
    'i7zk61pv': {
      'en': 'Please fill in the information below to continue.',
      'ar': '',
    },
    'm6nfrj11': {
      'en': 'Home',
      'ar': '',
    },
  },
  // payment_cust
  {
    '2j281noz': {
      'en': 'check.io',
      'ar': '',
    },
    'epjpvgcg': {
      'en': 'Platform Navigation',
      'ar': '',
    },
    'qbly7pgl': {
      'en': 'Dashboard',
      'ar': '',
    },
    '50xlsig9': {
      'en': 'Chats',
      'ar': '',
    },
    'hzc67thw': {
      'en': 'Projects',
      'ar': '',
    },
    'pc15ixy5': {
      'en': 'Recent Orders',
      'ar': '',
    },
    '3pzw9bo0': {
      'en': '12',
      'ar': '',
    },
    '2iih8ghk': {
      'en': 'Settings',
      'ar': '',
    },
    '5z06q427': {
      'en': 'Billing',
      'ar': '',
    },
    'ealjn68z': {
      'en': 'Explore',
      'ar': '',
    },
    'rpgdoz6g': {
      'en': 'Light Mode',
      'ar': '',
    },
    '8zzpwm3h': {
      'en': 'Dark Mode',
      'ar': '',
    },
    'ox52a19m': {
      'en': 'Andrew D.',
      'ar': '',
    },
    '2x6y16as': {
      'en': 'admin@gmail.com',
      'ar': '',
    },
    'sgp258dj': {
      'en': 'Order Details',
      'ar': '',
    },
    'wrhyx967': {
      'en': 'Order #49224222',
      'ar': '',
    },
    '1bloz8go': {
      'en': 'Below are the details of your order.',
      'ar': '',
    },
    'h9pyd414': {
      'en': 'Payment Details',
      'ar': '',
    },
    'ri89llb7': {
      'en': 'Transaction ID',
      'ar': '',
    },
    'bap9u9or': {
      'en': 'TXN123456789',
      'ar': '',
    },
    'cfmyyjlw': {
      'en': 'Date',
      'ar': '',
    },
    'uf6pvd06': {
      'en': 'Fri, Jun 23 - 4:30pm',
      'ar': '',
    },
    '8brgx55i': {
      'en': 'Amount',
      'ar': '',
    },
    'vlxja4zu': {
      'en': '\$500.00',
      'ar': '',
    },
    '24jkd7gm': {
      'en': 'Status',
      'ar': '',
    },
    'lkcvsxqt': {
      'en': 'Completed',
      'ar': '',
    },
    'v94yle0s': {
      'en': 'Payment Method',
      'ar': '',
    },
    '81dohgbx': {
      'en': 'card',
      'ar': '',
    },
    'bhn8wcx1': {
      'en': 'Transaction Breakdown',
      'ar': '',
    },
    'jgv9pug6': {
      'en': 'Subtotal',
      'ar': '',
    },
    '4zocp89o': {
      'en': '\$480.00',
      'ar': '',
    },
    'y3azinfc': {
      'en': 'Tax',
      'ar': '',
    },
    '5gfph8xq': {
      'en': '\$20.00',
      'ar': '',
    },
    'ofy0mej1': {
      'en': 'Total',
      'ar': '',
    },
    'nbjo9yae': {
      'en': '\$500.00',
      'ar': '',
    },
    '58qoj05y': {
      'en': 'Notes',
      'ar': '',
    },
    'j75leens': {
      'en': 'Transaction for car maintanence',
      'ar': '',
    },
    'mem0a4tp': {
      'en': 'Customer Details',
      'ar': '',
    },
    '74nl58bt': {
      'en': 'Haily Brown',
      'ar': '',
    },
    '4om6r0ga': {
      'en': '@brownisthenewblack',
      'ar': '',
    },
    'l3rzpite': {
      'en': 'Address',
      'ar': '',
    },
    'f1n97e1o': {
      'en': '123 West Hollywood Blvd. San Mateo, CA. 90294',
      'ar': '',
    },
    '19b6nwzl': {
      'en': 'Cancel',
      'ar': '',
    },
    'pog52t7r': {
      'en': 'Pay',
      'ar': '',
    },
    'a578bqnm': {
      'en': 'Customer Details',
      'ar': '',
    },
    'dpac0dou': {
      'en': 'Haily Brown',
      'ar': '',
    },
    '7v9tz6jn': {
      'en': '@brownisthenewblack',
      'ar': '',
    },
    '63hrvbhh': {
      'en': 'Address',
      'ar': '',
    },
    'xdztl6yv': {
      'en': '123 West Hollywood Blvd. San Mateo, CA. 90294',
      'ar': '',
    },
    'dhutpukn': {
      'en': 'Message Customer',
      'ar': '',
    },
    '5lp0bnao': {
      'en': 'Report Now',
      'ar': '',
    },
    '7d27t6u6': {
      'en': 'Order Details',
      'ar': '',
    },
  },
  // home_advisor
  {
    'ffjt7ijx': {
      'en': '2.54% higher rate',
      'ar': '',
    },
    'lpiejmmg': {
      'en': ' from last week',
      'ar': '',
    },
    '9f0pl53w': {
      'en': 'Home',
      'ar': '',
    },
    'lnwhp0dr': {
      'en': 'Requests',
      'ar': '',
    },
    'nbn4kk23': {
      'en': 'Appointments',
      'ar': '',
    },
    '22jtr21k': {
      'en': 'Customers',
      'ar': '',
    },
    'pq4m1xhs': {
      'en': 'Emergency',
      'ar': '',
    },
    'yppyluil': {
      'en': 'Support',
      'ar': '',
    },
    'u2rua47a': {
      'en': 'Analytics',
      'ar': '',
    },
    'cx35zc7s': {
      'en': '@Service Center',
      'ar': '',
    },
    'yybd6mp7': {
      'en': 'Welcome',
      'ar': '',
    },
    'b1ur89sn': {
      'en': 'Home',
      'ar': '',
    },
  },
  // balance_advisor
  {
    'mynsx78y': {
      'en': 'Balance Overview',
      'ar': '',
    },
    'kq25qcln': {
      'en': 'Total Balance',
      'ar': '',
    },
    'q170r1pe': {
      'en': '\$5,000.00',
      'ar': '',
    },
    'duepka4q': {
      'en': 'Last Payment: June 1st, 2022',
      'ar': '',
    },
    'im8wgh6p': {
      'en': 'Transaction History',
      'ar': '',
    },
    'xytw6z5z': {
      'en': 'Transaction Date',
      'ar': '',
    },
    'anups8ok': {
      'en': 'June 1st, 2022',
      'ar': '',
    },
    'tn0tooke': {
      'en': '\$150.00',
      'ar': '',
    },
    'sms4eyxv': {
      'en': 'See more',
      'ar': '',
    },
    'a2zk3v5a': {
      'en': 'Service Advisor',
      'ar': '',
    },
  },
  // analysis_advisor
  {
    'uw4ask0p': {
      'en': 'Below is a summary of your day.',
      'ar': '',
    },
    'ndejh69q': {
      'en': '16',
      'ar': '',
    },
    'ozliy6od': {
      'en': 'New Customer',
      'ar': '',
    },
    'rft9v2aq': {
      'en': '16',
      'ar': '',
    },
    'g6x2a2qj': {
      'en': 'Current Tasks',
      'ar': '',
    },
    'uwja8dqp': {
      'en': '16',
      'ar': '',
    },
    'ekcimata': {
      'en': 'Completed Tasks',
      'ar': '',
    },
    '0i3zcm5h': {
      'en': 'Current Tasks',
      'ar': '',
    },
    'u2di9yof': {
      'en': 'An overview of your tasks.',
      'ar': '',
    },
    '8o43sgy2': {
      'en': '15/26',
      'ar': '',
    },
    'dceinp3d': {
      'en': 'task progress',
      'ar': '',
    },
    'v2f2n6xr': {
      'en': '12',
      'ar': '',
    },
    '5pv6ahjp': {
      'en': 'Tasks to be completed',
      'ar': '',
    },
    'h6xn3iuu': {
      'en': 'Current Tasks',
      'ar': '',
    },
    'gqkd0u40': {
      'en': 'A summary of your tasks',
      'ar': '',
    },
    '6wh1j5i2': {
      'en': 'Task Type',
      'ar': '',
    },
    'e65abx9a': {
      'en':
          'Task Description here this one is really long and it goes over maybe? And goes to two lines.',
      'ar': '',
    },
    'b0npvl8h': {
      'en': 'Due:',
      'ar': '',
    },
    'mixr18bh': {
      'en': 'Today, 6:20pm',
      'ar': '',
    },
    '2g6t3eqc': {
      'en': 'Update',
      'ar': '',
    },
    'jploxa7n': {
      'en': '1',
      'ar': '',
    },
    '5fj718my': {
      'en': 'Task Type',
      'ar': '',
    },
    'wqbz29u9': {
      'en': 'Task description here.',
      'ar': '',
    },
    '0njzzc1y': {
      'en': 'Due:',
      'ar': '',
    },
    '2o7iled0': {
      'en': 'Today, 6:20pm',
      'ar': '',
    },
    'msc7w1xy': {
      'en': 'Update',
      'ar': '',
    },
    'n60oz797': {
      'en': '1',
      'ar': '',
    },
    'ian3gh4o': {
      'en': 'Recent Activity',
      'ar': '',
    },
    'fgn6kljc': {
      'en': 'Below is an overview of tasks & activity completed.',
      'ar': '',
    },
    'm3h155fb': {
      'en': 'Tasks',
      'ar': '',
    },
    'm8un8c61': {
      'en': 'Completed',
      'ar': '',
    },
    '68tsmsq4': {
      'en': 'Launches',
      'ar': '',
    },
    'suy6f905': {
      'en': 'Last 30 Days',
      'ar': '',
    },
    'j3fiic6b': {
      'en': 'Avg. Grade',
      'ar': '',
    },
    'w43fuevv': {
      'en': 'Analysis',
      'ar': '',
    },
    'czej5qbq': {
      'en': 'Home',
      'ar': '',
    },
  },
  // ContactUs_advisor
  {
    'ijl3vzqc': {
      'en': 'Contact us ',
      'ar': '',
    },
    'ha03zk06': {
      'en': 'Please fill the blank',
      'ar': '',
    },
    'lbrmr0j4': {
      'en': 'Your Name',
      'ar': '',
    },
    'emdjvszs': {
      'en': 'Email',
      'ar': '',
    },
    'trfjukxl': {
      'en': 'Email',
      'ar': '',
    },
    'hmjj32j0': {
      'en': 'Phone number',
      'ar': '',
    },
    'fcy42qev': {
      'en': 'Center Address',
      'ar': '',
    },
    't4acugjl': {
      'en': 'Send',
      'ar': '',
    },
    'k495txw3': {
      'en': 'Home',
      'ar': '',
    },
  },
  // requests_advisor
  {
    'k01sxd04': {
      'en': 'View Customer Requests',
      'ar': '',
    },
    'z0fvj6vm': {
      'en': 'Accept',
      'ar': '',
    },
    '2ucx36ip': {
      'en': 'Reject',
      'ar': '',
    },
    '25yg1cq5': {
      'en': 'Home',
      'ar': '',
    },
  },
  // reviews_advisor
  {
    'n8kzc8qu': {
      'en': 'View Customer Reviews',
      'ar': '',
    },
    'hb9sum3t': {
      'en': '2,503',
      'ar': '',
    },
    '1xe9ywzt': {
      'en': '# of Ratings',
      'ar': '',
    },
    '2afc1k0c': {
      'en': '4.8',
      'ar': '',
    },
    'basz2ig3': {
      'en': 'Avg. Rating',
      'ar': '',
    },
    'sax9i38m': {
      'en': 'Karim Mahmoud',
      'ar': '',
    },
    'lj2gdf9i': {
      'en': 'Great place and good service',
      'ar': '',
    },
    '4z9wz88s': {
      'en': 'Home',
      'ar': '',
    },
  },
  // review_cust
  {
    'k6f03ir6': {
      'en': 'View Customer Reviews',
      'ar': '',
    },
    'yi8z8xcp': {
      'en': '2,503',
      'ar': '',
    },
    'rj6z996c': {
      'en': '# of Ratings',
      'ar': '',
    },
    'kfzdclb6': {
      'en': '4.8',
      'ar': '',
    },
    '5jizavfc': {
      'en': 'Avg. Rating',
      'ar': '',
    },
    '6btcjjhq': {
      'en': '',
      'ar': '',
    },
    'p7dhiin5': {
      'en': 'Home',
      'ar': '',
    },
  },
  // add_center
  {
    'ohq2puq1': {
      'en': 'Personal Information',
      'ar': '',
    },
    'p3y1c4km': {
      'en': 'Upload',
      'ar': '',
    },
    'nthbjf1g': {
      'en': 'Center Name',
      'ar': '',
    },
    'wgcyrhyz': {
      'en': 'Please select...',
      'ar': '',
    },
    '7d7baluj': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'gq7s2n2p': {
      'en': 'Center Address',
      'ar': '',
    },
    'weqavwpx': {
      'en': 'Support Emergency',
      'ar': '',
    },
    'f88zvci7': {
      'en': 'Location',
      'ar': '',
    },
    'pxn0n6ho': {
      'en': 'Center desription',
      'ar': '',
    },
    'xs9er53q': {
      'en': '',
      'ar': '',
    },
    '244hgt9k': {
      'en': '',
      'ar': '',
    },
    'mqragyzw': {
      'en': 'Create Center',
      'ar': '',
    },
    'a7tc3tmd': {
      'en': 'Please enter the patients full name.',
      'ar': '',
    },
    'mqqe2hc2': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '3h7lo9t6': {
      'en': 'Please enter an age for the patient.',
      'ar': '',
    },
    '6nu2tv6z': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'yxp6owbw': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'c11p7aed': {
      'en': 'Please enter the date of birth of the patient.',
      'ar': '',
    },
    'ro47qgds': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '5jhldwx8': {
      'en': 'Field is required',
      'ar': '',
    },
    'ujno1jhm': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'ypnexyyv': {
      'en': 'Add Center',
      'ar': '',
    },
    '572pwvno': {
      'en': 'Please fill in the information below.',
      'ar': '',
    },
    '5y1g9caw': {
      'en': 'Home',
      'ar': '',
    },
  },
  // pendingRequest_cust
  {
    '8t71ral5': {
      'en': 'Hello World ',
      'ar': '',
    },
    's0zyrnw5': {
      'en': 'Hello World ',
      'ar': '',
    },
    '80lqs13d': {
      'en': 'Edit',
      'ar': '',
    },
    'mnmqz8dp': {
      'en': 'Cancel',
      'ar': '',
    },
    'irjcpgqc': {
      'en': 'Pending Requests',
      'ar': '',
    },
    'cfric5h5': {
      'en': 'Home',
      'ar': '',
    },
  },
  // edit_booking_cust
  {
    't1wqsd0b': {
      'en': 'Personal Information',
      'ar': '',
    },
    '0774s5bm': {
      'en': 'Name',
      'ar': '',
    },
    'gelzvaq6': {
      'en': 'Car',
      'ar': '',
    },
    '3iljmlgt': {
      'en': 'Model',
      'ar': '',
    },
    '44akqysk': {
      'en': 'Appointment Information',
      'ar': '',
    },
    '9eddqz7p': {
      'en': 'Please enter yout car issue',
      'ar': '',
    },
    'kekf9kgo': {
      'en': '...',
      'ar': '',
    },
    'rvq9tt64': {
      'en': 'Choose date and time',
      'ar': '',
    },
    'm5frq1s1': {
      'en': 'Request Appointment',
      'ar': '',
    },
    's8su54at': {
      'en': 'Please enter the patients full name.',
      'ar': '',
    },
    'mc0arhph': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'eqar0bsl': {
      'en': 'Please enter an age for the patient.',
      'ar': '',
    },
    'ezg25j14': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'y81p54aj': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'ok1cfamb': {
      'en': 'Please enter the date of birth of the patient.',
      'ar': '',
    },
    '1rgau0bc': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'yiez7nq2': {
      'en': 'Field is required',
      'ar': '',
    },
    '76j3w59q': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'qhedu4g5': {
      'en': 'Edit Your Appointment',
      'ar': '',
    },
    'ayd9b2ep': {
      'en': 'Please fill in the information below to continue.',
      'ar': '',
    },
    '5h13t5f5': {
      'en': 'Home',
      'ar': '',
    },
  },
  // appoinments_advisor
  {
    'z56dzznl': {
      'en': 'View Appointments',
      'ar': '',
    },
    'spo702n7': {
      'en': 'Hello World ',
      'ar': '',
    },
    '0g9sjdhz': {
      'en': 'Hello World ',
      'ar': '',
    },
    '2sanghgy': {
      'en': ': ',
      'ar': '',
    },
    'b73iyenv': {
      'en': 'the car issue that the customer typed',
      'ar': '',
    },
    'feqdki34': {
      'en': 'In progress',
      'ar': '',
    },
    'lw6supks': {
      'en': 'Home',
      'ar': '',
    },
  },
  // appointment_cust
  {
    'px5ty0eg': {
      'en': 'View Appointments',
      'ar': '',
    },
    'gdciuo2e': {
      'en': 'Date',
      'ar': '',
    },
    't0h13lhy': {
      'en': ': ',
      'ar': '',
    },
    'riiif2a7': {
      'en': 'the car issue that the customer typed',
      'ar': '',
    },
    'bulq7rib': {
      'en': 'In progress',
      'ar': '',
    },
    'h23yfi7p': {
      'en': 'Home',
      'ar': '',
    },
  },
  // chat_ai_Screen_1
  {
    'gfcxurlj': {
      'en': 'Ai Chat',
      'ar': '',
    },
    'lt9drpyw': {
      'en': 'Home',
      'ar': '',
    },
  },
  // ViewCenters_Cust
  {
    '08geil8v': {
      'en': 'Center Details',
      'ar': '',
    },
    'vxnbr7ks': {
      'en': '10:00am',
      'ar': '',
    },
    'ixp3ezbn': {
      'en': 'Request an appointment',
      'ar': '',
    },
  },
  // profile_cust
  {
    's1hde3qj': {
      'en': 'Andrea Davis',
      'ar': '',
    },
    'qangizzp': {
      'en': 'Andrea Davis',
      'ar': '',
    },
    'ghpebd52': {
      'en': 'Account Settings',
      'ar': '',
    },
    'jyqtxmgk': {
      'en': 'Log Out',
      'ar': '',
    },
    '2znqu6ev': {
      'en': 'Light Mode',
      'ar': '',
    },
    'b6pw8enb': {
      'en': 'Dark Mode',
      'ar': '',
    },
    'vb5erb79': {
      'en': 'Profile',
      'ar': '',
    },
  },
  // home_cust
  {
    'riwj1cq0': {
      'en': 'Search for your getaway...',
      'ar': '',
    },
    '5nf7ccd7': {
      'en': 'Requests',
      'ar': '',
    },
    'jy1y8p4y': {
      'en': 'Emergency',
      'ar': '',
    },
    'm79k5r1l': {
      'en': 'My Offers',
      'ar': '',
    },
    '6vt53bq0': {
      'en': 'on-site',
      'ar': '',
    },
    'ewm9d9v0': {
      'en': 'Nearest',
      'ar': '',
    },
    '48zcuudi': {
      'en': 'Top Rated',
      'ar': '',
    },
    '8l4u4oyg': {
      'en': 'Top rated Centers',
      'ar': '',
    },
    'kyzxmawo': {
      'en': 'All Available centers',
      'ar': '',
    },
    'huum8gkd': {
      'en': 'Home',
      'ar': '',
    },
  },
  // profile_advisor
  {
    'krtsnvsp': {
      'en': 'Andrea Davis',
      'ar': '',
    },
    'fns2b4gy': {
      'en': 'andrea@domainname.com',
      'ar': '',
    },
    'ux5ignzu': {
      'en': 'Active',
      'ar': '',
    },
    '7p964gwb': {
      'en': 'Edit Profile',
      'ar': '',
    },
    '5uimqyex': {
      'en': 'Account Settings',
      'ar': '',
    },
    'j2ohxv0z': {
      'en': 'Log Out',
      'ar': '',
    },
    'm6dse4fp': {
      'en': 'Light Mode',
      'ar': '',
    },
    '05lw63gj': {
      'en': 'Dark Mode',
      'ar': '',
    },
    '2dabitzc': {
      'en': '__',
      'ar': '',
    },
  },
  // create_profile_cust
  {
    '0rfms1fk': {
      'en': 'Upload',
      'ar': '',
    },
    '9ci9rlkm': {
      'en': 'Name',
      'ar': '',
    },
    '9jx24two': {
      'en': 'Age',
      'ar': '',
    },
    'o8ysfdto': {
      'en': 'Phone number',
      'ar': '',
    },
    'avryu4eg': {
      'en': '',
      'ar': '',
    },
    'i3dzo37e': {
      'en': '',
      'ar': '',
    },
    'ahtz7vcr': {
      'en': 'Choose brand..',
      'ar': '',
    },
    'jwdcem9h': {
      'en': 'Search for a brand...',
      'ar': '',
    },
    '2a0f7qsv': {
      'en': 'Submit',
      'ar': '',
    },
    'j273db40': {
      'en': 'Fill',
      'ar': '',
    },
    'zhjwzmsn': {
      'en': 'Please fill out the form below to continue.',
      'ar': '',
    },
    '5d0u0utj': {
      'en': 'Home',
      'ar': '',
    },
  },
  // admincreateAccountcenter
  {
    'agjyy51v': {
      'en': 'Let\'s get started by filling out the form below.',
      'ar': '',
    },
    '59seyhjx': {
      'en': 'Email',
      'ar': '',
    },
    'o1774z41': {
      'en': 'Password',
      'ar': '',
    },
    'n1lqz0yv': {
      'en': 'Create center email',
      'ar': '',
    },
    '9az339ii': {
      'en': 'Customer login',
      'ar': '',
    },
    'oksyxrn7': {
      'en': 'Center login',
      'ar': '',
    },
    'pkt3gbal': {
      'en': 'Home',
      'ar': '',
    },
  },
  // edit_profile_cust
  {
    'i00jcago': {
      'en': 'Upload',
      'ar': '',
    },
    'b0b83xb7': {
      'en': 'Name',
      'ar': '',
    },
    'x4ve8q43': {
      'en': 'Age',
      'ar': '',
    },
    'xcef1crj': {
      'en': 'Phone number',
      'ar': '',
    },
    'crhmc5zk': {
      'en': 'Option 1',
      'ar': '',
    },
    'sfqxa3z6': {
      'en': 'Choose brand..',
      'ar': '',
    },
    'zi9tle1j': {
      'en': 'Search for a brand...',
      'ar': '',
    },
    '6vvjbbmc': {
      'en': 'Submit',
      'ar': '',
    },
    'vkkkcuzm': {
      'en': 'Fill',
      'ar': '',
    },
    'g0sxb7if': {
      'en': 'Please fill out the form below to continue.',
      'ar': '',
    },
    'z5d7dymz': {
      'en': 'Home',
      'ar': '',
    },
  },
  // auth_3_phone
  {
    'tgz46au9': {
      'en': 'Login with Phone',
      'ar': '',
    },
    '0oeo3njh': {
      'en': 'Input your number below in order to login.',
      'ar': '',
    },
    'qwtsk0wb': {
      'en': 'Your phone number...',
      'ar': '',
    },
    'q1r4uw6o': {
      'en': 'Continue',
      'ar': '',
    },
    'zmpwyzs2': {
      'en': 'Home',
      'ar': '',
    },
  },
  // auth_3_verifyPhone
  {
    'wawzv1ij': {
      'en': 'flow.io',
      'ar': '',
    },
    '1zosis7q': {
      'en': 'Verification Code',
      'ar': '',
    },
    '4ou7gmyi': {
      'en': 'Enter the 6 digit code that you received at: ',
      'ar': '',
    },
    'vb9d25fc': {
      'en': ' change number?',
      'ar': '',
    },
    'yy4aaxk5': {
      'en': 'Verify Code',
      'ar': '',
    },
    'g9sxv5ie': {
      'en': 'Home',
      'ar': '',
    },
  },
  // auth_3_ForgotPassword
  {
    '9ngulzkx': {
      'en': 'flow.io',
      'ar': '',
    },
    'w9erak60': {
      'en': 'Forgot Password',
      'ar': '',
    },
    'b6cphfav': {
      'en': 'Enter your email below in order be sent a reset password link.',
      'ar': '',
    },
    '0nxxvvh5': {
      'en': 'Your email address...',
      'ar': '',
    },
    'mvvjj59n': {
      'en': 'Send Reset Link',
      'ar': '',
    },
    'ydxqvq7k': {
      'en': 'Home',
      'ar': '',
    },
  },
  // map
  {
    '806p1g4p': {
      'en': 'Home',
      'ar': '',
    },
  },
  // login_cust
  {
    'jswlp3d2': {
      'en': 'Create Account',
      'ar': '',
    },
    'wgzmii94': {
      'en': 'Create Account',
      'ar': '',
    },
    'b9j0gnnj': {
      'en': 'Let\'s get started by filling out the form below.',
      'ar': '',
    },
    'n1hpp2x6': {
      'en': 'Email',
      'ar': '',
    },
    'eyfglsgn': {
      'en': 'Password',
      'ar': '',
    },
    '182mqg80': {
      'en': 'Password',
      'ar': '',
    },
    'gbib9qgb': {
      'en': 'Get Started',
      'ar': '',
    },
    '801h5jfr': {
      'en': 'Or sign up with',
      'ar': '',
    },
    '5fgk7w5a': {
      'en': 'Continue with Google',
      'ar': '',
    },
    'wuovdfj2': {
      'en': 'Continue with Phone',
      'ar': '',
    },
    '5yrxx867': {
      'en': 'Log In',
      'ar': '',
    },
    '3n2qb4vl': {
      'en': 'Welcome Back',
      'ar': '',
    },
    'jpim2ofl': {
      'en': 'Fill out the information below in order to access your account.',
      'ar': '',
    },
    'jskx017y': {
      'en': 'Email',
      'ar': '',
    },
    'n7sgzuex': {
      'en': 'Password',
      'ar': '',
    },
    'tgd429qm': {
      'en': 'Sign In',
      'ar': '',
    },
    'medoihnu': {
      'en': 'Or sign in with',
      'ar': '',
    },
    'qt55yyy6': {
      'en': 'Continue with Google',
      'ar': '',
    },
    'yluf3ply': {
      'en': 'Continue with Phone',
      'ar': '',
    },
    'ootckgvc': {
      'en': 'Forgot Password?',
      'ar': '',
    },
    '13tj2u2d': {
      'en': 'Home',
      'ar': '',
    },
  },
  // login_center
  {
    'hw0r2n1o': {
      'en': 'Welcome Back',
      'ar': '',
    },
    'a6yltimz': {
      'en': 'Fill out the information below in order to access your account.',
      'ar': '',
    },
    'je3w4b2x': {
      'en': 'Email',
      'ar': '',
    },
    'kohykza7': {
      'en': 'Password',
      'ar': '',
    },
    'zco0rn7g': {
      'en': 'Sign In',
      'ar': '',
    },
    '0m0xty5i': {
      'en': 'Forgot Password?',
      'ar': '',
    },
    'eningwjw': {
      'en': 'Or sign in with',
      'ar': '',
    },
    'vawcnfgp': {
      'en': 'Continue with Google',
      'ar': '',
    },
    'nus752ji': {
      'en': 'Be a partner',
      'ar': '',
    },
    '3hwvgcon': {
      'en': 'Home',
      'ar': '',
    },
  },
  // DashboardTaskList
  {
    'rw87stnq': {
      'en': 'Active Tasks',
      'ar': '',
    },
    'fb1r28br': {
      'en': 'A summary of outstanding tasks.',
      'ar': '',
    },
    '8kbet9wd': {
      'en': 'Task Type',
      'ar': '',
    },
    'resl78df': {
      'en':
          'Task Description here this one is really long and it goes over maybe? And goes to two lines.',
      'ar': '',
    },
    'ezkt3uqc': {
      'en': 'Due',
      'ar': '',
    },
    '2y74b7pw': {
      'en': 'Today, 5:30pm',
      'ar': '',
    },
    'w69a0z86': {
      'en': 'Task Type',
      'ar': '',
    },
    'f7c02g9b': {
      'en':
          'Task Description here this one is really long and it goes over maybe? And goes to two lines.',
      'ar': '',
    },
    'xjuzp7vv': {
      'en': 'Due',
      'ar': '',
    },
    'xb3z13yl': {
      'en': 'Today, 5:30pm',
      'ar': '',
    },
  },
  // Reply
  {
    'yo0ylopc': {
      'en': 'Label here...',
      'ar': '',
    },
  },
  // offer1
  {
    'nina5bpp': {
      'en': 'Mobil\'s Offer!',
      'ar': '',
    },
    'vwk03qdl': {
      'en': '#MOB1911',
      'ar': '',
    },
    '2330hpdk': {
      'en': 'Use the cupon get 25% discount',
      'ar': '',
    },
    'bd0ocht4': {
      'en': 'Got it',
      'ar': '',
    },
  },
  // offer2
  {
    '4k3q1mjv': {
      'en': 'Emarat Misr Offer!',
      'ar': '',
    },
    '1p0ppuur': {
      'en': '#EM2007',
      'ar': '',
    },
    '8t0b04z1': {
      'en': 'Use the cupon get 15% discount',
      'ar': '',
    },
    'caw3hois': {
      'en': 'Got it',
      'ar': '',
    },
  },
  // emptyList_1
  {
    '3o868stz': {
      'en': 'YallaFix AI Chat.',
      'ar': '',
    },
    'nprz3bfz': {
      'en':
          'IMPORTANT!!!\nAll the answers are based on OpenAI ChatGPT. We are not responsible if it was misleading.',
      'ar': '',
    },
  },
  // aiChat_Component_1
  {
    'v5oq8nqr': {
      'en': 'Copy response',
      'ar': '',
    },
    '6jp0pk7d': {
      'en': 'Type something...',
      'ar': '',
    },
  },
  // Card24CarDetails
  {
    'olwdqzi4': {
      'en': 'Oil Change',
      'ar': '',
    },
    'l7uzvha2': {
      'en': 'Tesla Model Y',
      'ar': '',
    },
    'j1vz1wd5': {
      'en': '#495242',
      'ar': '',
    },
    '005dvdp9': {
      'en': 'In Preparation',
      'ar': '',
    },
    '0pbvnf9j': {
      'en': '4:30pm',
      'ar': '',
    },
  },
  // sidebar
  {
    'upzbj6r0': {
      'en': 'check.io',
      'ar': '',
    },
    'x9cyg46o': {
      'en': 'Andrew D.',
      'ar': '',
    },
    '9b2th5hq': {
      'en': 'admin@gmail.com',
      'ar': '',
    },
    'xnswxliy': {
      'en': 'Platform Navigation',
      'ar': '',
    },
    'dgdby3tu': {
      'en': 'Dashboard',
      'ar': '',
    },
    '20iku16x': {
      'en': 'Chats',
      'ar': '',
    },
    '6axnocfb': {
      'en': 'Projects',
      'ar': '',
    },
    '331bk4yv': {
      'en': 'Settings',
      'ar': '',
    },
    'xlksalgs': {
      'en': 'Notifications',
      'ar': '',
    },
    '9rqo1wyd': {
      'en': '12',
      'ar': '',
    },
    '4c8etp34': {
      'en': 'Billing',
      'ar': '',
    },
    'srev6z55': {
      'en': 'Explore',
      'ar': '',
    },
    'k1v6erq8': {
      'en': 'Light Mode',
      'ar': '',
    },
    'x02frloj': {
      'en': 'Dark Mode',
      'ar': '',
    },
  },
  // Miscellaneous
  {
    'rl282i76': {
      'en': '',
      'ar': '',
    },
    'i4bcjls3': {
      'en': '',
      'ar': '',
    },
    'bvju95oc': {
      'en': '',
      'ar': '',
    },
    '75awh2kw': {
      'en': '',
      'ar': '',
    },
    'zqlhl0rk': {
      'en': '',
      'ar': '',
    },
    'ymbppf3u': {
      'en': '',
      'ar': '',
    },
    'oswoq7cx': {
      'en': '',
      'ar': '',
    },
    '4w1tyrcq': {
      'en': '',
      'ar': '',
    },
    '96st2kbn': {
      'en': '',
      'ar': '',
    },
    'usniph3l': {
      'en': '',
      'ar': '',
    },
    'z1waqd6q': {
      'en': '',
      'ar': '',
    },
    'stew60zv': {
      'en': '',
      'ar': '',
    },
    '5ygupiyk': {
      'en': '',
      'ar': '',
    },
    '5w0pbji5': {
      'en': '',
      'ar': '',
    },
    '83lzojt9': {
      'en': '',
      'ar': '',
    },
    '1nygox0e': {
      'en': '',
      'ar': '',
    },
    'dbz72yok': {
      'en': '',
      'ar': '',
    },
    'pixgp3uh': {
      'en': '',
      'ar': '',
    },
    'athp8sdl': {
      'en': '',
      'ar': '',
    },
    'yrw2f6pf': {
      'en': '',
      'ar': '',
    },
    '7akhh2xi': {
      'en': '',
      'ar': '',
    },
    's39dffr9': {
      'en': '',
      'ar': '',
    },
    'xnzu8ic4': {
      'en': '',
      'ar': '',
    },
    'nkyjcigh': {
      'en': '',
      'ar': '',
    },
    'bj31paa6': {
      'en': '',
      'ar': '',
    },
    'wmkh0b2v': {
      'en': '',
      'ar': '',
    },
    '1kuptb4c': {
      'en': '',
      'ar': '',
    },
    'kzvssomq': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
