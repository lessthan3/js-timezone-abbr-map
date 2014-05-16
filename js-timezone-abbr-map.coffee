window.TIMEZONE_ABBR_MAP_VERSION = '1.0'

# Offset -> [Standard Time, Daylight Savings or Summer Time]
window.TIMEZONE_ABBR_MAP_FULL =
  '0': [
    'GMT' # Greenwich Mean Time
    'GMT' # Greenwich Mean Time
  ]
  '-60': [
    'CET' # Central European Time
    'BST/WEDT' # British Summer Time / Western European Daylight Time
  ]
  '-120': [
    'EET' # Eastern European Time
    'CEDT' # Central European Daylight Time
  ]
  '-180': [
    'FET' # Further-eastern European Time
    'EEDT' # Eastern European Daylight Time
  ]
  '-240': [
    'GST/MSK' # Gulf Standard Time / Moscow Time
    'GST/MSK' # Gulf Standard Time / Moscow Time
  ]
  '-270': [
    'AFT' # Afghanistan Time
    'IRDT' # Iran Daylight Time
  ]
  '-300': [
    'PKT' # Pakistan Standard Time
    'AMST' # Armenia Summer Time
  ]
  '-330': [
    'IST/SLST' # Indian Standard Time / Sri Lanka Time
    'IST/SLST' # Indian Standard Time / Sri Lanka Time
  ]
  '-345': [
    'NPT' # Nepal Time
    'NPT' # Nepal Time
  ]
  '-360': [
    'BIOT/BST' # British Indian Ocean Time / Bangladesh Standard Time
    'BIOT/BST' # British Indian Ocean Time / Bangladesh Standard Time
  ]
  '-390': [
    'CCT/MST' # Cocos Islands Time / Myanmar Standard Time
    'CCT/MST' # Cocos Islands Time / Myanmar Standard Time
  ]
  '-420': [
    'CXT/THA' # Christmas Island Time / Thailand Standard Time
    'CXT/THA' # Christmas Island Time / Thailand Standard Time
  ]
  '-480': [
    'AWST/CST/HKT' # Australian Western Standard / China Standard / Hong Kong
    'CST/HKT/WST' # China Standard Time / Hong Kong Time / Western Standard
  ]
  '-540': [
    'EIT/JST/KST' # Eastern Indonesian / Japan Standard / Korea Standard
    'AWDT' # Australian Western Daylight Time
  ]
  '-570': [
    'ACST' # Australian Central Standard Time
    ''
  ]
  '-600': [
    'AEST' # Australian Eastern Standard Time
    ''
  ]
  '-630': [
    'LHST' # Lord Howe Standard Time
    'ACDT' # Australian Central Daylight Time
  ]
  '-660': [
    'NCT/PONT' # New Caledonia Time / Pohnpei Standard Time
    'AEDT' # Australian Eastern Daylight Time
  ]
  '-690': [
    'NFT' # Norfolk Time
    'NFT' # Norfolk Time
  ]
  '-720': [
    'FJT/NZST' # Fiji Time / New Zealand Standard Time
    'FJT' # Fiji Time
  ]
  '-765': [
    'CHAST' # Chatham Standard Time
    ''
  ]
  '-780': [
    'PHOT/TOT' # Phoenix Island Time / Tonga Time
    'PHOT/TOT' # Phoenix Island Time / Tonga Time
  ]
  '-825': [
    ''
    'CHADT' # Chatham Daylight Time
  ]
  '-840': [
    'LINT' # Line Islands Time
    'LINT' # Line Islands Time
  ]
  '60': [
    'AZOST/EGT' # Azores Standard Time / Eastern Greenland Time
    'EGT' # Eastern Greenland Time
  ]
  '120': [
    'FNT' # Fernando de Noronha Time
    'UYST' # Uruguay Summer Time
  ]
  '150': [
    ''
    'NDT' # Newfoundland Daylight Time
  ]
  '180': [
    'ART/BRT/UYT' # Argentina Time / Brasilia Time / Uruguay Standard Time
    'ADT/AMST/CLST' # Atlantic Daylight / Amazon Summer / Chile Summer
  ]
  '210': [
    'NST' # Newfoundland Standard Time
    ''
  ]
  '240': [
    'AST' # Atlantic Standard Time
    'EDT' # Eastern Daylight Time (North America)
  ]
  '300': [
    'EST' # Eastern Standard Time (North America)
    'CDT' # Central Standard Time (North America)
  ]
  '360': [
    'CST' # Central Standard Time (North America)
    'MDT' # Mountain Daylight Time (North America)
  ]
  '420': [
    'MST' # Mountain Standard Time (North America)
    'PDT' # Pacific Daylight Time (North America)
  ]
  '480': [
    'PST' # Pacific Standard Time (North America)
    'AKDT' # Alaska Daylight Time
  ]
  '540': [
    'AKST' # Alaska Standard Time
    'HADT' # Hawaii-Aleutian Daylight Time
  ]
  '600': [
    'HAST' # Hawaii-Aleutian Standard Time
    ''
  ]
  '660': [
    'NUT' # Niue Time
    'NUT' # Niue Time
  ]
  '700': [
    'BIT' # Baker Island Time
    'BIT' # Baker Island Time
  ]

# Map based on whether it is current daylight savings time
dst = ( ->
  date = new Date()
  jan = new Date date.getFullYear(), 0, 1
  jul = new Date date.getFullYear(), 6, 1
  current_offset = date.getTimezoneOffset()
  standard_offset = Math.max jan.getTimezoneOffset(), jul.getTimezoneOffset()
  current_offset < standard_offset
)()

offset = (seconds) ->
  seconds = Number seconds
  pos = seconds > 0
  s = Math.abs seconds
  h = Math.floor s / 60
  m = Math.floor s % 60
  "#{if pos > 0 then '+' else '-'}#{h}:#{if m < 10 then '0' else ''}#{m}"

window.TIMEZONE_ABBR_MAP = {}
window.TIMEZONE_ABBR_MAP_KEYS = []
for k, v of TIMEZONE_ABBR_MAP_FULL
  index = if dst then 1 else 0
  value = "#{TIMEZONE_ABBR_MAP_FULL[k][index]}"
  if value
    TIMEZONE_ABBR_MAP[k] = "#{value} #{offset k}"
    TIMEZONE_ABBR_MAP_KEYS.push Number k
  
