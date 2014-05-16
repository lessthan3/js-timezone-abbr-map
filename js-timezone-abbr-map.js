// Generated by CoffeeScript 1.7.1
(function() {
  var dst, index, k, offset, v, value;

  window.TIMEZONE_ABBR_MAP_VERSION = '1.0';

  window.TIMEZONE_ABBR_MAP_FULL = {
    '0': ['GMT', 'GMT'],
    '-60': ['CET', 'BST/WEDT'],
    '-120': ['EET', 'CEDT'],
    '-180': ['FET', 'EEDT'],
    '-240': ['GST/MSK', 'GST/MSK'],
    '-270': ['AFT', 'IRDT'],
    '-300': ['PKT', 'AMST'],
    '-330': ['IST/SLST', 'IST/SLST'],
    '-345': ['NPT', 'NPT'],
    '-360': ['BIOT/BST', 'BIOT/BST'],
    '-390': ['CCT/MST', 'CCT/MST'],
    '-420': ['CXT/THA', 'CXT/THA'],
    '-480': ['AWST/CST/HKT', 'CST/HKT/WST'],
    '-540': ['EIT/JST/KST', 'AWDT'],
    '-570': ['ACST', ''],
    '-600': ['AEST', ''],
    '-630': ['LHST', 'ACDT'],
    '-660': ['NCT/PONT', 'AEDT'],
    '-690': ['NFT', 'NFT'],
    '-720': ['FJT/NZST', 'FJT'],
    '-765': ['CHAST', ''],
    '-780': ['PHOT/TOT', 'PHOT/TOT'],
    '-825': ['', 'CHADT'],
    '-840': ['LINT', 'LINT'],
    '60': ['AZOST/EGT', 'EGT'],
    '120': ['FNT', 'UYST'],
    '150': ['', 'NDT'],
    '180': ['ART/BRT/UYT', 'ADT/AMST/CLST'],
    '210': ['NST', ''],
    '240': ['AST', 'EDT'],
    '300': ['EST', 'CDT'],
    '360': ['CST', 'MDT'],
    '420': ['MST', 'PDT'],
    '480': ['PST', 'AKDT'],
    '540': ['AKST', 'HADT'],
    '600': ['HAST', ''],
    '660': ['NUT', 'NUT'],
    '700': ['BIT', 'BIT']
  };

  dst = (function() {
    var current_offset, date, jan, jul, standard_offset;
    date = new Date();
    jan = new Date(date.getFullYear(), 0, 1);
    jul = new Date(date.getFullYear(), 6, 1);
    current_offset = date.getTimezoneOffset();
    standard_offset = Math.max(jan.getTimezoneOffset(), jul.getTimezoneOffset());
    return current_offset < standard_offset;
  })();

  offset = function(seconds) {
    var h, m, pos, s;
    seconds = Number(seconds);
    pos = seconds > 0;
    s = Math.abs(seconds);
    h = Math.floor(s / 60);
    m = Math.floor(s % 60);
    return "" + (pos > 0 ? '+' : '-') + h + ":" + (m < 10 ? '0' : '') + m;
  };

  window.TIMEZONE_ABBR_MAP = {};

  window.TIMEZONE_ABBR_MAP_KEYS = [];

  for (k in TIMEZONE_ABBR_MAP_FULL) {
    v = TIMEZONE_ABBR_MAP_FULL[k];
    index = dst ? 1 : 0;
    value = "" + TIMEZONE_ABBR_MAP_FULL[k][index];
    if (value) {
      TIMEZONE_ABBR_MAP[k] = "" + value + " " + (offset(k));
      TIMEZONE_ABBR_MAP_KEYS.push(Number(k));
    }
  }

}).call(this);