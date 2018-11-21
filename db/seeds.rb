# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rubygems'
require 'httparty'
city_data = {"citiesCode": [
  {
    "id": "city:1",
    "name": "London",
    "country_id": "country:1"
  },
  {
    "id": "city:87673",
    "name": "Westminster",
    "country_id": "country:1"
  },
  {
    "id": "city:14",
    "name": "Paris",
    "country_id": "country:14"
  },
  {
    "id": "city:20",
    "name": "Rome",
    "country_id": "country:20"
  },
  {
    "id": "city:186",
    "name": "New York",
    "country_id": "country:43"
  },
  {
    "id": "city:21603",
    "name": "City of London",
    "country_id": "country:1"
  },
  {
    "id": "city:39",
    "name": "Barcelona",
    "country_id": "country:13"
  },
  {
    "id": "city:5",
    "name": "Prague",
    "country_id": "country:5"
  },
  {
    "id": "city:16",
    "name": "Amsterdam",
    "country_id": "country:16"
  },
  {
    "id": "city:44",
    "name": "Venice",
    "country_id": "country:20"
  },
  {
    "id": "city:18",
    "name": "Berlin",
    "country_id": "country:18"
  },
  {
    "id": "city:10713",
    "name": "Jersey City",
    "country_id": "country:43"
  },
  {
    "id": "city:1073546",
    "name": "Shibuya",
    "country_id": "country:75"
  },
  {
    "id": "city:377",
    "name": "San Francisco",
    "country_id": "country:43"
  },
  {
    "id": "city:366",
    "name": "Washington D.C.",
    "country_id": "country:43"
  },
  {
    "id": "city:361",
    "name": "Los Angeles",
    "country_id": "country:43"
  },
  {
    "id": "city:199",
    "name": "Florence",
    "country_id": "country:20"
  },
  {
    "id": "city:315",
    "name": "Bangkok",
    "country_id": "country:47"
  },
  {
    "id": "city:864790",
    "name": "Minato",
    "country_id": "country:75"
  },
  {
    "id": "city:2585",
    "name": "Tokyo",
    "country_id": "country:75"
  },
  {
    "id": "city:865324",
    "name": "Chuo",
    "country_id": "country:75"
  },
  {
    "id": "city:25",
    "name": "Budapest",
    "country_id": "country:26"
  },
  {
    "id": "city:846468",
    "name": "Chiyoda",
    "country_id": "country:75"
  },
  {
    "id": "city:22",
    "name": "Vienna",
    "country_id": "country:23"
  },
  {
    "id": "city:43",
    "name": "Milan",
    "country_id": "country:20"
  },
  {
    "id": "city:13",
    "name": "Madrid",
    "country_id": "country:13"
  },
  {
    "id": "city:154767",
    "name": "Beverly Hills",
    "country_id": "country:43"
  },
  {
    "id": "city:10891",
    "name": "Santa Monica",
    "country_id": "country:43"
  },
  {
    "id": "city:389",
    "name": "Hong Kong",
    "country_id": "country:78"
  },
  {
    "id": "region:44439",
    "name": "Kowloon",
    "country_id": "country:78"
  },
  {
    "id": "city:8289",
    "name": "Lido di Roma",
    "country_id": "country:20"
  },
  {
    "id": "city:8298",
    "name": "Fiumicino",
    "country_id": "country:20"
  },
  {
    "id": "city:6548",
    "name": "Frederiksberg",
    "country_id": "country:8"
  },
  {
    "id": "city:8",
    "name": "Copenhagen",
    "country_id": "country:8"
  },
  {
    "id": "city:476",
    "name": "Osaka",
    "country_id": "country:75"
  },
  {
    "id": "city:848054",
    "name": "Taito",
    "country_id": "country:75"
  },
  {
    "id": "city:762676",
    "name": "Sumida",
    "country_id": "country:75"
  },
  {
    "id": "city:4953",
    "name": "Kyoto",
    "country_id": "country:75"
  },
  {
    "id": "city:86",
    "name": "City of Edinburgh",
    "country_id": "country:1"
  },
  {
    "id": "city:148",
    "name": "Munich",
    "country_id": "country:18"
  },
  {
    "id": "city:10850",
    "name": "North Glendale",
    "country_id": "country:43"
  },
  {
    "id": "city:8690",
    "name": "Kamigyō-ku",
    "country_id": "country:75"
  },
  {
    "id": "city:861174",
    "name": "Setagaya",
    "country_id": "country:75"
  },
  {
    "id": "city:2",
    "name": "Dublin",
    "country_id": "country:2"
  },
  {
    "id": "city:2664",
    "name": "Seoul",
    "country_id": "country:91"
  },
  {
    "id": "city:7038",
    "name": "Acton",
    "country_id": "country:1"
  },
  {
    "id": "city:32",
    "name": "Athens",
    "country_id": "country:33"
  },
  {
    "id": "city:373466",
    "name": "Kallithea",
    "country_id": "country:33"
  },
  {
    "id": "city:12",
    "name": "Lisbon",
    "country_id": "country:12"
  },
  {
    "id": "city:15",
    "name": "Brussels",
    "country_id": "country:15"
  },
  {
    "id": "city:379",
    "name": "Sydney",
    "country_id": "country:73"
  },
  {
    "id": "city:1376972",
    "name": "Zografou",
    "country_id": "country:33"
  },
  {
    "id": "city:319",
    "name": "Dubai",
    "country_id": "country:54"
  },
  {
    "id": "city:10587",
    "name": "Arlington",
    "country_id": "country:43"
  },
  {
    "id": "city:8367",
    "name": "Urayasu",
    "country_id": "country:75"
  },
  {
    "id": "city:3355",
    "name": "Singapore",
    "country_id": "country:84"
  },
  {
    "id": "city:7072",
    "name": "Peristeri",
    "country_id": "country:33"
  },
  {
    "id": "city:8259",
    "name": "Scandicci",
    "country_id": "country:20"
  },
  {
    "id": "city:101",
    "name": "Pisa",
    "country_id": "country:20"
  },
  {
    "id": "city:364",
    "name": "Chicago",
    "country_id": "country:43"
  },
  {
    "id": "city:6",
    "name": "Stockholm",
    "country_id": "country:6"
  },
  {
    "id": "city:159285",
    "name": "West Hollywood",
    "country_id": "country:43"
  },
  {
    "id": "city:1388470",
    "name": "Shinjuku",
    "country_id": "country:75"
  },
  {
    "id": "city:4939",
    "name": "Anaheim",
    "country_id": "country:43"
  },
  {
    "id": "city:3",
    "name": "Reykjavik",
    "country_id": "country:3"
  },
  {
    "id": "city:144",
    "name": "Istanbul",
    "country_id": "country:34"
  },
  {
    "id": "city:320",
    "name": "Orlando",
    "country_id": "country:43"
  },
  {
    "id": "city:4924",
    "name": "Bruges",
    "country_id": "country:15"
  },
  {
    "id": "city:7076",
    "name": "Néa Ionía",
    "country_id": "country:33"
  },
  {
    "id": "city:6920",
    "name": "Slough",
    "country_id": "country:1"
  },
  {
    "id": "city:8460",
    "name": "Nara",
    "country_id": "country:75"
  },
  {
    "id": "city:40",
    "name": "Nice",
    "country_id": "country:14"
  },
  {
    "id": "city:41",
    "name": "Zurich",
    "country_id": "country:19"
  },
  {
    "id": "city:4",
    "name": "Oslo",
    "country_id": "country:4"
  },
  {
    "id": "city:10661",
    "name": "South Boston",
    "country_id": "country:43"
  },
  {
    "id": "city:363",
    "name": "Boston",
    "country_id": "country:43"
  },
  {
    "id": "city:123",
    "name": "Seville",
    "country_id": "country:13"
  },
  {
    "id": "city:362",
    "name": "Seattle",
    "country_id": "country:43"
  },
  {
    "id": "city:10256",
    "name": "Şişli",
    "country_id": "country:34"
  },
  {
    "id": "city:63",
    "name": "Salzburg",
    "country_id": "country:23"
  },
  {
    "id": "city:381",
    "name": "Melbourne",
    "country_id": "country:73"
  },
  {
    "id": "city:308",
    "name": "Toronto",
    "country_id": "country:49"
  },
  {
    "id": "city:311",
    "name": "Las Vegas",
    "country_id": "country:43"
  },
  {
    "id": "city:10728",
    "name": "Coney Island",
    "country_id": "country:43"
  },
  {
    "id": "city:10725",
    "name": "Bensonhurst",
    "country_id": "country:43"
  },
  {
    "id": "city:61",
    "name": "Verona",
    "country_id": "country:20"
  },
  {
    "id": "city:45",
    "name": "Krakow",
    "country_id": "country:21"
  },
  {
    "id": "city:45250",
    "name": "Yongin-si",
    "country_id": "country:91"
  },
  {
    "id": "city:2582",
    "name": "Taipei",
    "country_id": "country:194"
  },
  {
    "id": "city:8312",
    "name": "Castellammare di Stabia",
    "country_id": "country:20"
  },
  {
    "id": "city:11201",
    "name": "Pompei",
    "country_id": "country:20"
  },
  {
    "id": "city:6810",
    "name": "Badalona",
    "country_id": "country:13"
  },
  {
    "id": "city:463",
    "name": "Beijing",
    "country_id": "country:78"
  },
  {
    "id": "city:6840",
    "name": "Saint-Denis",
    "country_id": "country:14"
  },
  {
    "id": "city:7",
    "name": "Helsinki",
    "country_id": "country:7"
  },
  {
    "id": "city:414",
    "name": "Philadelphia",
    "country_id": "country:43"
  },
  {
    "id": "city:411",
    "name": "Narita",
    "country_id": "country:75"
  },
  {
    "id": "city:7029",
    "name": "Bath",
    "country_id": "country:1"
  },
  {
    "id": "city:10452",
    "name": "Miami Beach",
    "country_id": "country:43"
  },
  {
    "id": "city:8475",
    "name": "Mitaka",
    "country_id": "country:75"
  },
  {
    "id": "city:111",
    "name": "Porto",
    "country_id": "country:12"
  },
  {
    "id": "city:729438",
    "name": "Toshima",
    "country_id": "country:75"
  },
  {
    "id": "city:411051",
    "name": "Niagara Falls",
    "country_id": "country:43"
  },
  {
    "id": "city:1719",
    "name": "Niagara Falls",
    "country_id": "country:43"
  },
  {
    "id": "city:5514",
    "name": "Niagara Falls",
    "country_id": "country:49"
  },
  {
    "id": "city:508",
    "name": "San Diego",
    "country_id": "country:43"
  },
  {
    "id": "city:371",
    "name": "Montreal",
    "country_id": "country:49"
  },
  {
    "id": "city:11196",
    "name": "Stirling",
    "country_id": "country:1"
  },
  {
    "id": "city:21",
    "name": "Warsaw",
    "country_id": "country:21"
  },
  {
    "id": "city:719461",
    "name": "Nakano",
    "country_id": "country:75"
  },
  {
    "id": "city:100",
    "name": "Granada",
    "country_id": "country:13"
  },
  {
    "id": "city:11076",
    "name": "Halong",
    "country_id": "country:83"
  },
  {
    "id": "city:729274",
    "name": "Bunkyo",
    "country_id": "country:75"
  },
  {
    "id": "city:149",
    "name": "Cologne",
    "country_id": "country:18"
  },
  {
    "id": "city:1602",
    "name": "Burbank",
    "country_id": "country:43"
  },
  {
    "id": "city:24",
    "name": "Bratislava",
    "country_id": "country:25"
  },
  {
    "id": "city:6441",
    "name": "Potsdam",
    "country_id": "country:18"
  },
  {
    "id": "city:3213",
    "name": "Ho Chi Minh City",
    "country_id": "country:83"
  },
  {
    "id": "city:36",
    "name": "Moscow",
    "country_id": "country:37"
  },
  {
    "id": "city:158",
    "name": "Geneva",
    "country_id": "country:19"
  },
  {
    "id": "city:140",
    "name": "Frankfurt am Main",
    "country_id": "country:18"
  },
  {
    "id": "city:11208",
    "name": "Sorrento",
    "country_id": "country:20"
  },
  {
    "id": "city:8597",
    "name": "Fujinomiya",
    "country_id": "country:75"
  },
  {
    "id": "city:169",
    "name": "Marseille",
    "country_id": "country:14"
  },
  {
    "id": "city:9",
    "name": "Tallinn",
    "country_id": "country:9"
  },
  {
    "id": "city:48",
    "name": "Split",
    "country_id": "country:27"
  },
  {
    "id": "city:2040",
    "name": "Monaco",
    "country_id": "country:72"
  },
  {
    "id": "city:3804",
    "name": "Grand Canyon West",
    "country_id": "country:43"
  },
  {
    "id": "city:2031",
    "name": "Siena",
    "country_id": "country:20"
  },
  {
    "id": "city:74",
    "name": "Valencia",
    "country_id": "country:13"
  },
  {
    "id": "city:2622",
    "name": "Hiroshima",
    "country_id": "country:75"
  },
  {
    "id": "city:310",
    "name": "Vancouver",
    "country_id": "country:49"
  },
  {
    "id": "city:3211",
    "name": "Hanoi",
    "country_id": "country:83"
  },
  {
    "id": "city:499",
    "name": "Rio de Janeiro",
    "country_id": "country:67"
  },
  {
    "id": "city:146",
    "name": "Dresden",
    "country_id": "country:18"
  },
  {
    "id": "city:767081",
    "name": "Koto",
    "country_id": "country:75"
  },
  {
    "id": "city:10249",
    "name": "Zeytinburnu",
    "country_id": "country:34"
  },
  {
    "id": "region:360",
    "name": "Macau",
    "country_id": "country:78"
  },
  {
    "id": "city:3184",
    "name": "Macau",
    "country_id": "country:78"
  },
  {
    "id": "city:2968",
    "name": "San Juan",
    "country_id": "country:43"
  },
  {
    "id": "city:1773",
    "name": "New Orleans",
    "country_id": "country:43"
  },
  {
    "id": "city:216",
    "name": "Bergen",
    "country_id": "country:4"
  },
  {
    "id": "city:165",
    "name": "Naples",
    "country_id": "country:20"
  },
  {
    "id": "city:161",
    "name": "Lyon",
    "country_id": "country:14"
  },
  {
    "id": "city:108",
    "name": "Glasgow",
    "country_id": "country:1"
  },
  {
    "id": "city:173",
    "name": "Saint Petersburg",
    "country_id": "country:37"
  },
  {
    "id": "city:8568",
    "name": "Himeji",
    "country_id": "country:75"
  },
  {
    "id": "city:10130",
    "name": "Ayutthaya",
    "country_id": "country:47"
  },
  {
    "id": "city:9268",
    "name": "Haarlem",
    "country_id": "country:16"
  },
  {
    "id": "city:8571",
    "name": "Hatsukaichi",
    "country_id": "country:75"
  },
  {
    "id": "city:372",
    "name": "Auckland",
    "country_id": "country:77"
  },
  {
    "id": "city:860508",
    "name": "Ota",
    "country_id": "country:75"
  },
  {
    "id": "city:151390",
    "name": "Pearl City",
    "country_id": "country:43"
  },
  {
    "id": "city:151699",
    "name": "Aiea",
    "country_id": "country:43"
  },
  {
    "id": "city:2550",
    "name": "Honolulu",
    "country_id": "country:43"
  },
  {
    "id": "city:474",
    "name": "Shanghai",
    "country_id": "country:78"
  },
  {
    "id": "city:359",
    "name": "Miami",
    "country_id": "country:43"
  },
  {
    "id": "city:8469",
    "name": "Musashino",
    "country_id": "country:75"
  },
  {
    "id": "city:3165",
    "name": "Siem Reap",
    "country_id": "country:214"
  },
  {
    "id": "city:23",
    "name": "Ljubljana",
    "country_id": "country:24"
  },
  {
    "id": "city:19",
    "name": "Bern",
    "country_id": "country:19"
  },
  {
    "id": "city:1305644",
    "name": "District of North Vancouver",
    "country_id": "country:49"
  },
  {
    "id": "city:3481",
    "name": "Chiang Mai",
    "country_id": "country:47"
  },
  {
    "id": "city:163",
    "name": "Inverness",
    "country_id": "country:1"
  },
  {
    "id": "city:11181",
    "name": "Busan",
    "country_id": "country:91"
  },
  {
    "id": "city:3773",
    "name": "Monterey",
    "country_id": "country:43"
  },
  {
    "id": "region:32529",
    "name": "New Taipei",
    "country_id": "country:194"
  },
  {
    "id": "city:3698",
    "name": "Zhuhai",
    "country_id": "country:78"
  },
  {
    "id": "city:8997",
    "name": "Venustiano Carranza",
    "country_id": "country:50"
  },
  {
    "id": "city:8999",
    "name": "Cuauhtémoc",
    "country_id": "country:50"
  },
  {
    "id": "city:2140",
    "name": "Mexico City",
    "country_id": "country:50"
  },
  {
    "id": "city:11209",
    "name": "Bellagio",
    "country_id": "country:20"
  },
  {
    "id": "city:8970",
    "name": "Iztacalco",
    "country_id": "country:50"
  },
  {
    "id": "city:1362",
    "name": "Cordova",
    "country_id": "country:13"
  },
  {
    "id": "city:479",
    "name": "Denpasar",
    "country_id": "country:93"
  },
  {
    "id": "city:8531",
    "name": "Kamakura",
    "country_id": "country:75"
  },
  {
    "id": "city:119",
    "name": "Hamburg",
    "country_id": "country:18"
  },
  {
    "id": "city:9671",
    "name": "Corroios",
    "country_id": "country:12"
  },
  {
    "id": "city:107",
    "name": "Palermo",
    "country_id": "country:20"
  },
  {
    "id": "city:94",
    "name": "Bologna",
    "country_id": "country:20"
  },
  {
    "id": "city:9251",
    "name": "The Hague",
    "country_id": "country:16"
  },
  {
    "id": "city:297",
    "name": "Innsbruck",
    "country_id": "country:23"
  },
  {
    "id": "city:7016",
    "name": "Castlereagh",
    "country_id": "country:1"
  },
  {
    "id": "city:153",
    "name": "Belfast",
    "country_id": "country:1"
  },
  {
    "id": "city:306",
    "name": "Havana",
    "country_id": "country:51"
  },
  {
    "id": "city:374",
    "name": "Buenos Aires",
    "country_id": "country:74"
  },
  {
    "id": "city:5534",
    "name": "Lévis",
    "country_id": "country:49"
  },
  {
    "id": "city:650",
    "name": "Quebec",
    "country_id": "country:49"
  },
  {
    "id": "city:2187",
    "name": "Quepos",
    "country_id": "country:68"
  },
  {
    "id": "city:419",
    "name": "Cape Town",
    "country_id": "country:85"
  },
  {
    "id": "city:224",
    "name": "Funchal",
    "country_id": "country:12"
  },
  {
    "id": "city:205",
    "name": "Nuremberg",
    "country_id": "country:18"
  },
  {
    "id": "city:8721",
    "name": "Pusan",
    "country_id": "country:91"
  },
  {
    "id": "city:1461133",
    "name": "Malibu",
    "country_id": "country:43"
  },
  {
    "id": "region:41503",
    "name": "Lima",
    "country_id": "country:99"
  },
  {
    "id": "city:182",
    "name": "Heraklion",
    "country_id": "country:33"
  },
  {
    "id": "city:245",
    "name": "Waterford",
    "country_id": "country:2"
  },
  {
    "id": "city:89",
    "name": "Málaga",
    "country_id": "country:13"
  },
  {
    "id": "city:239",
    "name": "Rotterdam",
    "country_id": "country:16"
  },
  {
    "id": "city:952",
    "name": "Ypenburg",
    "country_id": "country:16"
  },
  {
    "id": "city:152",
    "name": "Palma",
    "country_id": "country:13"
  },
  {
    "id": "city:2591",
    "name": "Sapporo",
    "country_id": "country:75"
  },
  {
    "id": "city:406",
    "name": "Strasbourg",
    "country_id": "country:14"
  },
  {
    "id": "city:3122",
    "name": "Agra",
    "country_id": "country:55"
  },
  {
    "id": "city:11264",
    "name": "Hoi An",
    "country_id": "country:83"
  },
  {
    "id": "city:220",
    "name": "Chania",
    "country_id": "country:33"
  },
  {
    "id": "city:880",
    "name": "Heidelberg",
    "country_id": "country:18"
  },
  {
    "id": "city:6886",
    "name": "York",
    "country_id": "country:1"
  },
  {
    "id": "city:10887",
    "name": "Santa Barbara",
    "country_id": "country:43"
  },
  {
    "id": "city:1845",
    "name": "Santa Barbara",
    "country_id": "country:43"
  },
  {
    "id": "city:140578",
    "name": "Santa Barbara",
    "country_id": "country:43"
  },
  {
    "id": "city:10",
    "name": "Riga",
    "country_id": "country:10"
  },
  {
    "id": "city:563475",
    "name": "Amlapura",
    "country_id": "country:93"
  },
  {
    "id": "city:375",
    "name": "Delhi",
    "country_id": "country:55"
  },
  {
    "id": "city:6717",
    "name": "Toledo",
    "country_id": "country:13"
  },
  {
    "id": "city:130",
    "name": "Malmö",
    "country_id": "country:6"
  },
  {
    "id": "city:11254",
    "name": "Jungfrauregion",
    "country_id": "country:19"
  },
  {
    "id": "city:11259",
    "name": "Taormina",
    "country_id": "country:20"
  },
  {
    "id": "city:10810",
    "name": "East Los Angeles",
    "country_id": "country:43"
  },
  {
    "id": "city:17",
    "name": "Luxembourg",
    "country_id": "country:17"
  },
  {
    "id": "city:477",
    "name": "Perth",
    "country_id": "country:73"
  },
  {
    "id": "city:95",
    "name": "Genoa",
    "country_id": "country:20"
  },
  {
    "id": "city:417",
    "name": "Antwerp",
    "country_id": "country:15"
  },
  {
    "id": "city:26",
    "name": "Zagreb",
    "country_id": "country:27"
  },
  {
    "id": "city:5100",
    "name": "Ghent",
    "country_id": "country:15"
  },
  {
    "id": "city:82189",
    "name": "Niagara Falls",
    "country_id": "country:49"
  },
  {
    "id": "city:1801",
    "name": "Mountain View",
    "country_id": "country:43"
  },
  {
    "id": "city:920",
    "name": "Oxford",
    "country_id": "country:1"
  },
  {
    "id": "city:30",
    "name": "Bucharest",
    "country_id": "country:31"
  },
  {
    "id": "city:136",
    "name": "Bilbao",
    "country_id": "country:13"
  },
  {
    "id": "city:6817",
    "name": "Santutxu",
    "country_id": "country:13"
  },
  {
    "id": "city:1806",
    "name": "Oakland",
    "country_id": "country:43"
  },
  {
    "id": "city:38",
    "name": "Manchester",
    "country_id": "country:1"
  },
  {
    "id": "city:238",
    "name": "Rhodes",
    "country_id": "country:33"
  },
  {
    "id": "city:106",
    "name": "Cork",
    "country_id": "country:2"
  },
  {
    "id": "city:8254",
    "name": "Torre del Greco",
    "country_id": "country:20"
  },
  {
    "id": "city:1816",
    "name": "Portland",
    "country_id": "country:43"
  },
  {
    "id": "city:45326",
    "name": "Suwon-si",
    "country_id": "country:91"
  },
  {
    "id": "city:8717",
    "name": "Suigen",
    "country_id": "country:91"
  },
  {
    "id": "city:289",
    "name": "Avignon",
    "country_id": "country:14"
  },
  {
    "id": "city:117",
    "name": "Liverpool",
    "country_id": "country:1"
  },
  {
    "id": "city:457",
    "name": "Ottawa",
    "country_id": "country:49"
  },
  {
    "id": "city:8998",
    "name": "Miguel Hidalgo",
    "country_id": "country:50"
  },
  {
    "id": "city:2855",
    "name": "Santiago",
    "country_id": "country:195"
  },
  {
    "id": "city:8243",
    "name": "Bagheria",
    "country_id": "country:20"
  },
  {
    "id": "city:3656",
    "name": "Limerick",
    "country_id": "country:2"
  },
  {
    "id": "city:10314",
    "name": "Taoyuan",
    "country_id": "country:194"
  },
  {
    "id": "city:7586",
    "name": "New Delhi",
    "country_id": "country:55"
  },
  {
    "id": "city:47",
    "name": "Zadar",
    "country_id": "country:27"
  },
  {
    "id": "city:268",
    "name": "Marrakesh",
    "country_id": "country:45"
  },
  {
    "id": "city:322",
    "name": "Phuket",
    "country_id": "country:47"
  },
  {
    "id": "city:10111",
    "name": "Ban Talat Yai",
    "country_id": "country:47"
  },
  {
    "id": "city:4452",
    "name": "Taichung",
    "country_id": "country:194"
  },
  {
    "id": "city:3164",
    "name": "Phnom Penh",
    "country_id": "country:214"
  },
  {
    "id": "city:762677",
    "name": "Edogawa",
    "country_id": "country:75"
  },
  {
    "id": "city:10890",
    "name": "Santa Cruz",
    "country_id": "country:43"
  },
  {
    "id": "city:9304",
    "name": "Mangere",
    "country_id": "country:77"
  },
  {
    "id": "city:4305",
    "name": "Kobe",
    "country_id": "country:75"
  },
  {
    "id": "city:8232",
    "name": "Siracusa",
    "country_id": "country:20"
  },
  {
    "id": "city:1236811",
    "name": "Siracusa",
    "country_id": "country:20"
  },
  {
    "id": "city:4927",
    "name": "Syracuse",
    "country_id": "country:20"
  },
  {
    "id": "city:383",
    "name": "Jerusalem",
    "country_id": "region:2005732"
  },
  {
    "id": "city:383",
    "name": "Jerusalem",
    "country_id": "country:71"
  },
  {
    "id": "city:2005948",
    "name": "Jerusalem",
    "country_id": "country:71"
  },
  {
    "id": "city:9814",
    "name": "Petrodvorets",
    "country_id": "country:37"
  },
  {
    "id": "city:4954",
    "name": "Pattaya",
    "country_id": "country:47"
  },
  {
    "id": "city:1623",
    "name": "Colorado Springs",
    "country_id": "country:43"
  },
  {
    "id": "city:250",
    "name": "Corfu",
    "country_id": "country:33"
  },
  {
    "id": "city:8244",
    "name": "Agrigento",
    "country_id": "country:20"
  },
  {
    "id": "city:10710",
    "name": "Elizabeth",
    "country_id": "country:43"
  },
  {
    "id": "city:8264",
    "name": "San Giorgio a Cremano",
    "country_id": "country:20"
  },
  {
    "id": "city:8302",
    "name": "Ercolano",
    "country_id": "country:20"
  },
  {
    "id": "city:1839",
    "name": "San Antonio",
    "country_id": "country:43"
  },
  {
    "id": "city:151503",
    "name": "Kailua",
    "country_id": "country:43"
  },
  {
    "id": "city:9811",
    "name": "Pushkin",
    "country_id": "country:37"
  },
  {
    "id": "city:225",
    "name": "Galway",
    "country_id": "country:2"
  },
  {
    "id": "city:347",
    "name": "San José",
    "country_id": "country:68"
  },
  {
    "id": "city:118",
    "name": "Linz",
    "country_id": "country:23"
  },
  {
    "id": "city:404",
    "name": "Pula",
    "country_id": "country:27"
  },
  {
    "id": "city:1207612",
    "name": "Manhattan Beach",
    "country_id": "country:43"
  },
  {
    "id": "city:210",
    "name": "Tbilisi",
    "country_id": "country:44"
  },
  {
    "id": "city:42",
    "name": "Stuttgart",
    "country_id": "country:18"
  },
  {
    "id": "city:8291",
    "name": "La Spezia",
    "country_id": "country:20"
  },
  {
    "id": "city:85",
    "name": "Cardiff",
    "country_id": "country:1"
  },
  {
    "id": "city:918",
    "name": "Cambridge",
    "country_id": "country:1"
  },
  {
    "id": "city:62",
    "name": "Turin",
    "country_id": "country:20"
  },
  {
    "id": "city:10441",
    "name": "Fountainebleau",
    "country_id": "country:43"
  },
  {
    "id": "city:5019",
    "name": "Gold Coast",
    "country_id": "country:73"
  },
  {
    "id": "city:10472",
    "name": "Tamiami",
    "country_id": "country:43"
  },
  {
    "id": "city:5560",
    "name": "Lausanne",
    "country_id": "country:19"
  },
  {
    "id": "city:763579",
    "name": "Suginami",
    "country_id": "country:75"
  },
  {
    "id": "city:689107",
    "name": "Ikeda",
    "country_id": "country:75"
  },
  {
    "id": "city:8358",
    "name": "Yokohama",
    "country_id": "country:75"
  },
  {
    "id": "city:6735",
    "name": "Marbella",
    "country_id": "country:13"
  },
  {
    "id": "city:7042",
    "name": "London Borough of Harrow",
    "country_id": "country:1"
  },
  {
    "id": "city:1976",
    "name": "Aix-en-Provence",
    "country_id": "country:14"
  },
  {
    "id": "city:1096273",
    "name": "Valletta",
    "country_id": "country:41"
  },
  {
    "id": "city:9722",
    "name": "Zemun",
    "country_id": "country:29"
  },
  {
    "id": "city:28",
    "name": "Belgrade",
    "country_id": "country:29"
  },
  {
    "id": "city:3655",
    "name": "La Valletta",
    "country_id": "country:41"
  },
  {
    "id": "city:8287",
    "name": "Lucca",
    "country_id": "country:20"
  },
  {
    "id": "city:131",
    "name": "Düsseldorf",
    "country_id": "country:18"
  },
  {
    "id": "city:3131",
    "name": "Jaipur",
    "country_id": "country:55"
  },
  {
    "id": "city:720789",
    "name": "Tama",
    "country_id": "country:75"
  },
  {
    "id": "city:1751",
    "name": "Tampa",
    "country_id": "country:43"
  },
  {
    "id": "city:8670",
    "name": "Otaru",
    "country_id": "country:75"
  },
  {
    "id": "city:1365",
    "name": "Donostia-San Sebastián",
    "country_id": "country:13"
  },
  {
    "id": "city:4937",
    "name": "Newark",
    "country_id": "country:43"
  },
  {
    "id": "city:183",
    "name": "Catania",
    "country_id": "country:20"
  },
  {
    "id": "city:11206",
    "name": "Brighton",
    "country_id": "country:1"
  },
  {
    "id": "city:4069",
    "name": "Bar Harbor",
    "country_id": "country:43"
  },
  {
    "id": "city:1595",
    "name": "Nashville",
    "country_id": "country:43"
  },
  {
    "id": "city:170",
    "name": "Gdańsk",
    "country_id": "country:21"
  },
  {
    "id": "city:11199",
    "name": "Salisbury",
    "country_id": "country:1"
  },
  {
    "id": "city:9335",
    "name": "San Isidro",
    "country_id": "country:99"
  },
  {
    "id": "city:1858",
    "name": "St. Louis",
    "country_id": "country:43"
  },
  {
    "id": "city:1855",
    "name": "San Luis",
    "country_id": "country:43"
  },
  {
    "id": "city:1661",
    "name": "Fort Lauderdale",
    "country_id": "country:43"
  },
  {
    "id": "city:2030",
    "name": "Padua",
    "country_id": "country:20"
  },
  {
    "id": "city:2707",
    "name": "Iguazu Falls",
    "country_id": "country:74"
  },
  {
    "id": "city:65",
    "name": "Wrocław",
    "country_id": "country:21"
  },
  {
    "id": "city:360",
    "name": "Atlanta",
    "country_id": "country:43"
  },
  {
    "id": "city:379312",
    "name": "Polonnaruwa",
    "country_id": "country:52"
  },
  {
    "id": "city:2618",
    "name": "Kanazawa",
    "country_id": "country:75"
  },
  {
    "id": "city:179",
    "name": "Bordeaux",
    "country_id": "country:14"
  },
  {
    "id": "city:8553",
    "name": "Nikkō",
    "country_id": "country:75"
  },
  {
    "id": "city:145",
    "name": "Thessaloniki",
    "country_id": "country:33"
  },
  {
    "id": "city:1754",
    "name": "Memphis",
    "country_id": "country:43"
  },
  {
    "id": "city:8926",
    "name": "Alvaro Obregón",
    "country_id": "country:50"
  },
  {
    "id": "city:1844",
    "name": "Savannah",
    "country_id": "country:43"
  },
  {
    "id": "city:8976",
    "name": "Coyoacán",
    "country_id": "country:50"
  },
  {
    "id": "city:7086",
    "name": "Kalamariá",
    "country_id": "country:33"
  },
  {
    "id": "city:10551",
    "name": "New South Memphis",
    "country_id": "country:43"
  },
  {
    "id": "city:10832",
    "name": "Huntington Beach",
    "country_id": "country:43"
  },
  {
    "id": "city:9667",
    "name": "Queluz",
    "country_id": "country:12"
  },
  {
    "id": "city:865329",
    "name": "Arakawa",
    "country_id": "country:75"
  },
  {
    "id": "city:275",
    "name": "Trondheim",
    "country_id": "country:4"
  },
  {
    "id": "city:2297",
    "name": "Rotorua",
    "country_id": "country:77"
  },
  {
    "id": "city:8813",
    "name": "Kandy",
    "country_id": "country:52"
  },
  {
    "id": "city:10470",
    "name": "Sunrise",
    "country_id": "country:43"
  },
  {
    "id": "city:11195",
    "name": "Canterbury",
    "country_id": "country:1"
  },
  {
    "id": "city:1603",
    "name": "Baltimore",
    "country_id": "country:43"
  },
  {
    "id": "city:370",
    "name": "Tel Aviv-Yafo",
    "country_id": "country:71"
  },
  {
    "id": "city:3227",
    "name": "Yangon",
    "country_id": "country:222"
  },
  {
    "id": "city:72",
    "name": "Zaragoza",
    "country_id": "country:13"
  },
  {
    "id": "city:2179",
    "name": "Panama",
    "country_id": "country:156"
  },
  {
    "id": "city:2177",
    "name": "Howard",
    "country_id": "country:156"
  },
  {
    "id": "city:134",
    "name": "Santiago de Compostela",
    "country_id": "country:13"
  },
  {
    "id": "city:1649",
    "name": "Houston",
    "country_id": "country:43"
  },
  {
    "id": "city:6771",
    "name": "Segovia",
    "country_id": "country:13"
  },
  {
    "id": "city:509",
    "name": "Bogota",
    "country_id": "country:98"
  },
  {
    "id": "city:84",
    "name": "Bristol",
    "country_id": "country:1"
  },
  {
    "id": "city:3038",
    "name": "Sochi",
    "country_id": "country:37"
  },
  {
    "id": "city:243",
    "name": "Stavanger",
    "country_id": "country:4"
  },
  {
    "id": "city:4934",
    "name": "Napa",
    "country_id": "country:43"
  },
  {
    "id": "city:8304",
    "name": "Como",
    "country_id": "country:20"
  },
  {
    "id": "city:7021",
    "name": "Bootle",
    "country_id": "country:1"
  },
  {
    "id": "city:54",
    "name": "Brno",
    "country_id": "country:5"
  },
  {
    "id": "city:11",
    "name": "Vilnius",
    "country_id": "country:11"
  },
  {
    "id": "city:126",
    "name": "Londonderry/Derry",
    "country_id": "country:1"
  },
  {
    "id": "city:6753",
    "name": "Cádiz",
    "country_id": "country:13"
  },
  {
    "id": "city:2455",
    "name": "Abu Dhabi",
    "country_id": "country:54"
  },
  {
    "id": "city:9677",
    "name": "Coimbra",
    "country_id": "country:12"
  },
  {
    "id": "city:3072",
    "name": "Mumbai",
    "country_id": "country:55"
  },
  {
    "id": "city:6366",
    "name": "Pinar del Rio",
    "country_id": "country:51"
  },
  {
    "id": "city:9275",
    "name": "Delft",
    "country_id": "country:16"
  },
  {
    "id": "city:367",
    "name": "Denver",
    "country_id": "country:43"
  },
  {
    "id": "city:9939",
    "name": "Adler",
    "country_id": "country:37"
  },
  {
    "id": "city:2273",
    "name": "Christchurch",
    "country_id": "country:77"
  },
  {
    "id": "city:4552",
    "name": "Nevşehir",
    "country_id": "country:34"
  },
  {
    "id": "city:10296",
    "name": "Bahçelievler",
    "country_id": "country:34"
  },
  {
    "id": "city:6370",
    "name": "Matanzas",
    "country_id": "country:51"
  },
  {
    "id": "city:484",
    "name": "Manila",
    "country_id": "country:94"
  },
  {
    "id": "city:6379",
    "name": "Cárdenas",
    "country_id": "country:51"
  },
  {
    "id": "city:1853",
    "name": "Salt Lake City",
    "country_id": "country:43"
  },
  {
    "id": "city:90",
    "name": "Faro",
    "country_id": "country:12"
  },
  {
    "id": "city:10835",
    "name": "Inglewood",
    "country_id": "country:43"
  },
  {
    "id": "city:5497",
    "name": "Etobicoke",
    "country_id": "country:49"
  },
  {
    "id": "city:5511",
    "name": "Mississauga",
    "country_id": "country:49"
  },
  {
    "id": "city:3360",
    "name": "Cairns",
    "country_id": "country:73"
  },
  {
    "id": "city:718",
    "name": "Victoria",
    "country_id": "country:49"
  },
  {
    "id": "city:317",
    "name": "Colombo",
    "country_id": "country:52"
  },
  {
    "id": "city:82",
    "name": "Birmingham",
    "country_id": "country:1"
  },
  {
    "id": "city:124",
    "name": "Gothenburg",
    "country_id": "country:6"
  },
  {
    "id": "city:4446",
    "name": "Flagstaff",
    "country_id": "country:43"
  },
  {
    "id": "city:6283",
    "name": "Changping",
    "country_id": "country:78"
  },
  {
    "id": "city:10849",
    "name": "Newport Beach",
    "country_id": "country:43"
  },
  {
    "id": "city:9339",
    "name": "Ica",
    "country_id": "country:99"
  },
  {
    "id": "city:8924",
    "name": "Xochimilco",
    "country_id": "country:50"
  },
  {
    "id": "city:373",
    "name": "São Paulo",
    "country_id": "country:67"
  },
  {
    "id": "city:418",
    "name": "Dallas",
    "country_id": "country:43"
  },
  {
    "id": "city:143",
    "name": "Izmir",
    "country_id": "country:34"
  },
  {
    "id": "city:2549",
    "name": "Kaneohe Bay",
    "country_id": "country:43"
  },
  {
    "id": "city:397",
    "name": "Austin",
    "country_id": "country:43"
  },
  {
    "id": "city:1617",
    "name": "Cleveland",
    "country_id": "country:43"
  },
  {
    "id": "city:8322",
    "name": "Bergamo",
    "country_id": "country:20"
  },
  {
    "id": "city:3464",
    "name": "Freiburg im Breisgau",
    "country_id": "country:18"
  },
  {
    "id": "city:1827",
    "name": "Palm Springs",
    "country_id": "country:43"
  },
  {
    "id": "city:10662",
    "name": "South Peabody",
    "country_id": "country:43"
  },
  {
    "id": "city:137",
    "name": "Tours",
    "country_id": "country:14"
  },
  {
    "id": "city:2998",
    "name": "Yerevan",
    "country_id": "country:229"
  },
  {
    "id": "city:8953",
    "name": "Playa del Carmen",
    "country_id": "country:50"
  },
  {
    "id": "city:8285",
    "name": "Marano di Napoli",
    "country_id": "country:20"
  },
  {
    "id": "city:157",
    "name": "Basel",
    "country_id": "country:19"
  },
  {
    "id": "city:97",
    "name": "Nîmes",
    "country_id": "country:14"
  },
  {
    "id": "city:8313",
    "name": "Casoria",
    "country_id": "country:20"
  },
  {
    "id": "city:31",
    "name": "Sofia",
    "country_id": "country:32"
  },
  {
    "id": "city:96",
    "name": "Graz",
    "country_id": "country:23"
  },
  {
    "id": "city:4229",
    "name": "Porto Cristo",
    "country_id": "country:13"
  },
  {
    "id": "city:1812",
    "name": "Everett",
    "country_id": "country:43"
  },
  {
    "id": "city:1364",
    "name": "Salamanca",
    "country_id": "country:13"
  },
  {
    "id": "city:2906",
    "name": "Montevideo",
    "country_id": "country:201"
  },
  {
    "id": "city:429140",
    "name": "Semarapura",
    "country_id": "country:93"
  },
  {
    "id": "city:9670",
    "name": "Évora",
    "country_id": "country:12"
  },
  {
    "id": "city:9665",
    "name": "Setúbal",
    "country_id": "country:12"
  },
  {
    "id": "city:3375",
    "name": "Hobart",
    "country_id": "country:73"
  },
  {
    "id": "city:10786",
    "name": "Buena Park",
    "country_id": "country:43"
  },
  {
    "id": "city:274",
    "name": "Tromsø",
    "country_id": "country:4"
  },
  {
    "id": "city:10870",
    "name": "Redondo Beach",
    "country_id": "country:43"
  },
  {
    "id": "city:3358",
    "name": "Brisbane",
    "country_id": "country:73"
  },
  {
    "id": "city:10809",
    "name": "Downey",
    "country_id": "country:43"
  },
  {
    "id": "city:255917",
    "name": "Naples",
    "country_id": "country:43"
  },
  {
    "id": "city:11192",
    "name": "Mountain Cluster",
    "country_id": "country:37"
  },
  {
    "id": "city:9346",
    "name": "Callao",
    "country_id": "country:99"
  },
  {
    "id": "city:2000",
    "name": "Reims",
    "country_id": "country:14"
  },
  {
    "id": "city:10884",
    "name": "San Pedro",
    "country_id": "country:43"
  },
  {
    "id": "city:4491",
    "name": "Hue",
    "country_id": "country:83"
  },
  {
    "id": "city:1134126",
    "name": "Winchester",
    "country_id": "country:1"
  },
  {
    "id": "city:8736",
    "name": "Guri-si",
    "country_id": "country:91"
  },
  {
    "id": "city:9288",
    "name": "Alkmaar",
    "country_id": "country:16"
  },
  {
    "id": "city:8812",
    "name": "Katunayaka North",
    "country_id": "country:52"
  },
  {
    "id": "city:4550",
    "name": "Land's End",
    "country_id": "country:1"
  },
  {
    "id": "region:22642",
    "name": "Pasay",
    "country_id": "country:94"
  },
  {
    "id": "city:8280",
    "name": "Modena",
    "country_id": "country:20"
  },
  {
    "id": "city:9247",
    "name": "Utrecht",
    "country_id": "country:16"
  },
  {
    "id": "city:3175",
    "name": "Luang Prabang",
    "country_id": "country:217"
  },
  {
    "id": "city:2305",
    "name": "Wellington",
    "country_id": "country:77"
  },
  {
    "id": "city:8233",
    "name": "Ragusa",
    "country_id": "country:20"
  },
  {
    "id": "city:4926",
    "name": "Santa Cruz de Tenerife",
    "country_id": "country:13"
  },
  {
    "id": "city:4933",
    "name": "City of San Marino",
    "country_id": "country:243"
  },
  {
    "id": "city:480",
    "name": "Jakarta",
    "country_id": "country:93"
  },
  {
    "id": "city:1563",
    "name": "Atlantic City",
    "country_id": "country:43"
  },
  {
    "id": "city:147796",
    "name": "Ir-Rabat (Victoria)",
    "country_id": "country:41"
  },
  {
    "id": "city:45247",
    "name": "Gwacheon-si",
    "country_id": "country:91"
  },
  {
    "id": "city:410",
    "name": "Rouen",
    "country_id": "country:14"
  },
  {
    "id": "city:561705",
    "name": "Noboribetsu",
    "country_id": "country:75"
  },
  {
    "id": "city:155",
    "name": "Alicante/Alacant",
    "country_id": "country:13"
  },
  {
    "id": "city:6358",
    "name": "Trinidad",
    "country_id": "country:51"
  },
  {
    "id": "city:4928",
    "name": "Messina",
    "country_id": "country:20"
  },
  {
    "id": "city:6361",
    "name": "Sancti Spiritus",
    "country_id": "country:51"
  },
  {
    "id": "city:1800",
    "name": "Oceana",
    "country_id": "country:43"
  },
  {
    "id": "city:133361",
    "name": "West Vancouver",
    "country_id": "country:49"
  },
  {
    "id": "city:1005972",
    "name": "Gianyar",
    "country_id": "country:93"
  },
  {
    "id": "city:11191",
    "name": "Coastal Cluster",
    "country_id": "country:37"
  },
  {
    "id": "city:507",
    "name": "Quito",
    "country_id": "country:82"
  },
  {
    "id": "city:80",
    "name": "Aberdeen",
    "country_id": "country:1"
  },
  {
    "id": "city:2025823",
    "name": "Cebu City",
    "country_id": "country:94"
  },
  {
    "id": "city:1250765",
    "name": "Alexandria",
    "country_id": "country:43"
  },
  {
    "id": "city:8477",
    "name": "Minoh",
    "country_id": "country:75"
  },
  {
    "id": "city:8449",
    "name": "Numazu",
    "country_id": "country:75"
  },
  {
    "id": "city:114",
    "name": "Montpellier",
    "country_id": "country:14"
  },
  {
    "id": "city:7081",
    "name": "Μαρούσι",
    "country_id": "country:33"
  },
  {
    "id": "city:7080",
    "name": "Ayía Paraskeví",
    "country_id": "country:33"
  },
  {
    "id": "city:35",
    "name": "Kyiv",
    "country_id": "country:36"
  },
  {
    "id": "city:164",
    "name": "Maastricht",
    "country_id": "country:16"
  },
  {
    "id": "city:7078",
    "name": "Chalandri",
    "country_id": "country:33"
  },
  {
    "id": "city:3378",
    "name": "Adelaide",
    "country_id": "country:73"
  },
  {
    "id": "city:353",
    "name": "Fez",
    "country_id": "country:45"
  },
  {
    "id": "city:8236",
    "name": "Modica",
    "country_id": "country:20"
  },
  {
    "id": "city:2025819",
    "name": "Cairo",
    "country_id": "country:40"
  },
  {
    "id": "city:176",
    "name": "Cairo",
    "country_id": "country:40"
  },
  {
    "id": "city:11214",
    "name": "Alberobello",
    "country_id": "country:20"
  },
  {
    "id": "city:635",
    "name": "Gatineau",
    "country_id": "country:49"
  },
  {
    "id": "city:2608",
    "name": "Fukuoka",
    "country_id": "country:75"
  },
  {
    "id": "city:1148667",
    "name": "Fujiyoshida",
    "country_id": "country:75"
  },
  {
    "id": "city:3354",
    "name": "Paya Lebar",
    "country_id": "country:84"
  },
  {
    "id": "city:1871",
    "name": "Kendall-Tamiami",
    "country_id": "country:43"
  },
  {
    "id": "city:6402",
    "name": "Würzburg",
    "country_id": "country:18"
  },
  {
    "id": "city:1820",
    "name": "Pittsburgh",
    "country_id": "country:43"
  },
  {
    "id": "city:8805",
    "name": "Pita Kotte",
    "country_id": "country:52"
  },
  {
    "id": "city:2496",
    "name": "Cartagena",
    "country_id": "country:98"
  },
  {
    "id": "city:9678",
    "name": "Braga",
    "country_id": "country:12"
  },
  {
    "id": "city:78470",
    "name": "Perth",
    "country_id": "country:1"
  },
  {
    "id": "city:55",
    "name": "Aarhus",
    "country_id": "country:8"
  },
  {
    "id": "city:162",
    "name": "Toulouse",
    "country_id": "country:14"
  },
  {
    "id": "city:689078",
    "name": "Kawachinagano",
    "country_id": "country:75"
  },
  {
    "id": "city:292",
    "name": "Rimini",
    "country_id": "country:20"
  },
  {
    "id": "city:59",
    "name": "Bari",
    "country_id": "country:20"
  },
  {
    "id": "city:11221",
    "name": "Chamonix",
    "country_id": "country:14"
  },
  {
    "id": "city:313",
    "name": "Mérida",
    "country_id": "country:50"
  },
  {
    "id": "city:3432",
    "name": "Xi'an",
    "country_id": "country:78"
  },
  {
    "id": "city:8819",
    "name": "Anuradhapura",
    "country_id": "country:52"
  },
  {
    "id": "city:2070",
    "name": "Denizli",
    "country_id": "country:34"
  },
  {
    "id": "city:3803",
    "name": "Burgos",
    "country_id": "country:13"
  },
  {
    "id": "city:6304",
    "name": "Zipaquirá",
    "country_id": "country:98"
  },
  {
    "id": "city:10520",
    "name": "Asheville",
    "country_id": "country:43"
  },
  {
    "id": "city:514",
    "name": "Lviv",
    "country_id": "country:36"
  },
  {
    "id": "city:4528",
    "name": "New Haven",
    "country_id": "country:43"
  },
  {
    "id": "city:3339",
    "name": "Langkawi",
    "country_id": "country:97"
  },
  {
    "id": "city:81",
    "name": "Nottingham",
    "country_id": "country:1"
  },
  {
    "id": "city:10856",
    "name": "Palo Alto",
    "country_id": "country:43"
  },
  {
    "id": "city:10854",
    "name": "Orange",
    "country_id": "country:43"
  },
  {
    "id": "city:94739",
    "name": "Rethymno",
    "country_id": "country:33"
  },
  {
    "id": "city:2669",
    "name": "Cebu City",
    "country_id": "country:94"
  },
  {
    "id": "city:6698",
    "name": "Giza",
    "country_id": "country:40"
  },
  {
    "id": "city:292627",
    "name": "Newport",
    "country_id": "country:43"
  },
  {
    "id": "city:314",
    "name": "Cancún",
    "country_id": "country:50"
  },
  {
    "id": "city:475",
    "name": "Amman",
    "country_id": "country:76"
  },
  {
    "id": "city:98",
    "name": "Girona",
    "country_id": "country:13"
  },
  {
    "id": "city:2894",
    "name": "Potosí",
    "country_id": "country:198"
  },
  {
    "id": "city:858",
    "name": "Koblenz",
    "country_id": "country:18"
  },
  {
    "id": "city:9679",
    "name": "Aveiro",
    "country_id": "country:12"
  },
  {
    "id": "city:8368",
    "name": "Uji",
    "country_id": "country:75"
  },
  {
    "id": "city:3902",
    "name": "San Luis Obispo",
    "country_id": "country:43"
  },
  {
    "id": "city:1989",
    "name": "Caen",
    "country_id": "country:14"
  },
  {
    "id": "city:6537",
    "name": "Bamberg",
    "country_id": "country:18"
  },
  {
    "id": "city:402",
    "name": "Lille",
    "country_id": "country:14"
  },
  {
    "id": "city:2586",
    "name": "Matsumoto",
    "country_id": "country:75"
  },
  {
    "id": "city:154144",
    "name": "Rancho Palos Verdes",
    "country_id": "country:43"
  },
  {
    "id": "city:8277",
    "name": "Monza",
    "country_id": "country:20"
  },
  {
    "id": "city:1679938",
    "name": "Río Piedras",
    "country_id": "country:43"
  },
  {
    "id": "city:764087",
    "name": "Katsushika",
    "country_id": "country:75"
  },
  {
    "id": "city:2553",
    "name": "Kahului",
    "country_id": "country:43"
  },
  {
    "id": "city:6957",
    "name": "Luton",
    "country_id": "country:1"
  },
  {
    "id": "city:3647",
    "name": "Tarragona",
    "country_id": "country:13"
  },
  {
    "id": "city:73",
    "name": "Jerez",
    "country_id": "country:13"
  },
  {
    "id": "city:8956",
    "name": "Naucalpan de Juárez",
    "country_id": "country:50"
  },
  {
    "id": "city:859",
    "name": "Trier",
    "country_id": "country:18"
  },
  {
    "id": "city:762739",
    "name": "Kita",
    "country_id": "country:75"
  },
  {
    "id": "city:11210",
    "name": "Petra",
    "country_id": "country:76"
  },
  {
    "id": "city:195",
    "name": "Bremen",
    "country_id": "country:18"
  },
  {
    "id": "city:10433",
    "name": "Clearwater",
    "country_id": "country:43"
  },
  {
    "id": "city:3096",
    "name": "Udaipur",
    "country_id": "country:55"
  },
  {
    "id": "city:3718",
    "name": "Cabo San Lucas",
    "country_id": "country:50"
  },
  {
    "id": "city:2592",
    "name": "Hakodate",
    "country_id": "country:75"
  },
  {
    "id": "city:3502",
    "name": "Daytona Beach",
    "country_id": "country:43"
  },
  {
    "id": "city:166",
    "name": "Cagliari",
    "country_id": "country:20"
  },
  {
    "id": "city:10784",
    "name": "Berkeley",
    "country_id": "country:43"
  },
  {
    "id": "city:5531",
    "name": "Vaughan",
    "country_id": "country:49"
  },
  {
    "id": "city:8283",
    "name": "Matera",
    "country_id": "country:20"
  },
  {
    "id": "city:10894",
    "name": "South Gate",
    "country_id": "country:43"
  },
  {
    "id": "city:2603",
    "name": "Asahikawa",
    "country_id": "country:75"
  },
  {
    "id": "city:132153",
    "name": "Meguro",
    "country_id": "country:75"
  },
  {
    "id": "city:10979",
    "name": "Florence-Graham",
    "country_id": "country:43"
  },
  {
    "id": "city:6437",
    "name": "Regensburg",
    "country_id": "country:18"
  },
  {
    "id": "city:8584",
    "name": "Gotemba",
    "country_id": "country:75"
  },
  {
    "id": "city:7079",
    "name": "Keratsínion",
    "country_id": "country:33"
  },
  {
    "id": "city:8580",
    "name": "Hachiōji",
    "country_id": "country:75"
  },
  {
    "id": "city:7074",
    "name": "Níkaia",
    "country_id": "country:33"
  },
  {
    "id": "city:172",
    "name": "Hanover",
    "country_id": "country:18"
  },
  {
    "id": "city:7070",
    "name": "Piraeus",
    "country_id": "country:33"
  },
  {
    "id": "city:4230",
    "name": "Magaluf",
    "country_id": "country:13"
  },
  {
    "id": "city:150",
    "name": "Bonn",
    "country_id": "country:18"
  },
  {
    "id": "city:6462",
    "name": "Mainz",
    "country_id": "country:18"
  },
  {
    "id": "region:70693",
    "name": "Tijuana",
    "country_id": "country:50"
  },
  {
    "id": "city:1400683",
    "name": "Chaophraya Surasak",
    "country_id": "country:47"
  },
  {
    "id": "city:135",
    "name": "Santander",
    "country_id": "country:13"
  },
  {
    "id": "city:10933",
    "name": "Henderson",
    "country_id": "country:43"
  },
  {
    "id": "city:2994",
    "name": "Baku",
    "country_id": "country:228"
  },
  {
    "id": "city:390",
    "name": "Johannesburg",
    "country_id": "country:85"
  },
  {
    "id": "city:6990",
    "name": "Gloucester",
    "country_id": "country:1"
  },
  {
    "id": "city:1168",
    "name": "Antananarivo",
    "country_id": "country:125"
  },
  {
    "id": "city:11269",
    "name": "Rüdesheim",
    "country_id": "country:18"
  },
  {
    "id": "city:4191",
    "name": "Batumi",
    "country_id": "country:44"
  },
  {
    "id": "city:3389",
    "name": "Canberra",
    "country_id": "country:73"
  },
  {
    "id": "city:6812",
    "name": "Ávila",
    "country_id": "country:13"
  },
  {
    "id": "city:129",
    "name": "Durham",
    "country_id": "country:1"
  },
  {
    "id": "city:4931",
    "name": "Portland",
    "country_id": "country:43"
  },
  {
    "id": "city:2837",
    "name": "Arequipa",
    "country_id": "country:99"
  },
  {
    "id": "city:1181095",
    "name": "Chartres",
    "country_id": "country:14"
  },
  {
    "id": "city:2892",
    "name": "La Paz",
    "country_id": "country:198"
  },
  {
    "id": "city:151428",
    "name": "Kaneohe",
    "country_id": "country:43"
  },
  {
    "id": "city:483",
    "name": "Tangier",
    "country_id": "country:45"
  },
  {
    "id": "city:355",
    "name": "Parma",
    "country_id": "country:20"
  },
  {
    "id": "city:171",
    "name": "Poznań",
    "country_id": "country:21"
  },
  {
    "id": "city:2557",
    "name": "Hilo",
    "country_id": "country:43"
  },
  {
    "id": "city:3885",
    "name": "Charleston",
    "country_id": "country:43"
  },
  {
    "id": "city:305",
    "name": "Halifax",
    "country_id": "country:49"
  },
  {
    "id": "city:66",
    "name": "Blackpool",
    "country_id": "country:1"
  },
  {
    "id": "city:2144",
    "name": "Oaxaca",
    "country_id": "country:50"
  },
  {
    "id": "city:1717",
    "name": "Hollywood",
    "country_id": "country:43"
  },
  {
    "id": "city:1771",
    "name": "Minneapolis",
    "country_id": "country:43"
  },
  {
    "id": "city:10528",
    "name": "Camden",
    "country_id": "country:43"
  },
  {
    "id": "city:2051",
    "name": "Porto Santo",
    "country_id": "country:12"
  },
  {
    "id": "city:1850",
    "name": "San José",
    "country_id": "country:43"
  },
  {
    "id": "city:77",
    "name": "Leipzig",
    "country_id": "country:18"
  },
  {
    "id": "city:2552",
    "name": "Lahaina-Kapalua",
    "country_id": "country:43"
  },
  {
    "id": "city:8942",
    "name": "Santa Cruz Xoxocotlán",
    "country_id": "country:50"
  },
  {
    "id": "city:8544",
    "name": "Itami",
    "country_id": "country:75"
  },
  {
    "id": "city:207",
    "name": "Rijeka",
    "country_id": "country:27"
  },
  {
    "id": "city:405",
    "name": "Ajaccio",
    "country_id": "country:14"
  },
  {
    "id": "city:853",
    "name": "Augsburg",
    "country_id": "country:18"
  },
  {
    "id": "city:141",
    "name": "Leeds",
    "country_id": "country:1"
  },
  {
    "id": "city:10858",
    "name": "Pasadena",
    "country_id": "country:43"
  },
  {
    "id": "city:6387",
    "name": "Plzeň",
    "country_id": "country:5"
  },
  {
    "id": "city:3482",
    "name": "Surat Thani",
    "country_id": "country:47"
  },
  {
    "id": "city:1750",
    "name": "Sacramento",
    "country_id": "country:43"
  },
  {
    "id": "city:6724",
    "name": "San Cristóbal de La Laguna",
    "country_id": "country:13"
  },
  {
    "id": "region:13630",
    "name": "Valladolid",
    "country_id": "country:50"
  },
  {
    "id": "city:470",
    "name": "Sharjah",
    "country_id": "country:54"
  },
  {
    "id": "city:2593",
    "name": "Chitose",
    "country_id": "country:75"
  },
  {
    "id": "city:339",
    "name": "Nassau",
    "country_id": "country:64"
  },
  {
    "id": "city:5023",
    "name": "Ballarat",
    "country_id": "country:73"
  },
  {
    "id": "city:9423",
    "name": "Lapu-Lapu",
    "country_id": "country:94"
  },
  {
    "id": "city:588",
    "name": "Edmonton",
    "country_id": "country:49"
  },
  {
    "id": "city:168",
    "name": "Aachen",
    "country_id": "country:18"
  },
  {
    "id": "city:5604",
    "name": "Lo Prado",
    "country_id": "country:195"
  },
  {
    "id": "city:8396",
    "name": "Takayama",
    "country_id": "country:75"
  },
  {
    "id": "city:231",
    "name": "Las Palmas de Gran Canaria",
    "country_id": "country:13"
  },
  {
    "id": "city:9260",
    "name": "Leiden",
    "country_id": "country:16"
  },
  {
    "id": "city:456",
    "name": "A Coruña",
    "country_id": "country:13"
  },
  {
    "id": "city:6786",
    "name": "Oviedo",
    "country_id": "country:13"
  },
  {
    "id": "city:76",
    "name": "Eindhoven",
    "country_id": "country:16"
  },
  {
    "id": "city:1601",
    "name": "Buffalo",
    "country_id": "country:43"
  },
  {
    "id": "region:46028",
    "name": "Pyeongchang-gun",
    "country_id": "country:91"
  },
  {
    "id": "city:1560",
    "name": "Albuquerque",
    "country_id": "country:43"
  },
  {
    "id": "city:215",
    "name": "Antalya",
    "country_id": "country:34"
  },
  {
    "id": "city:1997",
    "name": "Dijon",
    "country_id": "country:14"
  },
  {
    "id": "city:195061",
    "name": "Mitchell",
    "country_id": "country:43"
  },
  {
    "id": "city:5491",
    "name": "Burnaby",
    "country_id": "country:49"
  },
  {
    "id": "city:957",
    "name": "Odense",
    "country_id": "country:8"
  },
  {
    "id": "city:8815",
    "name": "Hendala",
    "country_id": "country:52"
  },
  {
    "id": "city:771894",
    "name": "Hitachinaka",
    "country_id": "country:75"
  },
  {
    "id": "city:396",
    "name": "Pamplona",
    "country_id": "country:13"
  },
  {
    "id": "city:3334",
    "name": "Kota Kinabalu",
    "country_id": "country:97"
  },
  {
    "id": "city:387",
    "name": "Casablanca",
    "country_id": "country:45"
  },
  {
    "id": "city:386",
    "name": "Nairobi",
    "country_id": "country:62"
  },
  {
    "id": "city:262",
    "name": "Luxor",
    "country_id": "country:40"
  },
  {
    "id": "city:1752",
    "name": "Kansas City",
    "country_id": "country:43"
  },
  {
    "id": "city:7012",
    "name": "Chester",
    "country_id": "country:1"
  },
  {
    "id": "city:2659",
    "name": "Jeju",
    "country_id": "country:91"
  },
  {
    "id": "city:3439",
    "name": "Hangzhou",
    "country_id": "country:78"
  },
  {
    "id": "city:365",
    "name": "Phoenix",
    "country_id": "country:43"
  },
  {
    "id": "city:6825",
    "name": "Vantaa",
    "country_id": "country:7"
  },
  {
    "id": "city:3575",
    "name": "Nicosia",
    "country_id": "country:42"
  },
  {
    "id": "city:416",
    "name": "León",
    "country_id": "country:13"
  },
  {
    "id": "city:3536",
    "name": "Sioux Falls",
    "country_id": "country:43"
  },
  {
    "id": "city:11115",
    "name": "Soweto",
    "country_id": "country:85"
  },
  {
    "id": "city:6418",
    "name": "Ulm",
    "country_id": "country:18"
  },
  {
    "id": "city:4932",
    "name": "Andorra la Vella",
    "country_id": "country:242"
  },
  {
    "id": "city:9096",
    "name": "Kampung Bukit Baharu",
    "country_id": "country:97"
  },
  {
    "id": "city:2146",
    "name": "Puebla",
    "country_id": "country:50"
  },
  {
    "id": "city:6433",
    "name": "Köln Rodenkirchen",
    "country_id": "country:18"
  },
  {
    "id": "city:77966",
    "name": "Newcastle upon Tyne",
    "country_id": "country:1"
  },
  {
    "id": "city:198",
    "name": "Exeter",
    "country_id": "country:1"
  },
  {
    "id": "city:112",
    "name": "Newcastle",
    "country_id": "country:1"
  },
  {
    "id": "city:8515",
    "name": "Kawasaki",
    "country_id": "country:75"
  },
  {
    "id": "city:140240",
    "name": "Lahaina",
    "country_id": "country:43"
  },
  {
    "id": "city:9615",
    "name": "Toruń",
    "country_id": "country:21"
  },
  {
    "id": "city:9303",
    "name": "Manukau City",
    "country_id": "country:77"
  },
  {
    "id": "city:2750",
    "name": "Curitiba",
    "country_id": "country:67"
  },
  {
    "id": "city:6383",
    "name": "Limassol",
    "country_id": "country:42"
  },
  {
    "id": "city:8268",
    "name": "Ravenna",
    "country_id": "country:20"
  },
  {
    "id": "city:5444",
    "name": "Angra dos Reis",
    "country_id": "country:67"
  },
  {
    "id": "city:11180",
    "name": "Colonia del Sacramento",
    "country_id": "country:201"
  },
  {
    "id": "city:915",
    "name": "Carlisle",
    "country_id": "country:1"
  },
  {
    "id": "city:8270",
    "name": "Pozzuoli",
    "country_id": "country:20"
  },
  {
    "id": "city:177",
    "name": "Beirut",
    "country_id": "country:39"
  },
  {
    "id": "city:5580",
    "name": "Valparaíso",
    "country_id": "country:195"
  },
  {
    "id": "city:4292",
    "name": "Cody",
    "country_id": "country:43"
  },
  {
    "id": "city:160",
    "name": "Grenoble",
    "country_id": "country:14"
  },
  {
    "id": "city:301",
    "name": "Anchorage",
    "country_id": "country:43"
  },
  {
    "id": "city:559870",
    "name": "Date",
    "country_id": "country:75"
  },
  {
    "id": "city:6884",
    "name": "Amiens",
    "country_id": "country:14"
  },
  {
    "id": "region:15438",
    "name": "Pozzuoli",
    "country_id": "country:20"
  },
  {
    "id": "city:8335",
    "name": "Afragola",
    "country_id": "country:20"
  },
  {
    "id": "city:8921",
    "name": "Port-Louis",
    "country_id": "country:90"
  },
  {
    "id": "city:4755",
    "name": "St. George",
    "country_id": "country:43"
  },
  {
    "id": "city:652",
    "name": "Windsor",
    "country_id": "country:49"
  },
  {
    "id": "city:8962",
    "name": "Magdalena Contreras",
    "country_id": "country:50"
  },
  {
    "id": "city:8931",
    "name": "Tlalpan",
    "country_id": "country:50"
  },
  {
    "id": "city:493",
    "name": "Detroit",
    "country_id": "country:43"
  },
  {
    "id": "city:1909",
    "name": "Juneau",
    "country_id": "country:43"
  },
  {
    "id": "city:5301",
    "name": "Niterói",
    "country_id": "country:67"
  },
  {
    "id": "city:10313",
    "name": "Keelung",
    "country_id": "country:194"
  },
  {
    "id": "city:150312",
    "name": "Waipahu",
    "country_id": "country:43"
  },
  {
    "id": "city:10127",
    "name": "Samut Prakan",
    "country_id": "country:47"
  },
  {
    "id": "region:18829",
    "name": "Mantua",
    "country_id": "country:20"
  },
  {
    "id": "city:83",
    "name": "Bournemouth",
    "country_id": "country:1"
  },
  {
    "id": "city:10775",
    "name": "Tempe Junction",
    "country_id": "country:43"
  },
  {
    "id": "city:1673",
    "name": "Fort Worth",
    "country_id": "country:43"
  },
  {
    "id": "city:92",
    "name": "Karlsruhe",
    "country_id": "country:18"
  },
  {
    "id": "city:78559",
    "name": "Bangor",
    "country_id": "country:1"
  },
  {
    "id": "city:9281",
    "name": "Arnhem",
    "country_id": "country:16"
  },
  {
    "id": "city:2029",
    "name": "Vicenza",
    "country_id": "country:20"
  },
  {
    "id": "region:23509",
    "name": "Muğla",
    "country_id": "country:34"
  },
  {
    "id": "city:437",
    "name": "Perugia",
    "country_id": "country:20"
  },
  {
    "id": "city:3212",
    "name": "Nhatrang",
    "country_id": "country:83"
  },
  {
    "id": "city:10888",
    "name": "Santa Clara",
    "country_id": "country:43"
  },
  {
    "id": "city:3144",
    "name": "Bengaluru",
    "country_id": "country:55"
  },
  {
    "id": "city:1979",
    "name": "Le Havre",
    "country_id": "country:14"
  },
  {
    "id": "city:290",
    "name": "Angers",
    "country_id": "country:14"
  },
  {
    "id": "city:1852",
    "name": "Sandusky",
    "country_id": "country:43"
  },
  {
    "id": "city:346",
    "name": "Salvador",
    "country_id": "country:67"
  },
  {
    "id": "city:10553",
    "name": "Arlington",
    "country_id": "country:43"
  },
  {
    "id": "city:4311",
    "name": "Nha Trang",
    "country_id": "country:83"
  },
  {
    "id": "city:93",
    "name": "Baden-Baden",
    "country_id": "country:18"
  },
  {
    "id": "city:333",
    "name": "Liège",
    "country_id": "country:15"
  },
  {
    "id": "city:8314",
    "name": "Caserta",
    "country_id": "country:20"
  },
  {
    "id": "city:343",
    "name": "Rostock",
    "country_id": "country:18"
  },
  {
    "id": "city:599",
    "name": "Kingston",
    "country_id": "country:49"
  },
  {
    "id": "city:3886",
    "name": "Mandaue",
    "country_id": "country:94"
  },
  {
    "id": "city:2123",
    "name": "Guadalajara",
    "country_id": "country:50"
  },
  {
    "id": "city:8990",
    "name": "Azcapotzalco",
    "country_id": "country:50"
  },
  {
    "id": "city:1843",
    "name": "Santa Fe",
    "country_id": "country:43"
  },
  {
    "id": "city:688537",
    "name": "Ibaraki",
    "country_id": "country:75"
  },
  {
    "id": "city:151962",
    "name": "Kailua-Kona",
    "country_id": "country:43"
  },
  {
    "id": "city:2619",
    "name": "Nagoya",
    "country_id": "country:75"
  },
  {
    "id": "city:2971",
    "name": "Ponce",
    "country_id": "country:43"
  },
  {
    "id": "city:1790",
    "name": "Miramar",
    "country_id": "country:43"
  },
  {
    "id": "city:2237",
    "name": "Nadi",
    "country_id": "country:162"
  },
  {
    "id": "city:935",
    "name": "Northolt",
    "country_id": "country:1"
  },
  {
    "id": "city:8251",
    "name": "Treviso",
    "country_id": "country:20"
  },
  {
    "id": "city:505",
    "name": "Rabat",
    "country_id": "country:45"
  },
  {
    "id": "city:11207",
    "name": "San Pedro de Atacama",
    "country_id": "country:195"
  },
  {
    "id": "city:2506",
    "name": "Medellín",
    "country_id": "country:98"
  },
  {
    "id": "city:1029",
    "name": "Durban",
    "country_id": "country:85"
  },
  {
    "id": "city:8852",
    "name": "Salé",
    "country_id": "country:45"
  },
  {
    "id": "city:3473",
    "name": "Martha's Vineyard",
    "country_id": "country:43"
  },
  {
    "id": "city:5015",
    "name": "Villach",
    "country_id": "country:23"
  },
  {
    "id": "region:22401",
    "name": "Makati",
    "country_id": "country:94"
  },
  {
    "id": "city:10041",
    "name": "Uppsala",
    "country_id": "country:6"
  },
  {
    "id": "city:2012859",
    "name": "Wells",
    "country_id": "country:1"
  },
  {
    "id": "city:233953",
    "name": "Columbus",
    "country_id": "country:43"
  },
  {
    "id": "city:3102",
    "name": "Kolkata",
    "country_id": "country:55"
  },
  {
    "id": "city:1436",
    "name": "Addis Ababa",
    "country_id": "country:142"
  },
  {
    "id": "city:9084",
    "name": "Perai",
    "country_id": "country:97"
  },
  {
    "id": "city:394",
    "name": "Haifa",
    "country_id": "country:71"
  },
  {
    "id": "city:2452",
    "name": "Aqaba",
    "country_id": "country:76"
  },
  {
    "id": "city:103",
    "name": "Triest",
    "country_id": "country:20"
  },
  {
    "id": "city:1276",
    "name": "Praslin",
    "country_id": "country:80"
  },
  {
    "id": "city:8733",
    "name": "Gyeongju",
    "country_id": "country:91"
  },
  {
    "id": "city:6734",
    "name": "Mérida",
    "country_id": "country:13"
  },
  {
    "id": "city:1620",
    "name": "Columbus",
    "country_id": "country:43"
  },
  {
    "id": "city:1760",
    "name": "Milwaukee",
    "country_id": "country:43"
  },
  {
    "id": "city:1608",
    "name": "Colombus",
    "country_id": "country:43"
  },
  {
    "id": "city:27",
    "name": "Sarajevo",
    "country_id": "country:28"
  },
  {
    "id": "city:1587",
    "name": "Mobile",
    "country_id": "country:43"
  },
  {
    "id": "city:1836",
    "name": "Richmond",
    "country_id": "country:43"
  },
  {
    "id": "city:3413",
    "name": "Guangzhou / Canton",
    "country_id": "country:78"
  },
  {
    "id": "city:10460",
    "name": "Pine Hills",
    "country_id": "country:43"
  },
  {
    "id": "city:1830",
    "name": "Providence",
    "country_id": "country:43"
  },
  {
    "id": "city:8278",
    "name": "Moncalieri",
    "country_id": "country:20"
  },
  {
    "id": "city:10776",
    "name": "Alameda",
    "country_id": "country:43"
  },
  {
    "id": "city:1840",
    "name": "Reno",
    "country_id": "country:43"
  },
  {
    "id": "city:120",
    "name": "Klagenfurt",
    "country_id": "country:23"
  },
  {
    "id": "region:52904",
    "name": "Guangzhou City",
    "country_id": "country:78"
  },
  {
    "id": "city:8825",
    "name": "Jūrmala",
    "country_id": "country:10"
  },
  {
    "id": "city:4498",
    "name": "Nyaung-U",
    "country_id": "country:222"
  },
  {
    "id": "city:2523",
    "name": "Santa Marta",
    "country_id": "country:98"
  },
  {
    "id": "city:1819",
    "name": "Saint Petersburg",
    "country_id": "country:43"
  },
  {
    "id": "city:2194",
    "name": "Cienfuegos",
    "country_id": "country:51"
  },
  {
    "id": "city:7322",
    "name": "Teluknaga",
    "country_id": "country:93"
  },
  {
    "id": "city:10908",
    "name": "Vallejo",
    "country_id": "country:43"
  },
  {
    "id": "city:10772",
    "name": "Scottsdale",
    "country_id": "country:43"
  },
  {
    "id": "city:9036",
    "name": "Guanajuato",
    "country_id": "country:50"
  },
  {
    "id": "city:10128",
    "name": "Phra Pradaeng",
    "country_id": "country:47"
  },
  {
    "id": "city:1768",
    "name": "Montpelier",
    "country_id": "country:43"
  },
  {
    "id": "city:1867",
    "name": "Tacoma",
    "country_id": "country:43"
  },
  {
    "id": "city:6873",
    "name": "Boulogne-Billancourt",
    "country_id": "country:14"
  },
  {
    "id": "city:2615",
    "name": "Nagasaki",
    "country_id": "country:75"
  },
  {
    "id": "city:1745",
    "name": "Louisville",
    "country_id": "country:43"
  },
  {
    "id": "city:459",
    "name": "Kristiansand",
    "country_id": "country:4"
  },
  {
    "id": "city:8248",
    "name": "Viareggio",
    "country_id": "country:20"
  },
  {
    "id": "city:425031",
    "name": "Famagusta",
    "country_id": "country:42"
  },
  {
    "id": "city:1854",
    "name": "Santa Ana",
    "country_id": "country:43"
  },
  {
    "id": "city:9650",
    "name": "Gdynia",
    "country_id": "country:21"
  },
  {
    "id": "city:50",
    "name": "Košice",
    "country_id": "country:25"
  },
  {
    "id": "city:5578",
    "name": "Viña del Mar",
    "country_id": "country:195"
  },
  {
    "id": "city:2128",
    "name": "Isla Mujeres",
    "country_id": "country:50"
  },
  {
    "id": "city:965",
    "name": "Andoya",
    "country_id": "country:4"
  },
  {
    "id": "city:3186",
    "name": "Kathmandu",
    "country_id": "country:219"
  },
  {
    "id": "city:10048",
    "name": "Kista",
    "country_id": "country:6"
  },
  {
    "id": "city:133414",
    "name": "Squamish",
    "country_id": "country:49"
  },
  {
    "id": "city:502377",
    "name": "Glyfada",
    "country_id": "country:33"
  },
  {
    "id": "region:22394",
    "name": "Ventspils",
    "country_id": "country:10"
  },
  {
    "id": "city:9879",
    "name": "Khimki",
    "country_id": "country:37"
  },
  {
    "id": "city:5096",
    "name": "Leuven",
    "country_id": "country:15"
  },
  {
    "id": "city:4351",
    "name": "Dalat",
    "country_id": "country:83"
  },
  {
    "id": "city:1537",
    "name": "Arusha",
    "country_id": "country:59"
  },
  {
    "id": "city:5627",
    "name": "Suzhou",
    "country_id": "country:78"
  },
  {
    "id": "city:466",
    "name": "Lübeck",
    "country_id": "country:18"
  },
  {
    "id": "city:9308",
    "name": "Waitakere",
    "country_id": "country:77"
  },
  {
    "id": "city:6963",
    "name": "Lincoln",
    "country_id": "country:1"
  },
  {
    "id": "city:788",
    "name": "Accra",
    "country_id": "country:105"
  },
  {
    "id": "city:8332",
    "name": "Andria",
    "country_id": "country:20"
  },
  {
    "id": "city:403",
    "name": "Metz",
    "country_id": "country:14"
  },
  {
    "id": "city:9654",
    "name": "Częstochowa",
    "country_id": "country:21"
  },
  {
    "id": "city:1780",
    "name": "Myrtle Beach",
    "country_id": "country:43"
  },
  {
    "id": "city:190",
    "name": "Turku",
    "country_id": "country:7"
  },
  {
    "id": "city:2952",
    "name": "St. Martin",
    "country_id": "country:246"
  },
  {
    "id": "city:9661",
    "name": "Caguas",
    "country_id": "country:43"
  },
  {
    "id": "city:8246",
    "name": "Viterbo",
    "country_id": "country:20"
  },
  {
    "id": "city:1809",
    "name": "Oklahoma City",
    "country_id": "country:43"
  },
  {
    "id": "city:762695",
    "name": "Awaji",
    "country_id": "country:75"
  },
  {
    "id": "city:10822",
    "name": "Garden Grove",
    "country_id": "country:43"
  },
  {
    "id": "city:467",
    "name": "Maribor",
    "country_id": "country:24"
  },
  {
    "id": "city:458",
    "name": "Cluj-Napoca",
    "country_id": "country:31"
  },
  {
    "id": "city:247",
    "name": "Helsingborg",
    "country_id": "country:6"
  },
  {
    "id": "city:159",
    "name": "Dortmund",
    "country_id": "country:18"
  },
  {
    "id": "city:497",
    "name": "Essaouira",
    "country_id": "country:45"
  },
  {
    "id": "city:11227",
    "name": "Flachau-Wagrain-Alpendorf",
    "country_id": "country:23"
  },
  {
    "id": "city:1833",
    "name": "Rapid City",
    "country_id": "country:43"
  },
  {
    "id": "city:9282",
    "name": "Apeldoorn",
    "country_id": "country:16"
  },
  {
    "id": "city:1911",
    "name": "Ketchikan",
    "country_id": "country:43"
  },
  {
    "id": "city:906",
    "name": "Swansea",
    "country_id": "country:1"
  },
  {
    "id": "city:1018",
    "name": "Örebro",
    "country_id": "country:6"
  },
  {
    "id": "city:6938",
    "name": "Portsmouth",
    "country_id": "country:1"
  },
  {
    "id": "city:6754",
    "name": "Cáceres",
    "country_id": "country:13"
  },
  {
    "id": "city:10454",
    "name": "North Miami",
    "country_id": "country:43"
  },
  {
    "id": "city:1937",
    "name": "Plovdiv",
    "country_id": "country:32"
  },
  {
    "id": "city:6751",
    "name": "Cartagena",
    "country_id": "country:13"
  },
  {
    "id": "city:1167074",
    "name": "Gilroy",
    "country_id": "country:43"
  },
  {
    "id": "city:2118",
    "name": "San Miguel de Cozumel",
    "country_id": "country:50"
  },
  {
    "id": "city:10453",
    "name": "Miramar",
    "country_id": "country:43"
  },
  {
    "id": "city:10937",
    "name": "Spring Valley",
    "country_id": "country:43"
  },
  {
    "id": "city:6950",
    "name": "Milton Keynes",
    "country_id": "country:1"
  },
  {
    "id": "city:10132",
    "name": "Pak Kret",
    "country_id": "country:47"
  },
  {
    "id": "city:8319",
    "name": "Brescia",
    "country_id": "country:20"
  },
  {
    "id": "city:6427",
    "name": "Schwerin",
    "country_id": "country:18"
  },
  {
    "id": "city:8408",
    "name": "Suita",
    "country_id": "country:75"
  },
  {
    "id": "city:287",
    "name": "Nantes",
    "country_id": "country:14"
  },
  {
    "id": "city:229",
    "name": "Kos",
    "country_id": "country:33"
  },
  {
    "id": "city:1644",
    "name": "Durango",
    "country_id": "country:43"
  },
  {
    "id": "city:6389",
    "name": "Olomouc",
    "country_id": "country:5"
  },
  {
    "id": "city:5028",
    "name": "Adelaide Hills",
    "country_id": "country:73"
  },
  {
    "id": "city:7956",
    "name": "Borivli",
    "country_id": "country:55"
  },
  {
    "id": "city:86076",
    "name": "Lancaster",
    "country_id": "country:1"
  },
  {
    "id": "city:10451",
    "name": "Margate",
    "country_id": "country:43"
  },
  {
    "id": "city:6512",
    "name": "Esslingen",
    "country_id": "country:18"
  },
  {
    "id": "city:7817",
    "name": "Howrah",
    "country_id": "country:55"
  },
  {
    "id": "city:953",
    "name": "Inishmore",
    "country_id": "country:2"
  },
  {
    "id": "city:2693",
    "name": "Mendoza",
    "country_id": "country:74"
  },
  {
    "id": "city:723",
    "name": "St John's",
    "country_id": "country:49"
  },
  {
    "id": "city:237",
    "name": "Plymouth",
    "country_id": "country:1"
  },
  {
    "id": "city:772825",
    "name": "Shiroishi",
    "country_id": "country:75"
  },
  {
    "id": "city:487",
    "name": "Puerto Vallarta",
    "country_id": "country:50"
  },
  {
    "id": "city:9250",
    "name": "'s-Hertogenbosch",
    "country_id": "country:16"
  },
  {
    "id": "city:4524",
    "name": "Kutaisi",
    "country_id": "country:44"
  },
  {
    "id": "city:10434",
    "name": "Coconut Creek",
    "country_id": "country:43"
  },
  {
    "id": "city:1807",
    "name": "Omaha",
    "country_id": "country:43"
  },
  {
    "id": "city:2765",
    "name": "Manaus",
    "country_id": "country:67"
  },
  {
    "id": "city:5360",
    "name": "Guarulhos",
    "country_id": "country:67"
  },
  {
    "id": "city:9015",
    "name": "San Miguel de Allende",
    "country_id": "country:50"
  },
  {
    "id": "city:4929",
    "name": "Corralejo",
    "country_id": "country:13"
  },
  {
    "id": "city:10445",
    "name": "Kendall",
    "country_id": "country:43"
  },
  {
    "id": "city:2198",
    "name": "Santiago de Cuba",
    "country_id": "country:51"
  },
  {
    "id": "city:6404",
    "name": "Worms",
    "country_id": "country:18"
  },
  {
    "id": "city:352",
    "name": "Groningen",
    "country_id": "country:16"
  },
  {
    "id": "city:1805255",
    "name": "St David's",
    "country_id": "country:1"
  },
  {
    "id": "city:6338",
    "name": "Envigado",
    "country_id": "country:98"
  },
  {
    "id": "city:9259",
    "name": "Lelystad",
    "country_id": "country:16"
  },
  {
    "id": "city:7073",
    "name": "Palaió Fáliro",
    "country_id": "country:33"
  },
  {
    "id": "city:8566",
    "name": "Hino",
    "country_id": "country:75"
  },
  {
    "id": "city:6793",
    "name": "Lugo",
    "country_id": "country:13"
  },
  {
    "id": "city:451",
    "name": "Zanzibar City",
    "country_id": "country:59"
  },
  {
    "id": "city:10300",
    "name": "Karabağlar",
    "country_id": "country:34"
  },
  {
    "id": "city:6554",
    "name": "La Romana",
    "country_id": "country:60"
  },
  {
    "id": "city:6400",
    "name": "České Budějovice",
    "country_id": "country:5"
  },
  {
    "id": "city:6329",
    "name": "Itagüí",
    "country_id": "country:98"
  },
  {
    "id": "city:401",
    "name": "Jacksonville",
    "country_id": "country:43"
  },
  {
    "id": "city:2204",
    "name": "Santa Clara",
    "country_id": "country:51"
  },
  {
    "id": "city:4276",
    "name": "Çanakkale",
    "country_id": "country:34"
  },
  {
    "id": "city:86727",
    "name": "Ripon",
    "country_id": "country:1"
  },
  {
    "id": "region:71828",
    "name": "Liberia",
    "country_id": "country:68"
  },
  {
    "id": "city:8603",
    "name": "Chofu",
    "country_id": "country:75"
  },
  {
    "id": "city:3789",
    "name": "Springfield",
    "country_id": "country:43"
  },
  {
    "id": "city:3808",
    "name": "Ingolstadt",
    "country_id": "country:18"
  },
  {
    "id": "city:282131",
    "name": "Raleigh",
    "country_id": "country:43"
  },
  {
    "id": "city:156055",
    "name": "Fairfield",
    "country_id": "country:43"
  },
  {
    "id": "city:279",
    "name": "Erfurt",
    "country_id": "country:18"
  },
  {
    "id": "city:1835",
    "name": "Raleigh-Durham",
    "country_id": "country:43"
  },
  {
    "id": "city:10878",
    "name": "San Bernardino",
    "country_id": "country:43"
  },
  {
    "id": "city:8378",
    "name": "Toyonaka",
    "country_id": "country:75"
  },
  {
    "id": "city:2673",
    "name": "Baguio",
    "country_id": "country:94"
  },
  {
    "id": "city:10909",
    "name": "Ventura",
    "country_id": "country:43"
  },
  {
    "id": "city:559",
    "name": "Winnipeg",
    "country_id": "country:49"
  },
  {
    "id": "city:3423",
    "name": "Shenzhen",
    "country_id": "country:78"
  },
  {
    "id": "city:9600",
    "name": "Lublin",
    "country_id": "country:21"
  },
  {
    "id": "city:8435",
    "name": "Otsu",
    "country_id": "country:75"
  },
  {
    "id": "city:3376",
    "name": "Launceston",
    "country_id": "country:73"
  },
  {
    "id": "city:302",
    "name": "Constanța",
    "country_id": "country:31"
  },
  {
    "id": "city:295",
    "name": "Ostrava",
    "country_id": "country:5"
  },
  {
    "id": "city:4655",
    "name": "Lake Manyara",
    "country_id": "country:59"
  },
  {
    "id": "city:1696",
    "name": "Hartford",
    "country_id": "country:43"
  },
  {
    "id": "city:486",
    "name": "Tunis",
    "country_id": "country:46"
  },
  {
    "id": "city:4911",
    "name": "Galle",
    "country_id": "country:52"
  },
  {
    "id": "city:6720",
    "name": "San Vicent del Raspeig",
    "country_id": "country:13"
  },
  {
    "id": "city:304",
    "name": "Fort Myers",
    "country_id": "country:43"
  },
  {
    "id": "city:6806",
    "name": "Cuenca",
    "country_id": "country:13"
  },
  {
    "id": "city:1120663",
    "name": "Ely",
    "country_id": "country:1"
  },
  {
    "id": "city:2751",
    "name": "Brasília",
    "country_id": "country:67"
  },
  {
    "id": "city:7071",
    "name": "Petroupoli",
    "country_id": "country:33"
  },
  {
    "id": "city:8430",
    "name": "Sakai",
    "country_id": "country:75"
  },
  {
    "id": "city:316",
    "name": "Bridgetown",
    "country_id": "country:48"
  },
  {
    "id": "city:1629",
    "name": "Cincinnati",
    "country_id": "country:43"
  },
  {
    "id": "city:1811",
    "name": "Ontario",
    "country_id": "country:43"
  },
  {
    "id": "city:860",
    "name": "Speyer",
    "country_id": "country:18"
  },
  {
    "id": "city:398",
    "name": "Bolzano - Bozen",
    "country_id": "country:20"
  },
  {
    "id": "city:675974",
    "name": "Falun",
    "country_id": "country:6"
  },
  {
    "id": "city:6926",
    "name": "St Albans",
    "country_id": "country:1"
  },
  {
    "id": "city:358704",
    "name": "Huayin",
    "country_id": "country:78"
  },
  {
    "id": "city:10496",
    "name": "Metairie",
    "country_id": "country:43"
  },
  {
    "id": "city:1600",
    "name": "Burlington",
    "country_id": "country:43"
  },
  {
    "id": "city:3390",
    "name": "Coffs Harbour",
    "country_id": "country:73"
  },
  {
    "id": "city:284",
    "name": "Łódź",
    "country_id": "country:21"
  },
  {
    "id": "city:273",
    "name": "Toulon",
    "country_id": "country:14"
  },
  {
    "id": "city:10774",
    "name": "Tempe",
    "country_id": "country:43"
  },
  {
    "id": "city:8540",
    "name": "Iwakuni",
    "country_id": "country:75"
  },
  {
    "id": "city:2539",
    "name": "Doha",
    "country_id": "country:180"
  },
  {
    "id": "city:9072",
    "name": "Putatan",
    "country_id": "country:97"
  },
  {
    "id": "city:6381",
    "name": "Artemisa",
    "country_id": "country:51"
  },
  {
    "id": "city:1803",
    "name": "Twenty Nine Palms",
    "country_id": "country:43"
  },
  {
    "id": "city:37",
    "name": "Skopje",
    "country_id": "country:38"
  },
  {
    "id": "city:498",
    "name": "Recife",
    "country_id": "country:67"
  },
  {
    "id": "city:8299",
    "name": "Ferrara",
    "country_id": "country:20"
  },
  {
    "id": "city:9094",
    "name": "Kampung Sungai Ara",
    "country_id": "country:97"
  },
  {
    "id": "city:2230",
    "name": "Belize City",
    "country_id": "country:160"
  },
  {
    "id": "city:87251",
    "name": "Chichester",
    "country_id": "country:1"
  },
  {
    "id": "city:2220",
    "name": "North Eleuthera",
    "country_id": "country:64"
  },
  {
    "id": "city:2152",
    "name": "Querétaro",
    "country_id": "country:50"
  },
  {
    "id": "city:10756",
    "name": "Oshkosh",
    "country_id": "country:43"
  },
  {
    "id": "city:306799",
    "name": "Vigan",
    "country_id": "country:94"
  },
  {
    "id": "city:10875",
    "name": "Rosemead",
    "country_id": "country:43"
  },
  {
    "id": "city:312468",
    "name": "Haŋa Roa",
    "country_id": "country:195"
  },
  {
    "id": "city:10625",
    "name": "Hoffman Estates",
    "country_id": "country:43"
  },
  {
    "id": "city:2575",
    "name": "Kaohsiung",
    "country_id": "country:194"
  },
  {
    "id": "city:2860",
    "name": "Easter Island",
    "country_id": "country:195"
  },
  {
    "id": "city:11252",
    "name": "Grand Massif",
    "country_id": "country:14"
  },
  {
    "id": "city:1485",
    "name": "Alexandria",
    "country_id": "country:40"
  },
  {
    "id": "city:452",
    "name": "Santo Domingo",
    "country_id": "country:60"
  },
  {
    "id": "city:2803",
    "name": "Iguassu Falls",
    "country_id": "country:67"
  },
  {
    "id": "city:86854",
    "name": "Truro",
    "country_id": "country:1"
  },
  {
    "id": "city:10524",
    "name": "Durham",
    "country_id": "country:43"
  },
  {
    "id": "city:8413",
    "name": "Shinagawa",
    "country_id": "country:75"
  },
  {
    "id": "region:23211",
    "name": "Taguig",
    "country_id": "country:94"
  },
  {
    "id": "city:3368",
    "name": "Townsville",
    "country_id": "country:73"
  },
  {
    "id": "city:5021",
    "name": "Wollongong",
    "country_id": "country:73"
  },
  {
    "id": "city:1963",
    "name": "Clermont-Ferrand",
    "country_id": "country:14"
  },
  {
    "id": "city:2770",
    "name": "Fortaleza",
    "country_id": "country:67"
  },
  {
    "id": "city:1723",
    "name": "Indianapolis",
    "country_id": "country:43"
  },
  {
    "id": "city:6391",
    "name": "Liberec",
    "country_id": "country:5"
  },
  {
    "id": "city:10949",
    "name": "Bend",
    "country_id": "country:43"
  },
  {
    "id": "city:1063",
    "name": "Pretoria",
    "country_id": "country:85"
  },
  {
    "id": "city:5138",
    "name": "Bandar Seri Begawan",
    "country_id": "country:223"
  },
  {
    "id": "city:2767",
    "name": "Foz do Iguaçu",
    "country_id": "country:67"
  },
  {
    "id": "city:2052",
    "name": "Mostar",
    "country_id": "country:28"
  },
  {
    "id": "city:2045",
    "name": "Horta",
    "country_id": "country:12"
  },
  {
    "id": "city:461",
    "name": "Nancy",
    "country_id": "country:14"
  },
  {
    "id": "city:2114",
    "name": "Campeche",
    "country_id": "country:50"
  },
  {
    "id": "city:256",
    "name": "Patras",
    "country_id": "country:33"
  },
  {
    "id": "city:86827",
    "name": "San Gabriel",
    "country_id": "country:43"
  },
  {
    "id": "city:223",
    "name": "Elba",
    "country_id": "country:20"
  },
  {
    "id": "city:9321",
    "name": "Tocumen",
    "country_id": "country:156"
  },
  {
    "id": "city:3370",
    "name": "Darwin",
    "country_id": "country:73"
  },
  {
    "id": "city:2141",
    "name": "Mazatlán",
    "country_id": "country:50"
  },
  {
    "id": "city:3538",
    "name": "Springfield",
    "country_id": "country:43"
  },
  {
    "id": "city:10468",
    "name": "Sarasota",
    "country_id": "country:43"
  },
  {
    "id": "city:2071",
    "name": "Bursa",
    "country_id": "country:34"
  },
  {
    "id": "city:2654",
    "name": "Gwangju",
    "country_id": "country:91"
  },
  {
    "id": "city:328",
    "name": "Goa",
    "country_id": "country:55"
  },
  {
    "id": "city:7745",
    "name": "Kāmārhāti",
    "country_id": "country:55"
  },
  {
    "id": "city:10648",
    "name": "Fall River",
    "country_id": "country:43"
  },
  {
    "id": "city:10055",
    "name": "Trenčín",
    "country_id": "country:25"
  },
  {
    "id": "city:8919",
    "name": "Vacoas-Phoenix",
    "country_id": "country:90"
  },
  {
    "id": "city:2768",
    "name": "Florianópolis",
    "country_id": "country:67"
  },
  {
    "id": "city:9230",
    "name": "Masaya",
    "country_id": "country:155"
  },
  {
    "id": "city:8330",
    "name": "Arezzo",
    "country_id": "country:20"
  },
  {
    "id": "city:88655",
    "name": "St Asaph",
    "country_id": "country:1"
  },
  {
    "id": "city:10236",
    "name": "Bergama",
    "country_id": "country:34"
  },
  {
    "id": "city:9613",
    "name": "Wałbrzych",
    "country_id": "country:21"
  },
  {
    "id": "city:8333",
    "name": "Altamura",
    "country_id": "country:20"
  },
  {
    "id": "city:10721",
    "name": "Trenton",
    "country_id": "country:43"
  },
  {
    "id": "city:6964",
    "name": "Leicester",
    "country_id": "country:1"
  },
  {
    "id": "city:8288",
    "name": "Livorno",
    "country_id": "country:20"
  },
  {
    "id": "city:8816",
    "name": "Galkissa",
    "country_id": "country:52"
  },
  {
    "id": "city:1879",
    "name": "Victorville",
    "country_id": "country:43"
  },
  {
    "id": "city:450",
    "name": "Mahe",
    "country_id": "country:80"
  },
  {
    "id": "city:7057",
    "name": "Cape Coast",
    "country_id": "country:105"
  },
  {
    "id": "city:1008",
    "name": "Kalmar",
    "country_id": "country:6"
  },
  {
    "id": "city:2580",
    "name": "Tainan",
    "country_id": "country:194"
  },
  {
    "id": "city:432",
    "name": "Mytilene",
    "country_id": "country:33"
  },
  {
    "id": "city:2571",
    "name": "Chimei",
    "country_id": "country:194"
  },
  {
    "id": "city:1641",
    "name": "Dover",
    "country_id": "country:43"
  },
  {
    "id": "city:1627",
    "name": "Corpus Christi",
    "country_id": "country:43"
  },
  {
    "id": "city:299",
    "name": "Varna",
    "country_id": "country:32"
  },
  {
    "id": "city:1153927",
    "name": "Panjim",
    "country_id": "country:55"
  },
  {
    "id": "city:7295",
    "name": "Bogor",
    "country_id": "country:93"
  },
  {
    "id": "city:1872",
    "name": "Trenton",
    "country_id": "country:43"
  },
  {
    "id": "city:6781",
    "name": "Pontevedra",
    "country_id": "country:13"
  },
  {
    "id": "city:10295",
    "name": "Çankaya",
    "country_id": "country:34"
  },
  {
    "id": "city:64",
    "name": "Tampere",
    "country_id": "country:7"
  },
  {
    "id": "city:218",
    "name": "Bodø",
    "country_id": "country:4"
  },
  {
    "id": "city:33",
    "name": "Ankara",
    "country_id": "country:34"
  },
  {
    "id": "city:697256",
    "name": "Tokoname",
    "country_id": "country:75"
  },
  {
    "id": "city:488",
    "name": "Rygge",
    "country_id": "country:4"
  },
  {
    "id": "city:6549",
    "name": "San Pedro de Macorís",
    "country_id": "country:60"
  },
  {
    "id": "city:334",
    "name": "Malé",
    "country_id": "country:61"
  },
  {
    "id": "city:2166",
    "name": "Zacatecas",
    "country_id": "country:50"
  },
  {
    "id": "city:10240",
    "name": "Alanya",
    "country_id": "country:34"
  },
  {
    "id": "city:6384",
    "name": "Zlín",
    "country_id": "country:5"
  },
  {
    "id": "city:2047",
    "name": "Ponta Delgada",
    "country_id": "country:12"
  },
  {
    "id": "city:7323",
    "name": "Gamping Lor",
    "country_id": "country:93"
  },
  {
    "id": "city:9793",
    "name": "Sergiyev Posad",
    "country_id": "country:37"
  },
  {
    "id": "city:3125",
    "name": "Varanasi",
    "country_id": "country:55"
  },
  {
    "id": "city:1910898",
    "name": "Chía",
    "country_id": "country:98"
  },
  {
    "id": "city:10462",
    "name": "Pompano Beach",
    "country_id": "country:43"
  },
  {
    "id": "city:10790",
    "name": "Carson",
    "country_id": "country:43"
  },
  {
    "id": "city:10238",
    "name": "Aydın",
    "country_id": "country:34"
  },
  {
    "id": "city:8399",
    "name": "Takarazuka",
    "country_id": "country:75"
  },
  {
    "id": "city:8808",
    "name": "Matara",
    "country_id": "country:52"
  },
  {
    "id": "city:1842",
    "name": "Roswell",
    "country_id": "country:43"
  },
  {
    "id": "city:10624",
    "name": "Evanston",
    "country_id": "country:43"
  },
  {
    "id": "city:2008",
    "name": "Ioannina",
    "country_id": "country:33"
  },
  {
    "id": "city:10207",
    "name": "Manavgat",
    "country_id": "country:34"
  },
  {
    "id": "city:10940",
    "name": "Boulder",
    "country_id": "country:43"
  },
  {
    "id": "city:1442",
    "name": "Bahir Dar",
    "country_id": "country:142"
  },
  {
    "id": "city:3279",
    "name": "Yogyakarta",
    "country_id": "country:93"
  },
  {
    "id": "city:6344",
    "name": "Chía",
    "country_id": "country:98"
  },
  {
    "id": "city:415",
    "name": "Vigo",
    "country_id": "country:13"
  },
  {
    "id": "city:8458",
    "name": "Nerima",
    "country_id": "country:75"
  },
  {
    "id": "city:8079",
    "name": "Ajmer",
    "country_id": "country:55"
  },
  {
    "id": "city:2441",
    "name": "Tehran",
    "country_id": "country:176"
  },
  {
    "id": "city:5507",
    "name": "Laval",
    "country_id": "country:49"
  },
  {
    "id": "city:2691",
    "name": "Córdoba",
    "country_id": "country:74"
  },
  {
    "id": "city:6747",
    "name": "Elche / Elx",
    "country_id": "country:13"
  },
  {
    "id": "city:4453",
    "name": "San Domino Island",
    "country_id": "country:20"
  },
  {
    "id": "city:11248",
    "name": "Val Gardena",
    "country_id": "country:20"
  },
  {
    "id": "city:3182",
    "name": "Vientiane",
    "country_id": "country:217"
  },
  {
    "id": "city:10820",
    "name": "Fremont",
    "country_id": "country:43"
  },
  {
    "id": "city:515",
    "name": "Dundee",
    "country_id": "country:1"
  },
  {
    "id": "city:10922",
    "name": "Broomfield",
    "country_id": "country:43"
  },
  {
    "id": "city:2851",
    "name": "Calama",
    "country_id": "country:195"
  },
  {
    "id": "city:3182",
    "name": "Vientiane",
    "country_id": "country:47"
  },
  {
    "id": "city:389982",
    "name": "Balneário Camboriú",
    "country_id": "country:67"
  },
  {
    "id": "city:11233",
    "name": "Les Deux Alpes",
    "country_id": "country:14"
  },
  {
    "id": "city:7334",
    "name": "Nazareth",
    "country_id": "country:71"
  },
  {
    "id": "city:3210",
    "name": "Danang",
    "country_id": "country:83"
  },
  {
    "id": "city:6888",
    "name": "Worcester",
    "country_id": "country:1"
  },
  {
    "id": "city:3218",
    "name": "Mandalay",
    "country_id": "country:222"
  },
  {
    "id": "city:2882",
    "name": "Asuncion",
    "country_id": "country:197"
  },
  {
    "id": "city:10432",
    "name": "Carol City",
    "country_id": "country:43"
  },
  {
    "id": "city:10803",
    "name": "Costa Mesa",
    "country_id": "country:43"
  },
  {
    "id": "city:6444",
    "name": "Passau",
    "country_id": "country:18"
  },
  {
    "id": "city:9292",
    "name": "Drammen",
    "country_id": "country:4"
  },
  {
    "id": "city:2058",
    "name": "Suceava",
    "country_id": "country:31"
  },
  {
    "id": "city:6545",
    "name": "Randers",
    "country_id": "country:8"
  },
  {
    "id": "city:1742",
    "name": "Little Rock",
    "country_id": "country:43"
  },
  {
    "id": "city:2158",
    "name": "Tuxtla Gutiérrez",
    "country_id": "country:50"
  },
  {
    "id": "city:7028",
    "name": "Bebington",
    "country_id": "country:1"
  },
  {
    "id": "city:2689",
    "name": "Rosario",
    "country_id": "country:74"
  },
  {
    "id": "city:1770",
    "name": "Madison",
    "country_id": "country:43"
  },
  {
    "id": "city:192",
    "name": "Katowice",
    "country_id": "country:21"
  },
  {
    "id": "city:10795",
    "name": "Chula Vista",
    "country_id": "country:43"
  },
  {
    "id": "city:10078",
    "name": "San Marcos",
    "country_id": "country:157"
  },
  {
    "id": "city:905",
    "name": "Gloucestershire",
    "country_id": "country:1"
  },
  {
    "id": "city:276",
    "name": "Timișoara",
    "country_id": "country:31"
  },
  {
    "id": "city:10080",
    "name": "Mejicanos",
    "country_id": "country:157"
  },
  {
    "id": "city:3021",
    "name": "Kaliningrad",
    "country_id": "country:37"
  },
  {
    "id": "city:503",
    "name": "Windhoek",
    "country_id": "country:96"
  },
  {
    "id": "city:10513",
    "name": "Independence",
    "country_id": "country:43"
  },
  {
    "id": "city:10081",
    "name": "Delgado",
    "country_id": "country:157"
  },
  {
    "id": "city:2554",
    "name": "Kona",
    "country_id": "country:43"
  },
  {
    "id": "city:2690",
    "name": "Santa Fe",
    "country_id": "country:74"
  },
  {
    "id": "city:2188",
    "name": "San Salvador",
    "country_id": "country:157"
  },
  {
    "id": "city:6546",
    "name": "Kolding",
    "country_id": "country:8"
  },
  {
    "id": "city:10320",
    "name": "Morogoro",
    "country_id": "country:59"
  },
  {
    "id": "city:8339",
    "name": "Portmore",
    "country_id": "country:63"
  },
  {
    "id": "city:399",
    "name": "Essen",
    "country_id": "country:18"
  },
  {
    "id": "city:8293",
    "name": "Imola",
    "country_id": "country:20"
  },
  {
    "id": "city:462",
    "name": "Mulhouse",
    "country_id": "country:14"
  },
  {
    "id": "city:1165",
    "name": "Antsirabe",
    "country_id": "country:125"
  },
  {
    "id": "city:10074",
    "name": "Soyapango",
    "country_id": "country:157"
  },
  {
    "id": "city:209",
    "name": "Southampton",
    "country_id": "country:1"
  },
  {
    "id": "city:428",
    "name": "Reggio di Calabria",
    "country_id": "country:20"
  },
  {
    "id": "city:11219",
    "name": "Kitzbühel",
    "country_id": "country:23"
  },
  {
    "id": "city:2033",
    "name": "Grosseto",
    "country_id": "country:20"
  },
  {
    "id": "city:11231",
    "name": "Keystone",
    "country_id": "country:43"
  },
  {
    "id": "city:2951",
    "name": "Fort-de-France",
    "country_id": "country:14"
  },
  {
    "id": "city:10475",
    "name": "Town 'n' Country",
    "country_id": "country:43"
  },
  {
    "id": "city:7128",
    "name": "Veszprém",
    "country_id": "country:26"
  },
  {
    "id": "city:7046",
    "name": "Teshi",
    "country_id": "country:105"
  },
  {
    "id": "city:9284",
    "name": "Amersfoort",
    "country_id": "country:16"
  },
  {
    "id": "city:225043",
    "name": "Canton",
    "country_id": "country:43"
  },
  {
    "id": "city:151650",
    "name": "Kapolei",
    "country_id": "country:43"
  },
  {
    "id": "city:2193",
    "name": "Ciego de Avila",
    "country_id": "country:51"
  },
  {
    "id": "city:1633",
    "name": "Cheyenne",
    "country_id": "country:43"
  },
  {
    "id": "city:10934",
    "name": "North Las Vegas",
    "country_id": "country:43"
  },
  {
    "id": "city:2272",
    "name": "Blenheim",
    "country_id": "country:77"
  },
  {
    "id": "city:1539",
    "name": "Dar es Salaam",
    "country_id": "country:59"
  },
  {
    "id": "city:6369",
    "name": "Morón",
    "country_id": "country:51"
  },
  {
    "id": "city:6394",
    "name": "Jihlava",
    "country_id": "country:5"
  },
  {
    "id": "city:3124",
    "name": "Amritsar",
    "country_id": "country:55"
  },
  {
    "id": "city:2207",
    "name": "Grand Cayman",
    "country_id": "country:159"
  },
  {
    "id": "city:9715",
    "name": "Braşov",
    "country_id": "country:31"
  },
  {
    "id": "city:10869",
    "name": "Redlands",
    "country_id": "country:43"
  },
  {
    "id": "region:21011",
    "name": "Verbania",
    "country_id": "country:20"
  },
  {
    "id": "city:6946",
    "name": "Newport",
    "country_id": "country:1"
  },
  {
    "id": "city:1640",
    "name": "Tucson",
    "country_id": "country:43"
  },
  {
    "id": "city:134226",
    "name": "Sighișoara",
    "country_id": "country:31"
  },
  {
    "id": "city:1683",
    "name": "Green Bay",
    "country_id": "country:43"
  },
  {
    "id": "city:286",
    "name": "Szczecin",
    "country_id": "country:21"
  },
  {
    "id": "city:448",
    "name": "Trabzon",
    "country_id": "country:34"
  },
  {
    "id": "city:1821345",
    "name": "Richmond Hill",
    "country_id": "country:49"
  },
  {
    "id": "city:1826",
    "name": "Prescott",
    "country_id": "country:43"
  },
  {
    "id": "city:142",
    "name": "Bradford",
    "country_id": "country:1"
  },
  {
    "id": "city:56",
    "name": "Esbjerg",
    "country_id": "country:8"
  },
  {
    "id": "city:2246",
    "name": "Suva",
    "country_id": "country:162"
  },
  {
    "id": "city:11243",
    "name": "Alpe d'Huez",
    "country_id": "country:14"
  },
  {
    "id": "city:75",
    "name": "Valladolid",
    "country_id": "country:13"
  },
  {
    "id": "city:9231",
    "name": "Leon",
    "country_id": "country:155"
  },
  {
    "id": "city:7876",
    "name": "Dam Dam",
    "country_id": "country:55"
  },
  {
    "id": "city:2199",
    "name": "Guantánamo",
    "country_id": "country:51"
  },
  {
    "id": "city:2191",
    "name": "Baracoa Playa",
    "country_id": "country:51"
  },
  {
    "id": "city:8900",
    "name": "Bago",
    "country_id": "country:222"
  },
  {
    "id": "city:29",
    "name": "Tiranë",
    "country_id": "country:30"
  },
  {
    "id": "city:5034",
    "name": "Qaraçuxur",
    "country_id": "country:228"
  },
  {
    "id": "city:8088",
    "name": "Bankra",
    "country_id": "country:55"
  },
  {
    "id": "city:10618",
    "name": "Aurora",
    "country_id": "country:43"
  },
  {
    "id": "city:341",
    "name": "Puerto Plata",
    "country_id": "country:60"
  },
  {
    "id": "city:8239",
    "name": "Gela",
    "country_id": "country:20"
  },
  {
    "id": "city:337",
    "name": "Moncton",
    "country_id": "country:49"
  },
  {
    "id": "city:684188",
    "name": "Koka",
    "country_id": "country:75"
  },
  {
    "id": "city:2792",
    "name": "Porto Alegre",
    "country_id": "country:67"
  },
  {
    "id": "city:1586",
    "name": "Bakersfield",
    "country_id": "country:43"
  },
  {
    "id": "city:127",
    "name": "Almeria",
    "country_id": "country:13"
  },
  {
    "id": "city:5494",
    "name": "Dartmouth",
    "country_id": "country:49"
  },
  {
    "id": "city:357",
    "name": "Vitoria",
    "country_id": "country:13"
  },
  {
    "id": "city:6762",
    "name": "Vitoria-Gasteiz",
    "country_id": "country:13"
  },
  {
    "id": "city:849",
    "name": "Mannheim",
    "country_id": "country:18"
  },
  {
    "id": "city:6787",
    "name": "Ourense",
    "country_id": "country:13"
  },
  {
    "id": "city:1619",
    "name": "Charlotte",
    "country_id": "country:43"
  },
  {
    "id": "city:10278",
    "name": "Edirne",
    "country_id": "country:34"
  },
  {
    "id": "city:6412",
    "name": "Weimar",
    "country_id": "country:18"
  },
  {
    "id": "city:7054",
    "name": "Madina",
    "country_id": "country:105"
  },
  {
    "id": "city:6356",
    "name": "San Francisco",
    "country_id": "country:68"
  },
  {
    "id": "region:13552",
    "name": "Izamal",
    "country_id": "country:50"
  },
  {
    "id": "city:246",
    "name": "Agadir",
    "country_id": "country:45"
  },
  {
    "id": "city:11256",
    "name": "Bariloche",
    "country_id": "country:74"
  },
  {
    "id": "city:3641",
    "name": "Al Ain",
    "country_id": "country:54"
  },
  {
    "id": "city:8722",
    "name": "Bucheon-si",
    "country_id": "country:91"
  },
  {
    "id": "city:2738",
    "name": "San Carlos de Bariloche",
    "country_id": "country:74"
  },
  {
    "id": "city:2105",
    "name": "Acapulco",
    "country_id": "country:50"
  },
  {
    "id": "city:8949",
    "name": "San Cristóbal de Las Casas",
    "country_id": "country:50"
  },
  {
    "id": "city:863",
    "name": "Kassel",
    "country_id": "country:18"
  },
  {
    "id": "city:427",
    "name": "Volos",
    "country_id": "country:33"
  },
  {
    "id": "city:4334",
    "name": "Shimla",
    "country_id": "country:55"
  },
  {
    "id": "city:9389",
    "name": "Olongapo",
    "country_id": "country:94"
  },
  {
    "id": "city:10242",
    "name": "Aksaray",
    "country_id": "country:34"
  },
  {
    "id": "city:264",
    "name": "Kent",
    "country_id": "country:1"
  },
  {
    "id": "city:1701",
    "name": "Helena",
    "country_id": "country:43"
  },
  {
    "id": "city:10160",
    "name": "Sousse",
    "country_id": "country:46"
  },
  {
    "id": "city:1626",
    "name": "Casper",
    "country_id": "country:43"
  },
  {
    "id": "city:5516",
    "name": "North York",
    "country_id": "country:49"
  },
  {
    "id": "city:3062",
    "name": "Kazan",
    "country_id": "country:37"
  },
  {
    "id": "city:3795",
    "name": "Wilmington",
    "country_id": "country:43"
  },
  {
    "id": "city:8975",
    "name": "Cuajimalpa",
    "country_id": "country:50"
  },
  {
    "id": "city:8282",
    "name": "Mestre",
    "country_id": "country:20"
  },
  {
    "id": "city:1540",
    "name": "Dodoma",
    "country_id": "country:59"
  },
  {
    "id": "city:10739",
    "name": "West Albany",
    "country_id": "country:43"
  },
  {
    "id": "city:6385",
    "name": "Ústí nad Labem",
    "country_id": "country:5"
  },
  {
    "id": "city:7124",
    "name": "Miskolc",
    "country_id": "country:26"
  },
  {
    "id": "city:2022",
    "name": "Lecce",
    "country_id": "country:20"
  },
  {
    "id": "city:6790",
    "name": "Mataró",
    "country_id": "country:13"
  },
  {
    "id": "city:10958",
    "name": "Sandy City",
    "country_id": "country:43"
  },
  {
    "id": "city:8340",
    "name": "Wādī as Sīr",
    "country_id": "country:76"
  },
  {
    "id": "city:6828",
    "name": "Espoo",
    "country_id": "country:7"
  },
  {
    "id": "city:2171",
    "name": "Managua",
    "country_id": "country:155"
  },
  {
    "id": "city:313593",
    "name": "Telavi",
    "country_id": "country:44"
  },
  {
    "id": "city:88",
    "name": "Sheffield",
    "country_id": "country:1"
  },
  {
    "id": "city:1569",
    "name": "Albany",
    "country_id": "country:43"
  },
  {
    "id": "city:1883",
    "name": "White Sands",
    "country_id": "country:43"
  },
  {
    "id": "city:11234",
    "name": "Planai-Hochwurzen",
    "country_id": "country:23"
  },
  {
    "id": "city:8683",
    "name": "Akiruno",
    "country_id": "country:75"
  },
  {
    "id": "city:1744",
    "name": "Lincoln",
    "country_id": "country:43"
  },
  {
    "id": "city:2670",
    "name": "Ladag",
    "country_id": "country:94"
  },
  {
    "id": "city:11046",
    "name": "Chacao",
    "country_id": "country:65"
  },
  {
    "id": "city:10591",
    "name": "East Hampton",
    "country_id": "country:43"
  },
  {
    "id": "city:9370",
    "name": "Santa Rosa",
    "country_id": "country:94"
  },
  {
    "id": "city:172201",
    "name": "Hutchinson",
    "country_id": "country:43"
  },
  {
    "id": "city:2749",
    "name": "Belo Horizonte",
    "country_id": "country:67"
  },
  {
    "id": "city:11225",
    "name": "Zillertal Arena",
    "country_id": "country:23"
  },
  {
    "id": "city:10873",
    "name": "Richmond",
    "country_id": "country:43"
  },
  {
    "id": "city:9240",
    "name": "Zoetermeer",
    "country_id": "country:16"
  },
  {
    "id": "city:110",
    "name": "Poitiers",
    "country_id": "country:14"
  },
  {
    "id": "city:6911",
    "name": "Stoke-on-Trent",
    "country_id": "country:1"
  },
  {
    "id": "city:6936",
    "name": "Reading",
    "country_id": "country:1"
  },
  {
    "id": "city:3476",
    "name": "Sarasota Bradenton",
    "country_id": "country:43"
  },
  {
    "id": "city:10701",
    "name": "Saint Paul",
    "country_id": "country:43"
  },
  {
    "id": "city:433116",
    "name": "Laoag",
    "country_id": "country:94"
  },
  {
    "id": "city:397679",
    "name": "Cartago",
    "country_id": "country:68"
  },
  {
    "id": "city:1873",
    "name": "Tulsa",
    "country_id": "country:43"
  },
  {
    "id": "city:5027",
    "name": "City of Parramatta",
    "country_id": "country:73"
  },
  {
    "id": "city:2692",
    "name": "La Plata",
    "country_id": "country:74"
  },
  {
    "id": "city:3628",
    "name": "Laoag",
    "country_id": "country:94"
  },
  {
    "id": "city:8320",
    "name": "Bitonto",
    "country_id": "country:20"
  },
  {
    "id": "city:10953",
    "name": "Salem",
    "country_id": "country:43"
  },
  {
    "id": "city:10781",
    "name": "Arcadia",
    "country_id": "country:43"
  },
  {
    "id": "city:435",
    "name": "Aalborg",
    "country_id": "country:8"
  },
  {
    "id": "city:387854",
    "name": "Progreso",
    "country_id": "country:50"
  },
  {
    "id": "city:3496",
    "name": "Bozeman",
    "country_id": "country:43"
  },
  {
    "id": "city:387097",
    "name": "Armagh",
    "country_id": "country:1"
  },
  {
    "id": "city:2042",
    "name": "Bragança",
    "country_id": "country:12"
  },
  {
    "id": "city:1596",
    "name": "Boise",
    "country_id": "country:43"
  },
  {
    "id": "city:8704",
    "name": "Battambang",
    "country_id": "country:214"
  },
  {
    "id": "city:4936",
    "name": "Concord",
    "country_id": "country:43"
  },
  {
    "id": "city:9652",
    "name": "Elbląg",
    "country_id": "country:21"
  },
  {
    "id": "city:766462",
    "name": "Asago",
    "country_id": "country:75"
  },
  {
    "id": "city:562605",
    "name": "Tabanan",
    "country_id": "country:93"
  },
  {
    "id": "city:6801",
    "name": "Gijón/Xixón",
    "country_id": "country:13"
  },
  {
    "id": "city:8272",
    "name": "Pistoia",
    "country_id": "country:20"
  },
  {
    "id": "city:1870",
    "name": "Tallahassee",
    "country_id": "country:43"
  },
  {
    "id": "city:5176",
    "name": "Caucaia",
    "country_id": "country:67"
  },
  {
    "id": "city:6902",
    "name": "Wakefield",
    "country_id": "country:1"
  },
  {
    "id": "city:9293",
    "name": "Patan",
    "country_id": "country:219"
  },
  {
    "id": "city:4315",
    "name": "Santa Ponsa",
    "country_id": "country:13"
  },
  {
    "id": "city:2623",
    "name": "Okayama",
    "country_id": "country:75"
  },
  {
    "id": "city:2275",
    "name": "Dunedin",
    "country_id": "country:77"
  },
  {
    "id": "city:2137",
    "name": "Morelia",
    "country_id": "country:50"
  },
  {
    "id": "city:1324298",
    "name": "Kansas City",
    "country_id": "country:43"
  },
  {
    "id": "city:11182",
    "name": "Burgas",
    "country_id": "country:32"
  },
  {
    "id": "city:296",
    "name": "Bourgas",
    "country_id": "country:32"
  },
  {
    "id": "city:2196",
    "name": "Camagüey",
    "country_id": "country:51"
  },
  {
    "id": "city:2112",
    "name": "Chetumal",
    "country_id": "country:50"
  },
  {
    "id": "city:22811",
    "name": "Homel",
    "country_id": "country:35"
  },
  {
    "id": "city:2642",
    "name": "Naha",
    "country_id": "country:75"
  },
  {
    "id": "city:11183",
    "name": "Lombok",
    "country_id": "country:93"
  },
  {
    "id": "region:22447",
    "name": "Quezon City",
    "country_id": "country:94"
  },
  {
    "id": "city:864",
    "name": "Bremerhaven",
    "country_id": "country:18"
  },
  {
    "id": "city:1734",
    "name": "Lansing",
    "country_id": "country:43"
  },
  {
    "id": "city:1510",
    "name": "Nakuru",
    "country_id": "country:62"
  },
  {
    "id": "city:10877",
    "name": "Salinas",
    "country_id": "country:43"
  },
  {
    "id": "city:9606",
    "name": "Białystok",
    "country_id": "country:21"
  },
  {
    "id": "city:9239",
    "name": "Zwolle",
    "country_id": "country:16"
  },
  {
    "id": "city:6552",
    "name": "Higüey",
    "country_id": "country:60"
  },
  {
    "id": "city:3471",
    "name": "Žilina",
    "country_id": "country:25"
  },
  {
    "id": "city:3506",
    "name": "Eugene",
    "country_id": "country:43"
  },
  {
    "id": "city:11217",
    "name": "Grandvalira",
    "country_id": "country:242"
  },
  {
    "id": "city:1779",
    "name": "Montgomery",
    "country_id": "country:43"
  },
  {
    "id": "city:11250",
    "name": "Alta Badia",
    "country_id": "country:20"
  },
  {
    "id": "city:3492",
    "name": "Billings",
    "country_id": "country:43"
  },
  {
    "id": "city:1176",
    "name": "Toamasina",
    "country_id": "country:125"
  },
  {
    "id": "city:5462",
    "name": "Thimphu",
    "country_id": "country:220"
  },
  {
    "id": "city:1203",
    "name": "Fianarantsoa",
    "country_id": "country:125"
  },
  {
    "id": "city:2861",
    "name": "Osorno",
    "country_id": "country:195"
  },
  {
    "id": "city:2747",
    "name": "Belém",
    "country_id": "country:67"
  },
  {
    "id": "city:1686",
    "name": "Grand Rapids",
    "country_id": "country:43"
  },
  {
    "id": "city:1562",
    "name": "Waco",
    "country_id": "country:43"
  },
  {
    "id": "city:1817",
    "name": "Newport News",
    "country_id": "country:43"
  },
  {
    "id": "city:1389",
    "name": "Tétouan",
    "country_id": "country:45"
  },
  {
    "id": "city:10507",
    "name": "Silver Spring",
    "country_id": "country:43"
  },
  {
    "id": "city:10464",
    "name": "Port Orange",
    "country_id": "country:43"
  },
  {
    "id": "city:345",
    "name": "Sal",
    "country_id": "country:66"
  },
  {
    "id": "city:422",
    "name": "Natal",
    "country_id": "country:67"
  },
  {
    "id": "city:8252",
    "name": "Trento",
    "country_id": "country:20"
  },
  {
    "id": "city:180",
    "name": "Jersey",
    "country_id": "country:1"
  },
  {
    "id": "city:2116",
    "name": "Chihuahua",
    "country_id": "country:50"
  },
  {
    "id": "city:303",
    "name": "Fairbanks",
    "country_id": "country:43"
  },
  {
    "id": "city:1615",
    "name": "Charleston",
    "country_id": "country:43"
  },
  {
    "id": "city:200",
    "name": "Münster",
    "country_id": "country:18"
  },
  {
    "id": "city:78909",
    "name": "Leiria",
    "country_id": "country:12"
  },
  {
    "id": "city:9737",
    "name": "Novi Sad",
    "country_id": "country:29"
  },
  {
    "id": "city:1727",
    "name": "Winston-Salem",
    "country_id": "country:43"
  },
  {
    "id": "city:6405",
    "name": "Wolfsburg",
    "country_id": "country:18"
  },
  {
    "id": "city:1886",
    "name": "Yuma",
    "country_id": "country:43"
  },
  {
    "id": "city:5510",
    "name": "Markham",
    "country_id": "country:49"
  },
  {
    "id": "city:6816",
    "name": "Alcobendas",
    "country_id": "country:13"
  },
  {
    "id": "city:10900",
    "name": "Torrance",
    "country_id": "country:43"
  },
  {
    "id": "city:10668",
    "name": "Ann Arbor",
    "country_id": "country:43"
  },
  {
    "id": "city:87683",
    "name": "Cidade de Espargos",
    "country_id": "country:66"
  },
  {
    "id": "city:9311",
    "name": "Nizwa",
    "country_id": "country:178"
  },
  {
    "id": "city:9266",
    "name": "Heerlen",
    "country_id": "country:16"
  },
  {
    "id": "city:4719",
    "name": "Contadora",
    "country_id": "country:156"
  },
  {
    "id": "city:6484",
    "name": "Hildesheim",
    "country_id": "country:18"
  },
  {
    "id": "city:115",
    "name": "Murcia",
    "country_id": "country:13"
  },
  {
    "id": "city:93746",
    "name": "Hämeenlinna",
    "country_id": "country:7"
  },
  {
    "id": "city:4137",
    "name": "Block Island",
    "country_id": "country:43"
  },
  {
    "id": "city:206",
    "name": "Norwich",
    "country_id": "country:1"
  },
  {
    "id": "city:6540",
    "name": "Aschaffenburg",
    "country_id": "country:18"
  },
  {
    "id": "city:8306",
    "name": "Cinisello Balsamo",
    "country_id": "country:20"
  },
  {
    "id": "city:6517",
    "name": "Duisburg",
    "country_id": "country:18"
  },
  {
    "id": "city:5281",
    "name": "Petrópolis",
    "country_id": "country:67"
  },
  {
    "id": "city:4930",
    "name": "Alcalá de Henares",
    "country_id": "country:13"
  },
  {
    "id": "city:8547",
    "name": "Ise",
    "country_id": "country:75"
  },
  {
    "id": "city:6435",
    "name": "Reutlingen",
    "country_id": "country:18"
  },
  {
    "id": "city:847726",
    "name": "Akishima",
    "country_id": "country:75"
  },
  {
    "id": "city:3961",
    "name": "Ceuta",
    "country_id": "country:13"
  },
  {
    "id": "city:3961",
    "name": "Ceuta",
    "country_id": "country:45"
  },
  {
    "id": "city:1863",
    "name": "Syracuse",
    "country_id": "country:43"
  },
  {
    "id": "city:1101091",
    "name": "Rochester",
    "country_id": "country:43"
  },
  {
    "id": "region:23691",
    "name": "Frederiksted",
    "country_id": "country:43"
  },
  {
    "id": "city:2459",
    "name": "Muscat",
    "country_id": "country:178"
  },
  {
    "id": "city:11267",
    "name": "Annapolis",
    "country_id": "country:43"
  },
  {
    "id": "city:10735",
    "name": "Rochester",
    "country_id": "country:43"
  },
  {
    "id": "city:156256",
    "name": "La Cañada Flintridge",
    "country_id": "country:43"
  },
  {
    "id": "city:11185",
    "name": "Rochester",
    "country_id": "country:43"
  },
  {
    "id": "city:1164968",
    "name": "Al Mutrah",
    "country_id": "country:178"
  },
  {
    "id": "city:299568",
    "name": "Sparta",
    "country_id": "country:33"
  },
  {
    "id": "city:10449",
    "name": "Lauderhill",
    "country_id": "country:43"
  },
  {
    "id": "city:10143",
    "name": "Hat Yai",
    "country_id": "country:47"
  },
  {
    "id": "city:10898",
    "name": "Temecula",
    "country_id": "country:43"
  },
  {
    "id": "city:7186",
    "name": "Singaraja",
    "country_id": "country:93"
  },
  {
    "id": "city:109",
    "name": "Perpignan",
    "country_id": "country:14"
  },
  {
    "id": "city:409",
    "name": "Jönköping",
    "country_id": "country:6"
  },
  {
    "id": "city:3365",
    "name": "Hamilton Island",
    "country_id": "country:73"
  },
  {
    "id": "city:11247",
    "name": "Serre Chevalier",
    "country_id": "country:14"
  },
  {
    "id": "city:356",
    "name": "Trapani",
    "country_id": "country:20"
  },
  {
    "id": "city:2912",
    "name": "Rivera",
    "country_id": "country:201"
  },
  {
    "id": "city:4029",
    "name": "Sault Ste. Marie",
    "country_id": "country:49"
  },
  {
    "id": "city:502",
    "name": "Iași",
    "country_id": "country:31"
  },
  {
    "id": "city:4935",
    "name": "Jackson",
    "country_id": "country:43"
  },
  {
    "id": "city:6718",
    "name": "Telde",
    "country_id": "country:13"
  },
  {
    "id": "city:464",
    "name": "Ohrid",
    "country_id": "country:38"
  },
  {
    "id": "city:6530",
    "name": "Bottrop",
    "country_id": "country:18"
  },
  {
    "id": "city:11025",
    "name": "Petare",
    "country_id": "country:65"
  },
  {
    "id": "city:447",
    "name": "Konya",
    "country_id": "country:34"
  },
  {
    "id": "city:10826",
    "name": "Hacienda Heights",
    "country_id": "country:43"
  },
  {
    "id": "city:407",
    "name": "Sibiu",
    "country_id": "country:31"
  },
  {
    "id": "city:10628",
    "name": "Naperville",
    "country_id": "country:43"
  },
  {
    "id": "city:1206954",
    "name": "Cerritos",
    "country_id": "country:43"
  },
  {
    "id": "city:2555",
    "name": "Kamuela",
    "country_id": "country:43"
  },
  {
    "id": "city:2109",
    "name": "Cuernavaca",
    "country_id": "country:50"
  },
  {
    "id": "city:1657",
    "name": "Fort Eustis",
    "country_id": "country:43"
  },
  {
    "id": "city:8247",
    "name": "Vigevano",
    "country_id": "country:20"
  },
  {
    "id": "city:384",
    "name": "Caracas",
    "country_id": "country:65"
  },
  {
    "id": "city:4134",
    "name": "Bathurst",
    "country_id": "country:73"
  },
  {
    "id": "city:8266",
    "name": "Rho",
    "country_id": "country:20"
  },
  {
    "id": "city:8275",
    "name": "Pavia",
    "country_id": "country:20"
  },
  {
    "id": "city:9718",
    "name": "Bistrița",
    "country_id": "country:31"
  },
  {
    "id": "city:10436",
    "name": "Davie",
    "country_id": "country:43"
  },
  {
    "id": "city:6544",
    "name": "Vejle",
    "country_id": "country:8"
  },
  {
    "id": "region:22112",
    "name": "Magdeburg",
    "country_id": "country:18"
  },
  {
    "id": "city:7135",
    "name": "Kecskemét",
    "country_id": "country:26"
  },
  {
    "id": "city:6978",
    "name": "Hereford",
    "country_id": "country:1"
  },
  {
    "id": "city:6524",
    "name": "Darmstadt",
    "country_id": "country:18"
  },
  {
    "id": "city:7967",
    "name": "Bikaner",
    "country_id": "country:55"
  },
  {
    "id": "city:4476",
    "name": "La Gomera",
    "country_id": "country:13"
  },
  {
    "id": "city:335705",
    "name": "Teruel",
    "country_id": "country:13"
  },
  {
    "id": "city:10443",
    "name": "Jupiter",
    "country_id": "country:43"
  },
  {
    "id": "city:8947",
    "name": "San Juan del Rio",
    "country_id": "country:50"
  },
  {
    "id": "city:1581",
    "name": "Boca Raton",
    "country_id": "country:43"
  },
  {
    "id": "city:9769",
    "name": "Tula",
    "country_id": "country:37"
  },
  {
    "id": "city:6761",
    "name": "Zamora",
    "country_id": "country:13"
  },
  {
    "id": "city:8583",
    "name": "Uruma",
    "country_id": "country:75"
  },
  {
    "id": "city:3638",
    "name": "Isfahan",
    "country_id": "country:176"
  },
  {
    "id": "city:3173",
    "name": "Dhaka",
    "country_id": "country:215"
  },
  {
    "id": "city:3090",
    "name": "Pune",
    "country_id": "country:55"
  },
  {
    "id": "city:4327",
    "name": "Kigoma",
    "country_id": "country:59"
  },
  {
    "id": "city:3151",
    "name": "Hyderabad",
    "country_id": "country:55"
  },
  {
    "id": "city:1645",
    "name": "Des Moines",
    "country_id": "country:43"
  },
  {
    "id": "city:11033",
    "name": "Los Dos Caminos",
    "country_id": "country:65"
  },
  {
    "id": "city:138",
    "name": "Reus",
    "country_id": "country:13"
  },
  {
    "id": "city:3619",
    "name": "Pécs",
    "country_id": "country:26"
  },
  {
    "id": "city:6480",
    "name": "Jena",
    "country_id": "country:18"
  },
  {
    "id": "city:907",
    "name": "Isles Of Scilly",
    "country_id": "country:1"
  },
  {
    "id": "city:4709",
    "name": "Magdeburg",
    "country_id": "country:18"
  },
  {
    "id": "city:1491",
    "name": "Aswan",
    "country_id": "country:40"
  },
  {
    "id": "city:93744",
    "name": "Kouvola",
    "country_id": "country:7"
  },
  {
    "id": "region:70320",
    "name": "Monterrey",
    "country_id": "country:50"
  },
  {
    "id": "city:6463",
    "name": "Magdeburg",
    "country_id": "country:18"
  },
  {
    "id": "city:2156",
    "name": "Tlaxcala",
    "country_id": "country:50"
  },
  {
    "id": "city:7122",
    "name": "Szeged",
    "country_id": "country:26"
  },
  {
    "id": "city:5595",
    "name": "Los Andes",
    "country_id": "country:195"
  },
  {
    "id": "city:6514",
    "name": "Erlangen",
    "country_id": "country:18"
  },
  {
    "id": "city:3719",
    "name": "Osnabrück",
    "country_id": "country:18"
  },
  {
    "id": "city:3289",
    "name": "Medan",
    "country_id": "country:93"
  },
  {
    "id": "city:3522",
    "name": "Missoula",
    "country_id": "country:43"
  },
  {
    "id": "city:3138",
    "name": "Lucknow",
    "country_id": "country:55"
  },
  {
    "id": "city:11251",
    "name": "Davos - Klosters",
    "country_id": "country:19"
  },
  {
    "id": "city:11224",
    "name": "Serfaus-Fiss-Ladis",
    "country_id": "country:23"
  },
  {
    "id": "city:3529",
    "name": "Pierre",
    "country_id": "country:43"
  },
  {
    "id": "city:5108",
    "name": "Veliko Tarnovo",
    "country_id": "country:32"
  },
  {
    "id": "city:3363",
    "name": "Maroochydore",
    "country_id": "country:73"
  },
  {
    "id": "city:5420",
    "name": "Blumenau",
    "country_id": "country:67"
  },
  {
    "id": "city:9657",
    "name": "Bielsko-Biała",
    "country_id": "country:21"
  },
  {
    "id": "city:10941",
    "name": "Fort Collins",
    "country_id": "country:43"
  },
  {
    "id": "city:2854",
    "name": "Iquique",
    "country_id": "country:195"
  },
  {
    "id": "city:2864",
    "name": "Puerto Montt",
    "country_id": "country:195"
  },
  {
    "id": "city:10663",
    "name": "Springfield",
    "country_id": "country:43"
  },
  {
    "id": "city:856",
    "name": "Bayreuth",
    "country_id": "country:18"
  },
  {
    "id": "city:1933",
    "name": "Oliktok Point",
    "country_id": "country:43"
  },
  {
    "id": "city:5380",
    "name": "Embu das Artes",
    "country_id": "country:67"
  },
  {
    "id": "city:5126",
    "name": "Manama",
    "country_id": "country:173"
  },
  {
    "id": "city:9626",
    "name": "Płock",
    "country_id": "country:21"
  },
  {
    "id": "city:7137",
    "name": "Győr",
    "country_id": "country:26"
  },
  {
    "id": "city:10821",
    "name": "Fullerton",
    "country_id": "country:43"
  },
  {
    "id": "city:1126712",
    "name": "Karlskrona",
    "country_id": "country:6"
  },
  {
    "id": "city:9603",
    "name": "Kielce",
    "country_id": "country:21"
  },
  {
    "id": "city:78912",
    "name": "Angra do Heroísmo",
    "country_id": "country:12"
  },
  {
    "id": "city:10133",
    "name": "Nonthaburi",
    "country_id": "country:47"
  },
  {
    "id": "city:10824",
    "name": "Glendale",
    "country_id": "country:43"
  },
  {
    "id": "city:502185",
    "name": "Agii Anargyri",
    "country_id": "country:33"
  },
  {
    "id": "city:10931",
    "name": "Carson City",
    "country_id": "country:43"
  },
  {
    "id": "city:8290",
    "name": "Legnano",
    "country_id": "country:20"
  },
  {
    "id": "city:3154",
    "name": "Madras",
    "country_id": "country:55"
  },
  {
    "id": "city:10938",
    "name": "Sunrise Manor",
    "country_id": "country:43"
  },
  {
    "id": "city:2290",
    "name": "Nelson",
    "country_id": "country:77"
  },
  {
    "id": "region:44064",
    "name": "Doun Kaev",
    "country_id": "country:214"
  },
  {
    "id": "city:2548",
    "name": "Dillingham",
    "country_id": "country:43"
  },
  {
    "id": "city:8745",
    "name": "Tsche-mul-p-ho",
    "country_id": "country:91"
  },
  {
    "id": "city:5361",
    "name": "Guarujá",
    "country_id": "country:67"
  },
  {
    "id": "city:8318",
    "name": "Busto Arsizio",
    "country_id": "country:20"
  },
  {
    "id": "city:9584",
    "name": "Zamość",
    "country_id": "country:21"
  },
  {
    "id": "city:9273",
    "name": "Deventer",
    "country_id": "country:16"
  },
  {
    "id": "city:8703",
    "name": "Kampong Cham",
    "country_id": "country:214"
  },
  {
    "id": "city:1700468",
    "name": "Sri Jayawardenapura Kotte",
    "country_id": "country:52"
  },
  {
    "id": "city:1023",
    "name": "Karlstad",
    "country_id": "country:6"
  },
  {
    "id": "city:503016",
    "name": "Eniwa",
    "country_id": "country:75"
  },
  {
    "id": "city:3911",
    "name": "Eureka",
    "country_id": "country:43"
  },
  {
    "id": "city:9305",
    "name": "Lower Hutt",
    "country_id": "country:77"
  },
  {
    "id": "city:7663",
    "name": "Chennai",
    "country_id": "country:55"
  },
  {
    "id": "city:494",
    "name": "Kingston",
    "country_id": "country:63"
  },
  {
    "id": "city:8261",
    "name": "Sassari",
    "country_id": "country:20"
  },
  {
    "id": "city:2727",
    "name": "Ushuaia",
    "country_id": "country:74"
  },
  {
    "id": "city:10543",
    "name": "North Charleston",
    "country_id": "country:43"
  },
  {
    "id": "city:1206950",
    "name": "Westminster",
    "country_id": "country:43"
  },
  {
    "id": "city:3392",
    "name": "Dubbo",
    "country_id": "country:73"
  },
  {
    "id": "city:9277",
    "name": "Breda",
    "country_id": "country:16"
  },
  {
    "id": "city:1590",
    "name": "El Paso",
    "country_id": "country:43"
  },
  {
    "id": "city:2079",
    "name": "Podgorica",
    "country_id": "country:87"
  },
  {
    "id": "city:123150",
    "name": "Nuwara Eliya",
    "country_id": "country:52"
  },
  {
    "id": "city:10476",
    "name": "Wellington",
    "country_id": "country:43"
  },
  {
    "id": "city:737518",
    "name": "Shingu",
    "country_id": "country:75"
  },
  {
    "id": "city:767686",
    "name": "Mito",
    "country_id": "country:75"
  },
  {
    "id": "city:8480",
    "name": "Mihara",
    "country_id": "country:75"
  },
  {
    "id": "city:2976",
    "name": "Port of Spain",
    "country_id": "country:70"
  },
  {
    "id": "city:855174",
    "name": "Guarda",
    "country_id": "country:12"
  },
  {
    "id": "city:330",
    "name": "Holguín",
    "country_id": "country:51"
  },
  {
    "id": "city:2460",
    "name": "Salalah",
    "country_id": "country:178"
  },
  {
    "id": "city:566",
    "name": "Campbell River",
    "country_id": "country:49"
  },
  {
    "id": "city:953650",
    "name": "Takahashi",
    "country_id": "country:75"
  },
  {
    "id": "city:9645",
    "name": "Grudziądz",
    "country_id": "country:21"
  },
  {
    "id": "city:235",
    "name": "Östersund",
    "country_id": "country:6"
  },
  {
    "id": "city:6447",
    "name": "Offenbach am Main",
    "country_id": "country:18"
  },
  {
    "id": "city:1173730",
    "name": "Oda",
    "country_id": "country:75"
  },
  {
    "id": "city:1559",
    "name": "Abilene",
    "country_id": "country:43"
  },
  {
    "id": "city:1277",
    "name": "Bird Island",
    "country_id": "country:80"
  },
  {
    "id": "city:468",
    "name": "Chișinău",
    "country_id": "country:92"
  },
  {
    "id": "city:10770",
    "name": "Mesa",
    "country_id": "country:43"
  },
  {
    "id": "city:5094",
    "name": "Mons",
    "country_id": "country:15"
  },
  {
    "id": "city:2469",
    "name": "Lahore",
    "country_id": "country:81"
  },
  {
    "id": "city:8311",
    "name": "Cava de' Tirreni",
    "country_id": "country:20"
  },
  {
    "id": "city:9455",
    "name": "Cainta",
    "country_id": "country:94"
  },
  {
    "id": "city:443",
    "name": "Adana",
    "country_id": "country:34"
  },
  {
    "id": "region:44045",
    "name": "Preah Vihear",
    "country_id": "country:214"
  },
  {
    "id": "city:8274",
    "name": "Pesaro",
    "country_id": "country:20"
  },
  {
    "id": "city:1920",
    "name": "Sitka",
    "country_id": "country:43"
  },
  {
    "id": "city:2736",
    "name": "Neuquén",
    "country_id": "country:74"
  },
  {
    "id": "city:283",
    "name": "Kaunas",
    "country_id": "country:11"
  },
  {
    "id": "city:3917",
    "name": "Adıyaman",
    "country_id": "country:34"
  },
  {
    "id": "city:3532",
    "name": "Roanoke",
    "country_id": "country:43"
  },
  {
    "id": "city:862",
    "name": "Brunswick",
    "country_id": "country:18"
  },
  {
    "id": "city:1190",
    "name": "Mahajanga",
    "country_id": "country:125"
  },
  {
    "id": "city:8342",
    "name": "Irbid",
    "country_id": "country:76"
  },
  {
    "id": "city:1554",
    "name": "Tanga",
    "country_id": "country:59"
  },
  {
    "id": "city:3129",
    "name": "Gwalior",
    "country_id": "country:55"
  },
  {
    "id": "city:10667",
    "name": "Worcester",
    "country_id": "country:43"
  },
  {
    "id": "city:10602",
    "name": "East Norwalk",
    "country_id": "country:43"
  },
  {
    "id": "city:3633",
    "name": "Tagbilaran",
    "country_id": "country:94"
  },
  {
    "id": "city:1162",
    "name": "Saint-Denis",
    "country_id": "country:14"
  },
  {
    "id": "city:11239",
    "name": "Vail",
    "country_id": "country:43"
  },
  {
    "id": "city:1691",
    "name": "Greenville",
    "country_id": "country:43"
  },
  {
    "id": "city:1769",
    "name": "Marquette",
    "country_id": "country:43"
  },
  {
    "id": "city:369",
    "name": "Pardubice",
    "country_id": "country:5"
  },
  {
    "id": "city:6797",
    "name": "l'Hospitalet de Llobregat",
    "country_id": "country:13"
  },
  {
    "id": "city:10917",
    "name": "Yorba Linda",
    "country_id": "country:43"
  },
  {
    "id": "city:4370",
    "name": "Pskov",
    "country_id": "country:37"
  },
  {
    "id": "city:10653",
    "name": "Lowell",
    "country_id": "country:43"
  },
  {
    "id": "city:9257",
    "name": "Nijmegen",
    "country_id": "country:16"
  },
  {
    "id": "city:10715",
    "name": "New Brunswick",
    "country_id": "country:43"
  },
  {
    "id": "city:10179",
    "name": "Torbalı",
    "country_id": "country:34"
  },
  {
    "id": "city:1211394",
    "name": "Rangsit",
    "country_id": "country:47"
  },
  {
    "id": "city:3406",
    "name": "Tianjin",
    "country_id": "country:78"
  },
  {
    "id": "city:285",
    "name": "Rzeszów",
    "country_id": "country:21"
  },
  {
    "id": "city:5092",
    "name": "Namur",
    "country_id": "country:15"
  },
  {
    "id": "city:3497",
    "name": "Butte",
    "country_id": "country:43"
  },
  {
    "id": "city:1003",
    "name": "Trollhättan",
    "country_id": "country:6"
  },
  {
    "id": "city:1363",
    "name": "Badajoz",
    "country_id": "country:13"
  },
  {
    "id": "city:8820",
    "name": "Šiauliai",
    "country_id": "country:11"
  },
  {
    "id": "city:335592",
    "name": "Soria",
    "country_id": "country:13"
  },
  {
    "id": "city:4972",
    "name": "Shkoder",
    "country_id": "country:30"
  },
  {
    "id": "city:2133",
    "name": "La Paz",
    "country_id": "country:50"
  },
  {
    "id": "city:208",
    "name": "Rennes",
    "country_id": "country:14"
  },
  {
    "id": "city:9649",
    "name": "Gliwice",
    "country_id": "country:21"
  },
  {
    "id": "city:8569",
    "name": "Hikone",
    "country_id": "country:75"
  },
  {
    "id": "city:8476",
    "name": "Mishima",
    "country_id": "country:75"
  },
  {
    "id": "city:2699",
    "name": "San Miguel de Tucumán",
    "country_id": "country:74"
  },
  {
    "id": "city:3071",
    "name": "Aurangabad",
    "country_id": "country:55"
  },
  {
    "id": "city:10727",
    "name": "Cheektowaga",
    "country_id": "country:43"
  },
  {
    "id": "city:6909",
    "name": "Sunderland",
    "country_id": "country:1"
  },
  {
    "id": "city:3058",
    "name": "Voronezh",
    "country_id": "country:37"
  },
  {
    "id": "city:8257",
    "name": "Taranto",
    "country_id": "country:20"
  },
  {
    "id": "city:3493",
    "name": "Binghamton",
    "country_id": "country:43"
  },
  {
    "id": "city:10709",
    "name": "Edison",
    "country_id": "country:43"
  },
  {
    "id": "city:941",
    "name": "Barra",
    "country_id": "country:1"
  },
  {
    "id": "region:31895",
    "name": "Mahdia",
    "country_id": "country:46"
  },
  {
    "id": "city:3841",
    "name": "Salerno",
    "country_id": "country:20"
  },
  {
    "id": "city:1490",
    "name": "St Catherine",
    "country_id": "country:40"
  },
  {
    "id": "city:3127",
    "name": "Chandigarh",
    "country_id": "country:55"
  },
  {
    "id": "city:10258",
    "name": "Rize",
    "country_id": "country:34"
  },
  {
    "id": "city:3088",
    "name": "Nagpur",
    "country_id": "country:55"
  },
  {
    "id": "city:3511",
    "name": "Greensboro",
    "country_id": "country:43"
  },
  {
    "id": "city:10447",
    "name": "Lakeland",
    "country_id": "country:43"
  },
  {
    "id": "city:5518",
    "name": "Oshawa",
    "country_id": "country:49"
  },
  {
    "id": "city:8491",
    "name": "Kuwana",
    "country_id": "country:75"
  },
  {
    "id": "city:7131",
    "name": "Székesfehérvár",
    "country_id": "country:26"
  },
  {
    "id": "city:3662",
    "name": "Petersburg",
    "country_id": "country:43"
  },
  {
    "id": "city:11042",
    "name": "El Hatillo",
    "country_id": "country:65"
  },
  {
    "id": "city:2009",
    "name": "Kastoria",
    "country_id": "country:33"
  },
  {
    "id": "city:8269",
    "name": "Prato",
    "country_id": "country:20"
  },
  {
    "id": "city:9477",
    "name": "Antipolo",
    "country_id": "country:94"
  },
  {
    "id": "city:2011089",
    "name": "Santander",
    "country_id": "country:13"
  },
  {
    "id": "city:8595",
    "name": "Fujisawa",
    "country_id": "country:75"
  },
  {
    "id": "city:5155",
    "name": "Parnamirim",
    "country_id": "country:67"
  },
  {
    "id": "city:2100",
    "name": "Tegucigalpa",
    "country_id": "country:154"
  },
  {
    "id": "region:20636",
    "name": "Aosta",
    "country_id": "country:20"
  },
  {
    "id": "city:2805",
    "name": "São Luís",
    "country_id": "country:67"
  },
  {
    "id": "city:10956",
    "name": "Millcreek",
    "country_id": "country:43"
  },
  {
    "id": "city:2720",
    "name": "Trelew",
    "country_id": "country:74"
  },
  {
    "id": "city:1635217",
    "name": "Zigui",
    "country_id": "country:78"
  },
  {
    "id": "city:7330",
    "name": "Rishon LeZion",
    "country_id": "country:71"
  },
  {
    "id": "city:2083",
    "name": "Grand Turk",
    "country_id": "country:152"
  },
  {
    "id": "city:10751",
    "name": "Cranston",
    "country_id": "country:43"
  },
  {
    "id": "city:10801",
    "name": "Concord",
    "country_id": "country:43"
  },
  {
    "id": "city:2093",
    "name": "Guatemala City",
    "country_id": "country:153"
  },
  {
    "id": "city:10079",
    "name": "Santa Tecla",
    "country_id": "country:157"
  },
  {
    "id": "city:2288",
    "name": "Napier",
    "country_id": "country:77"
  },
  {
    "id": "city:2614",
    "name": "Kumamoto",
    "country_id": "country:75"
  },
  {
    "id": "city:387177",
    "name": "Vaitape",
    "country_id": "country:14"
  },
  {
    "id": "city:3320",
    "name": "Bintulu",
    "country_id": "country:97"
  },
  {
    "id": "city:1689",
    "name": "Great Falls",
    "country_id": "country:43"
  },
  {
    "id": "city:3426",
    "name": "Wuhan",
    "country_id": "country:78"
  },
  {
    "id": "city:2024",
    "name": "Decimomannu",
    "country_id": "country:20"
  },
  {
    "id": "city:2899",
    "name": "Sucre",
    "country_id": "country:198"
  },
  {
    "id": "city:1902",
    "name": "Fort Wainwright",
    "country_id": "country:43"
  },
  {
    "id": "city:10865",
    "name": "Pomona",
    "country_id": "country:43"
  },
  {
    "id": "city:10771",
    "name": "Peoria",
    "country_id": "country:43"
  },
  {
    "id": "city:6940",
    "name": "Peterborough",
    "country_id": "country:1"
  },
  {
    "id": "city:10052",
    "name": "Borås",
    "country_id": "country:6"
  },
  {
    "id": "city:10976",
    "name": "Alafaya",
    "country_id": "country:43"
  },
  {
    "id": "city:3549",
    "name": "Grand Junction",
    "country_id": "country:43"
  },
  {
    "id": "city:2067",
    "name": "Samsun",
    "country_id": "country:34"
  },
  {
    "id": "city:2969",
    "name": "Mayagüez",
    "country_id": "country:43"
  },
  {
    "id": "city:295254",
    "name": "East Providence",
    "country_id": "country:43"
  },
  {
    "id": "city:10521",
    "name": "Cary",
    "country_id": "country:43"
  },
  {
    "id": "city:6395",
    "name": "Hradec Králové",
    "country_id": "country:5"
  },
  {
    "id": "city:9071",
    "name": "Donggongon",
    "country_id": "country:97"
  },
  {
    "id": "city:10928",
    "name": "Westminster",
    "country_id": "country:43"
  },
  {
    "id": "city:2074",
    "name": "Eskişehir",
    "country_id": "country:34"
  },
  {
    "id": "city:3137",
    "name": "Leh",
    "country_id": "country:55"
  },
  {
    "id": "city:10209",
    "name": "Kuşadası",
    "country_id": "country:34"
  },
  {
    "id": "city:6492",
    "name": "Hamm",
    "country_id": "country:18"
  },
  {
    "id": "city:3962",
    "name": "Ciudad del Este",
    "country_id": "country:197"
  },
  {
    "id": "city:2015",
    "name": "Larissa",
    "country_id": "country:33"
  },
  {
    "id": "city:4759",
    "name": "Christiansted",
    "country_id": "country:43"
  },
  {
    "id": "city:2372",
    "name": "Nouméa",
    "country_id": "country:14"
  },
  {
    "id": "city:1225456",
    "name": "Khyrdalan",
    "country_id": "country:228"
  },
  {
    "id": "city:8718",
    "name": "Suncheon city",
    "country_id": "country:91"
  },
  {
    "id": "city:6919",
    "name": "Solihull",
    "country_id": "country:1"
  },
  {
    "id": "city:206503",
    "name": "Birmingham",
    "country_id": "country:43"
  },
  {
    "id": "city:945389",
    "name": "Al Jahra",
    "country_id": "country:177"
  },
  {
    "id": "city:622278",
    "name": "Stratford",
    "country_id": "country:49"
  },
  {
    "id": "city:2519",
    "name": "Rionegro",
    "country_id": "country:98"
  },
  {
    "id": "city:9655",
    "name": "Chorzów",
    "country_id": "country:21"
  },
  {
    "id": "city:8857",
    "name": "Larache",
    "country_id": "country:45"
  },
  {
    "id": "city:9593",
    "name": "Przemyśl",
    "country_id": "country:21"
  },
  {
    "id": "city:3018",
    "name": "Murmansk",
    "country_id": "country:37"
  },
  {
    "id": "city:9641",
    "name": "Jelenia Góra",
    "country_id": "country:21"
  },
  {
    "id": "city:3415",
    "name": "Haikou",
    "country_id": "country:78"
  },
  {
    "id": "city:5145",
    "name": "São Lourenço da Mata",
    "country_id": "country:67"
  },
  {
    "id": "city:501",
    "name": "Osijek",
    "country_id": "country:27"
  },
  {
    "id": "city:3374",
    "name": "Albury",
    "country_id": "country:73"
  },
  {
    "id": "city:9688",
    "name": "Encarnacion",
    "country_id": "country:197"
  },
  {
    "id": "city:6610",
    "name": "Birkhadem",
    "country_id": "country:102"
  },
  {
    "id": "city:8258",
    "name": "Sesto San Giovanni",
    "country_id": "country:20"
  },
  {
    "id": "city:8102",
    "name": "Gaddi Annaram",
    "country_id": "country:55"
  },
  {
    "id": "city:6906",
    "name": "Swindon",
    "country_id": "country:1"
  },
  {
    "id": "city:2856",
    "name": "Antofagasta",
    "country_id": "country:195"
  },
  {
    "id": "city:3764",
    "name": "Jackson",
    "country_id": "country:43"
  },
  {
    "id": "city:6448",
    "name": "Oberhausen",
    "country_id": "country:18"
  },
  {
    "id": "city:1022",
    "name": "Norrköping",
    "country_id": "country:6"
  },
  {
    "id": "region:32381",
    "name": "Tagaytay",
    "country_id": "country:94"
  },
  {
    "id": "city:10119",
    "name": "Ban Mai",
    "country_id": "country:47"
  },
  {
    "id": "city:3786",
    "name": "Santa Maria",
    "country_id": "country:67"
  },
  {
    "id": "city:2871",
    "name": "Guayaquil",
    "country_id": "country:82"
  },
  {
    "id": "region:24522",
    "name": "Armavir",
    "country_id": "country:229"
  },
  {
    "id": "city:8506",
    "name": "Koganei",
    "country_id": "country:75"
  },
  {
    "id": "city:2852",
    "name": "Punta Arenas",
    "country_id": "country:195"
  },
  {
    "id": "city:3451",
    "name": "Chongqing",
    "country_id": "country:78"
  },
  {
    "id": "city:10740",
    "name": "Yonkers",
    "country_id": "country:43"
  },
  {
    "id": "city:2981",
    "name": "Almaty",
    "country_id": "country:212"
  },
  {
    "id": "city:9643",
    "name": "Jastrzębie-Zdrój",
    "country_id": "country:21"
  },
  {
    "id": "city:1020",
    "name": "Gävle",
    "country_id": "country:6"
  },
  {
    "id": "city:8260",
    "name": "Savona",
    "country_id": "country:20"
  },
  {
    "id": "city:9358",
    "name": "Talisay",
    "country_id": "country:94"
  },
  {
    "id": "city:1749",
    "name": "Midland",
    "country_id": "country:43"
  },
  {
    "id": "city:34",
    "name": "Minsk",
    "country_id": "country:35"
  },
  {
    "id": "city:395",
    "name": "Kavala",
    "country_id": "country:33"
  },
  {
    "id": "city:8250",
    "name": "Udine",
    "country_id": "country:20"
  },
  {
    "id": "city:424563",
    "name": "Chalchuapa",
    "country_id": "country:157"
  },
  {
    "id": "city:10896",
    "name": "South Whittier",
    "country_id": "country:43"
  },
  {
    "id": "city:8751",
    "name": "Tsiuentcheou",
    "country_id": "country:91"
  },
  {
    "id": "city:5424",
    "name": "Bento Gonçalves",
    "country_id": "country:67"
  },
  {
    "id": "city:6543",
    "name": "Halle Neustadt",
    "country_id": "country:18"
  },
  {
    "id": "city:9782",
    "name": "Smolensk",
    "country_id": "country:37"
  },
  {
    "id": "city:7001",
    "name": "Dudley",
    "country_id": "country:1"
  },
  {
    "id": "city:850",
    "name": "Kiel",
    "country_id": "country:18"
  },
  {
    "id": "city:10301",
    "name": "San Fernando",
    "country_id": "country:70"
  },
  {
    "id": "city:8255",
    "name": "Terni",
    "country_id": "country:20"
  },
  {
    "id": "city:446",
    "name": "Kayseri",
    "country_id": "country:34"
  },
  {
    "id": "city:840",
    "name": "Gabes",
    "country_id": "country:46"
  },
  {
    "id": "city:3897",
    "name": "Albacete",
    "country_id": "country:13"
  },
  {
    "id": "city:9847",
    "name": "Magnitogorsk",
    "country_id": "country:37"
  },
  {
    "id": "city:211046",
    "name": "Wausau",
    "country_id": "country:43"
  },
  {
    "id": "city:6489",
    "name": "Heilbronn",
    "country_id": "country:18"
  },
  {
    "id": "city:2154",
    "name": "San Jose Del Cabo",
    "country_id": "country:50"
  },
  {
    "id": "city:3470",
    "name": "Hamilton",
    "country_id": "country:230"
  },
  {
    "id": "city:7123",
    "name": "Nyíregyháza",
    "country_id": "country:26"
  },
  {
    "id": "city:5592",
    "name": "Ovalle",
    "country_id": "country:195"
  },
  {
    "id": "city:147834",
    "name": "Saint John",
    "country_id": "country:49"
  },
  {
    "id": "city:9866",
    "name": "Kostroma",
    "country_id": "country:37"
  },
  {
    "id": "city:2497",
    "name": "Cali",
    "country_id": "country:98"
  },
  {
    "id": "city:8565",
    "name": "Hirakata",
    "country_id": "country:75"
  },
  {
    "id": "city:1660",
    "name": "Fort Huachuca",
    "country_id": "country:43"
  },
  {
    "id": "city:6785",
    "name": "Palencia",
    "country_id": "country:13"
  },
  {
    "id": "city:5490",
    "name": "Burlington",
    "country_id": "country:49"
  },
  {
    "id": "city:3552",
    "name": "Rockford",
    "country_id": "country:43"
  },
  {
    "id": "city:1568",
    "name": "Akron",
    "country_id": "country:43"
  },
  {
    "id": "city:1625",
    "name": "Columbia",
    "country_id": "country:43"
  },
  {
    "id": "city:6403",
    "name": "Wuppertal",
    "country_id": "country:18"
  },
  {
    "id": "city:1658",
    "name": "Fresno",
    "country_id": "country:43"
  },
  {
    "id": "city:10899",
    "name": "Thousand Oaks",
    "country_id": "country:43"
  },
  {
    "id": "city:7053",
    "name": "Nungua",
    "country_id": "country:105"
  },
  {
    "id": "city:2466",
    "name": "Karachi",
    "country_id": "country:81"
  },
  {
    "id": "city:2533",
    "name": "Baghdad",
    "country_id": "country:179"
  },
  {
    "id": "city:3968",
    "name": "Ağrı",
    "country_id": "country:34"
  },
  {
    "id": "city:10206",
    "name": "Manisa",
    "country_id": "country:34"
  },
  {
    "id": "city:188",
    "name": "Oulu",
    "country_id": "country:7"
  },
  {
    "id": "city:2090",
    "name": "Santiago de los Caballeros",
    "country_id": "country:60"
  },
  {
    "id": "city:10764",
    "name": "Catalina Foothills",
    "country_id": "country:43"
  },
  {
    "id": "city:10738",
    "name": "Utica",
    "country_id": "country:43"
  },
  {
    "id": "city:4052",
    "name": "Syros",
    "country_id": "country:33"
  },
  {
    "id": "city:5558",
    "name": "Winterthur",
    "country_id": "country:19"
  },
  {
    "id": "city:2948",
    "name": "Canefield",
    "country_id": "country:203"
  },
  {
    "id": "city:8404",
    "name": "Tachikawa",
    "country_id": "country:75"
  },
  {
    "id": "city:5125",
    "name": "Muharraq",
    "country_id": "country:173"
  },
  {
    "id": "city:2920",
    "name": "Ciudad Bolívar",
    "country_id": "country:65"
  },
  {
    "id": "city:1980",
    "name": "Orléans",
    "country_id": "country:14"
  },
  {
    "id": "city:5337",
    "name": "Itatiba",
    "country_id": "country:67"
  },
  {
    "id": "city:10435",
    "name": "Coral Springs",
    "country_id": "country:43"
  },
  {
    "id": "city:4042",
    "name": "Tartu",
    "country_id": "country:9"
  },
  {
    "id": "city:8286",
    "name": "Manfredonia",
    "country_id": "country:20"
  },
  {
    "id": "city:998",
    "name": "Zielona Góra",
    "country_id": "country:21"
  },
  {
    "id": "city:8301",
    "name": "Faenza",
    "country_id": "country:20"
  },
  {
    "id": "city:3410",
    "name": "Taiyuan",
    "country_id": "country:78"
  },
  {
    "id": "city:445",
    "name": "Erzurum",
    "country_id": "country:34"
  },
  {
    "id": "city:8308",
    "name": "Chieti",
    "country_id": "country:20"
  },
  {
    "id": "city:9386",
    "name": "Patuto",
    "country_id": "country:94"
  },
  {
    "id": "city:8713",
    "name": "Wanju",
    "country_id": "country:91"
  },
  {
    "id": "city:10557",
    "name": "Denton",
    "country_id": "country:43"
  },
  {
    "id": "city:6494",
    "name": "Hagen",
    "country_id": "country:18"
  },
  {
    "id": "city:174",
    "name": "Pristina",
    "country_id": "country:233"
  },
  {
    "id": "city:5929",
    "name": "Leshan",
    "country_id": "country:78"
  },
  {
    "id": "city:221127",
    "name": "Sheboygan",
    "country_id": "country:43"
  },
  {
    "id": "city:78248",
    "name": "Lichfield",
    "country_id": "country:1"
  },
  {
    "id": "city:768262",
    "name": "Aso",
    "country_id": "country:75"
  },
  {
    "id": "city:1986",
    "name": "Troyes",
    "country_id": "country:14"
  },
  {
    "id": "city:9752",
    "name": "Yaroslavl",
    "country_id": "country:37"
  },
  {
    "id": "city:3277",
    "name": "Bandung",
    "country_id": "country:93"
  },
  {
    "id": "city:6531",
    "name": "Bochum",
    "country_id": "country:18"
  },
  {
    "id": "city:3576",
    "name": "Antakya",
    "country_id": "country:34"
  },
  {
    "id": "city:499260",
    "name": "Jeonju",
    "country_id": "country:91"
  },
  {
    "id": "city:79090",
    "name": "Santarém",
    "country_id": "country:12"
  },
  {
    "id": "city:318",
    "name": "Dakar",
    "country_id": "country:53"
  },
  {
    "id": "city:157248",
    "name": "Santa Fe Springs",
    "country_id": "country:43"
  },
  {
    "id": "city:1831",
    "name": "Riverside",
    "country_id": "country:43"
  },
  {
    "id": "city:3643",
    "name": "Nizhny Novgorod",
    "country_id": "country:37"
  },
  {
    "id": "city:3209",
    "name": "Khon Kaen",
    "country_id": "country:47"
  },
  {
    "id": "city:11218",
    "name": "Skiwelt",
    "country_id": "country:23"
  },
  {
    "id": "city:890",
    "name": "Jyväskylä",
    "country_id": "country:7"
  },
  {
    "id": "city:6479",
    "name": "Kaiserslautern",
    "country_id": "country:18"
  },
  {
    "id": "city:740",
    "name": "Algiers",
    "country_id": "country:102"
  },
  {
    "id": "city:8323",
    "name": "Benevento",
    "country_id": "country:20"
  },
  {
    "id": "city:566795",
    "name": "Jericho",
    "country_id": "region:2005732"
  },
  {
    "id": "city:7108",
    "name": "Slavonski Brod",
    "country_id": "country:27"
  },
  {
    "id": "city:10737",
    "name": "Troy",
    "country_id": "country:43"
  },
  {
    "id": "city:3744",
    "name": "Brest",
    "country_id": "country:35"
  },
  {
    "id": "city:9614",
    "name": "Tychy",
    "country_id": "country:21"
  },
  {
    "id": "city:6409",
    "name": "Wiesbaden",
    "country_id": "country:18"
  },
  {
    "id": "city:5527",
    "name": "St. Catharines",
    "country_id": "country:49"
  },
  {
    "id": "city:9832",
    "name": "Veliky Novgorod",
    "country_id": "country:37"
  },
  {
    "id": "city:2531",
    "name": "Valledupar",
    "country_id": "country:98"
  },
  {
    "id": "city:2710",
    "name": "Salta",
    "country_id": "country:74"
  },
  {
    "id": "city:3201",
    "name": "Songkhla",
    "country_id": "country:47"
  },
  {
    "id": "city:3642",
    "name": "Lleida",
    "country_id": "country:13"
  },
  {
    "id": "city:927701",
    "name": "Magnitogorsk",
    "country_id": "country:37"
  },
  {
    "id": "city:2982",
    "name": "Astana",
    "country_id": "country:212"
  },
  {
    "id": "city:500",
    "name": "Debrecen",
    "country_id": "country:26"
  },
  {
    "id": "city:4683",
    "name": "Ormoc",
    "country_id": "country:94"
  },
  {
    "id": "city:10334",
    "name": "Vinnytsia",
    "country_id": "country:36"
  },
  {
    "id": "city:358",
    "name": "Saarbrücken",
    "country_id": "country:18"
  },
  {
    "id": "city:500581",
    "name": "Ilion",
    "country_id": "country:33"
  },
  {
    "id": "city:10227",
    "name": "Doğubayazıt",
    "country_id": "country:34"
  },
  {
    "id": "city:3042",
    "name": "Magnetiogorsk",
    "country_id": "country:37"
  },
  {
    "id": "city:335",
    "name": "Mombasa",
    "country_id": "country:62"
  },
  {
    "id": "city:3444",
    "name": "Nanjing",
    "country_id": "country:78"
  },
  {
    "id": "city:6474",
    "name": "Landshut",
    "country_id": "country:18"
  },
  {
    "id": "city:7013",
    "name": "Cheshunt",
    "country_id": "country:1"
  },
  {
    "id": "city:9042",
    "name": "Garza García",
    "country_id": "country:50"
  },
  {
    "id": "city:2072",
    "name": "Balıkesir",
    "country_id": "country:34"
  },
  {
    "id": "city:1756",
    "name": "McAllen",
    "country_id": "country:43"
  },
  {
    "id": "city:673",
    "name": "St. John",
    "country_id": "country:49"
  },
  {
    "id": "city:3478",
    "name": "Erbil",
    "country_id": "country:179"
  },
  {
    "id": "city:8978",
    "name": "Comitán de Dominguez",
    "country_id": "country:50"
  },
  {
    "id": "city:281",
    "name": "Halle (Saale)",
    "country_id": "country:18"
  },
  {
    "id": "city:1718",
    "name": "Wichita",
    "country_id": "country:43"
  },
  {
    "id": "city:3863",
    "name": "Saguenay",
    "country_id": "country:49"
  },
  {
    "id": "city:1156550",
    "name": "Jıncheng",
    "country_id": "country:78"
  },
  {
    "id": "city:2393",
    "name": "Bahrain",
    "country_id": "country:173"
  },
  {
    "id": "city:2866",
    "name": "Valdivia",
    "country_id": "country:195"
  },
  {
    "id": "city:10883",
    "name": "San Mateo",
    "country_id": "country:43"
  },
  {
    "id": "city:2675",
    "name": "Bacolod",
    "country_id": "country:94"
  },
  {
    "id": "city:8611",
    "name": "Ashikaga",
    "country_id": "country:75"
  },
  {
    "id": "city:8267",
    "name": "Reggio nell'Emilia",
    "country_id": "country:20"
  },
  {
    "id": "city:10915",
    "name": "Whittier",
    "country_id": "country:43"
  },
  {
    "id": "city:10182",
    "name": "Tarsus",
    "country_id": "country:34"
  },
  {
    "id": "city:4637",
    "name": "Oxnard",
    "country_id": "country:43"
  },
  {
    "id": "city:378",
    "name": "Odessa",
    "country_id": "country:36"
  },
  {
    "id": "city:299672",
    "name": "Krasnoyarsk",
    "country_id": "country:37"
  },
  {
    "id": "city:2863",
    "name": "Temuco",
    "country_id": "country:195"
  },
  {
    "id": "city:2848",
    "name": "Arica",
    "country_id": "country:195"
  },
  {
    "id": "city:6557",
    "name": "San Cristóbal",
    "country_id": "country:60"
  },
  {
    "id": "city:8600",
    "name": "Fuchū",
    "country_id": "country:75"
  },
  {
    "id": "city:6899",
    "name": "Warrington",
    "country_id": "country:1"
  },
  {
    "id": "city:10170",
    "name": "Kairouan",
    "country_id": "country:46"
  },
  {
    "id": "city:3868",
    "name": "Taganrog",
    "country_id": "country:37"
  },
  {
    "id": "city:1794",
    "name": "Pensacola",
    "country_id": "country:43"
  },
  {
    "id": "city:10231",
    "name": "Burdur",
    "country_id": "country:34"
  },
  {
    "id": "city:8822",
    "name": "Klaipėda",
    "country_id": "country:11"
  },
  {
    "id": "city:4940",
    "name": "Saint John",
    "country_id": "country:49"
  },
  {
    "id": "city:1735",
    "name": "Lubbock",
    "country_id": "country:43"
  },
  {
    "id": "city:455",
    "name": "Hamilton",
    "country_id": "country:49"
  },
  {
    "id": "city:10853",
    "name": "Oceanside",
    "country_id": "country:43"
  },
  {
    "id": "city:10473",
    "name": "The Hammocks",
    "country_id": "country:43"
  },
  {
    "id": "city:10440",
    "name": "East Pensacola Heights",
    "country_id": "country:43"
  },
  {
    "id": "city:694058",
    "name": "Nanjō",
    "country_id": "country:75"
  },
  {
    "id": "city:1606",
    "name": "Columbia",
    "country_id": "country:43"
  },
  {
    "id": "city:293",
    "name": "Westerland",
    "country_id": "country:18"
  },
  {
    "id": "city:4553",
    "name": "Sinop",
    "country_id": "country:34"
  },
  {
    "id": "city:2621",
    "name": "Toyama",
    "country_id": "country:75"
  },
  {
    "id": "city:2709",
    "name": "Posadas",
    "country_id": "country:74"
  },
  {
    "id": "city:1762",
    "name": "Melbourne",
    "country_id": "country:43"
  },
  {
    "id": "city:2637",
    "name": "Sendai",
    "country_id": "country:75"
  },
  {
    "id": "city:6939",
    "name": "Poole",
    "country_id": "country:1"
  },
  {
    "id": "city:2558",
    "name": "Molokai",
    "country_id": "country:43"
  },
  {
    "id": "city:6509",
    "name": "Frankfurt (Oder)",
    "country_id": "country:18"
  },
  {
    "id": "city:1682",
    "name": "Gainesville",
    "country_id": "country:43"
  },
  {
    "id": "city:9700",
    "name": "Sfântu Gheorghe",
    "country_id": "country:31"
  },
  {
    "id": "city:3884",
    "name": "Provo",
    "country_id": "country:43"
  },
  {
    "id": "city:153202",
    "name": "Coeur d'Alene",
    "country_id": "country:43"
  },
  {
    "id": "city:10431",
    "name": "Cape Coral",
    "country_id": "country:43"
  },
  {
    "id": "city:4974",
    "name": "Durrës",
    "country_id": "country:30"
  },
  {
    "id": "city:6555",
    "name": "La Vega",
    "country_id": "country:60"
  },
  {
    "id": "city:1360305",
    "name": "Shepparton",
    "country_id": "country:73"
  },
  {
    "id": "city:10401",
    "name": "Brovary",
    "country_id": "country:36"
  },
  {
    "id": "city:10762",
    "name": "Buckeye",
    "country_id": "country:43"
  },
  {
    "id": "city:1208400",
    "name": "Monrovia",
    "country_id": "country:43"
  },
  {
    "id": "city:1373401",
    "name": "Warrnambool",
    "country_id": "country:73"
  },
  {
    "id": "city:899",
    "name": "Pori",
    "country_id": "country:7"
  },
  {
    "id": "city:3330",
    "name": "Sibu",
    "country_id": "country:97"
  },
  {
    "id": "city:2559",
    "name": "Lanai",
    "country_id": "country:43"
  },
  {
    "id": "city:2223",
    "name": "Freeport",
    "country_id": "country:64"
  },
  {
    "id": "city:1598",
    "name": "Brownsville",
    "country_id": "country:43"
  },
  {
    "id": "region:23400",
    "name": "Harrisonburg",
    "country_id": "country:43"
  },
  {
    "id": "city:2826",
    "name": "Chiclayo",
    "country_id": "country:99"
  },
  {
    "id": "city:5159",
    "name": "Olinda",
    "country_id": "country:67"
  },
  {
    "id": "city:9006",
    "name": "Tonalá",
    "country_id": "country:50"
  },
  {
    "id": "city:9735",
    "name": "Subotica",
    "country_id": "country:29"
  },
  {
    "id": "city:401974",
    "name": "Belmopan",
    "country_id": "country:160"
  },
  {
    "id": "city:8759",
    "name": "Ansan-si",
    "country_id": "country:91"
  },
  {
    "id": "city:5487",
    "name": "Brampton",
    "country_id": "country:49"
  },
  {
    "id": "city:835",
    "name": "Niamey",
    "country_id": "country:108"
  },
  {
    "id": "city:8338",
    "name": "Spanish Town",
    "country_id": "country:63"
  },
  {
    "id": "city:9098",
    "name": "Kampong Baharu Balakong",
    "country_id": "country:97"
  },
  {
    "id": "city:1207541",
    "name": "Irvine",
    "country_id": "country:43"
  },
  {
    "id": "city:2011",
    "name": "Kastellorizo",
    "country_id": "country:33"
  },
  {
    "id": "city:3570",
    "name": "Papeete",
    "country_id": "country:14"
  },
  {
    "id": "city:1588",
    "name": "Bangor",
    "country_id": "country:43"
  },
  {
    "id": "city:2787",
    "name": "Maceió",
    "country_id": "country:67"
  },
  {
    "id": "city:866",
    "name": "Emden",
    "country_id": "country:18"
  },
  {
    "id": "city:10577",
    "name": "Plano",
    "country_id": "country:43"
  },
  {
    "id": "city:3298",
    "name": "Banjarmasin",
    "country_id": "country:93"
  },
  {
    "id": "city:1059",
    "name": "Upington",
    "country_id": "country:85"
  },
  {
    "id": "city:8495",
    "name": "Kurashiki",
    "country_id": "country:75"
  },
  {
    "id": "city:1206968",
    "name": "El Segundo",
    "country_id": "country:43"
  },
  {
    "id": "city:10981",
    "name": "Enchanted Hills",
    "country_id": "country:43"
  },
  {
    "id": "city:2205",
    "name": "Las Tunas",
    "country_id": "country:51"
  },
  {
    "id": "city:769504",
    "name": "Naka",
    "country_id": "country:75"
  },
  {
    "id": "city:2680",
    "name": "Puerto Princesa",
    "country_id": "country:94"
  },
  {
    "id": "city:3282",
    "name": "Batam City",
    "country_id": "country:93"
  },
  {
    "id": "city:3480",
    "name": "Chiang Rai",
    "country_id": "country:47"
  },
  {
    "id": "city:10514",
    "name": "Lee's Summit",
    "country_id": "country:43"
  },
  {
    "id": "city:3580",
    "name": "Mashhad",
    "country_id": "country:176"
  },
  {
    "id": "city:8765",
    "name": "Hanam-si",
    "country_id": "country:91"
  },
  {
    "id": "city:2546",
    "name": "Barking Sands",
    "country_id": "country:43"
  },
  {
    "id": "city:481",
    "name": "Pantelleria",
    "country_id": "country:20"
  },
  {
    "id": "city:288",
    "name": "Balaton",
    "country_id": "country:26"
  },
  {
    "id": "city:2867",
    "name": "Ambato",
    "country_id": "country:82"
  },
  {
    "id": "city:3329",
    "name": "Miri",
    "country_id": "country:97"
  },
  {
    "id": "city:325",
    "name": "Whitehorse",
    "country_id": "country:49"
  },
  {
    "id": "city:2298",
    "name": "Tauranga",
    "country_id": "country:77"
  },
  {
    "id": "city:11092",
    "name": "Ferizaj",
    "country_id": "country:233"
  },
  {
    "id": "city:8518",
    "name": "Kawagoe",
    "country_id": "country:75"
  },
  {
    "id": "city:7664",
    "name": "Madhyamgram",
    "country_id": "country:55"
  },
  {
    "id": "city:2011101",
    "name": "Warren",
    "country_id": "country:43"
  },
  {
    "id": "city:6068",
    "name": "Dazhong",
    "country_id": "country:78"
  },
  {
    "id": "city:1924950",
    "name": "Sétif",
    "country_id": "country:102"
  },
  {
    "id": "city:1924371",
    "name": "Kaijiang",
    "country_id": "country:78"
  },
  {
    "id": "city:1922651",
    "name": "Parcelles Assainies",
    "country_id": "country:53"
  },
  {
    "id": "city:120221",
    "name": "Joondalup",
    "country_id": "country:73"
  },
  {
    "id": "city:77724",
    "name": "Mecca",
    "country_id": "country:175"
  },
  {
    "id": "city:8948",
    "name": "San Juan Bautista Tuxtepec",
    "country_id": "country:50"
  },
  {
    "id": "city:3443",
    "name": "Ningbo",
    "country_id": "country:78"
  },
  {
    "id": "city:9307",
    "name": "Hamilton",
    "country_id": "country:77"
  },
  {
    "id": "city:1894343",
    "name": "Ciudad Juárez",
    "country_id": "country:50"
  },
  {
    "id": "city:4359",
    "name": "Kostanay",
    "country_id": "country:212"
  },
  {
    "id": "city:7067",
    "name": "Conakry",
    "country_id": "country:141"
  },
  {
    "id": "city:4752",
    "name": "Tam Kỳ",
    "country_id": "country:83"
  },
  {
    "id": "city:5106",
    "name": "Vratsa",
    "country_id": "country:32"
  },
  {
    "id": "city:1845944",
    "name": "Chun'an",
    "country_id": "country:78"
  },
  {
    "id": "city:5822",
    "name": "Shanwei",
    "country_id": "country:78"
  },
  {
    "id": "city:4130",
    "name": "Yopal",
    "country_id": "country:98"
  },
  {
    "id": "city:1723309",
    "name": "Tanchang",
    "country_id": "country:78"
  },
  {
    "id": "city:6112",
    "name": "Baoding",
    "country_id": "country:78"
  },
  {
    "id": "city:1713843",
    "name": "Maasin",
    "country_id": "country:94"
  },
  {
    "id": "city:6331",
    "name": "Girardot",
    "country_id": "country:98"
  },
  {
    "id": "city:6330",
    "name": "Girón",
    "country_id": "country:98"
  },
  {
    "id": "city:1684965",
    "name": "Lechang",
    "country_id": "country:78"
  },
  {
    "id": "city:4919",
    "name": "Formentera",
    "country_id": "country:13"
  },
  {
    "id": "city:6064",
    "name": "Deqing",
    "country_id": "country:78"
  },
  {
    "id": "city:2383",
    "name": "Herat",
    "country_id": "country:172"
  },
  {
    "id": "city:5501",
    "name": "Guelph",
    "country_id": "country:49"
  },
  {
    "id": "city:1637409",
    "name": "Unzen",
    "country_id": "country:75"
  },
  {
    "id": "city:6593",
    "name": "Hamma Bouziane",
    "country_id": "country:102"
  },
  {
    "id": "city:1628502",
    "name": "Ganquan",
    "country_id": "country:78"
  },
  {
    "id": "city:1624283",
    "name": "Lianhua",
    "country_id": "country:78"
  },
  {
    "id": "city:1569476",
    "name": "Liquan",
    "country_id": "country:78"
  },
  {
    "id": "city:302109",
    "name": "Gawler",
    "country_id": "country:73"
  },
  {
    "id": "city:8355",
    "name": "Yono",
    "country_id": "country:75"
  },
  {
    "id": "city:1511790",
    "name": "Lianshui",
    "country_id": "country:78"
  },
  {
    "id": "city:86958",
    "name": "Safaga",
    "country_id": "country:40"
  },
  {
    "id": "city:1511784",
    "name": "Emeishan",
    "country_id": "country:78"
  },
  {
    "id": "city:8935",
    "name": "Texcoco de Mora",
    "country_id": "country:50"
  },
  {
    "id": "city:1478333",
    "name": "Yushan",
    "country_id": "country:78"
  },
  {
    "id": "city:4217",
    "name": "Tongren",
    "country_id": "country:78"
  },
  {
    "id": "city:1430592",
    "name": "Gojō",
    "country_id": "country:75"
  },
  {
    "id": "city:1030",
    "name": "East London",
    "country_id": "country:85"
  },
  {
    "id": "city:6056",
    "name": "Donghai",
    "country_id": "country:78"
  },
  {
    "id": "city:8098",
    "name": "Noida",
    "country_id": "country:55"
  },
  {
    "id": "city:9336",
    "name": "Puno",
    "country_id": "country:99"
  },
  {
    "id": "city:6080",
    "name": "Chuzhou",
    "country_id": "country:78"
  },
  {
    "id": "city:1347663",
    "name": "Guará",
    "country_id": "country:67"
  },
  {
    "id": "city:1339783",
    "name": "Mile",
    "country_id": "country:78"
  },
  {
    "id": "city:6596",
    "name": "Es Senia",
    "country_id": "country:102"
  },
  {
    "id": "city:5004",
    "name": "Pergamino",
    "country_id": "country:74"
  },
  {
    "id": "city:4613",
    "name": "Westray",
    "country_id": "country:1"
  },
  {
    "id": "city:1324322",
    "name": "Kira",
    "country_id": "country:149"
  },
  {
    "id": "city:2846",
    "name": "Ancud",
    "country_id": "country:195"
  },
  {
    "id": "city:9842",
    "name": "Murom",
    "country_id": "country:37"
  },
  {
    "id": "city:5818",
    "name": "Shaoxing",
    "country_id": "country:78"
  },
  {
    "id": "city:498304",
    "name": "Madinaty",
    "country_id": "country:40"
  },
  {
    "id": "city:11118",
    "name": "Rustenburg",
    "country_id": "country:85"
  },
  {
    "id": "city:86106",
    "name": "Airdrie",
    "country_id": "country:49"
  },
  {
    "id": "city:359665",
    "name": "Wuyi",
    "country_id": "country:78"
  },
  {
    "id": "city:6008",
    "name": "Yiyang",
    "country_id": "country:78"
  },
  {
    "id": "city:359555",
    "name": "Leizhou",
    "country_id": "country:78"
  },
  {
    "id": "city:5928",
    "name": "Lianjiang",
    "country_id": "country:78"
  },
  {
    "id": "city:7163",
    "name": "Tegal",
    "country_id": "country:93"
  },
  {
    "id": "city:5798",
    "name": "Suining",
    "country_id": "country:78"
  },
  {
    "id": "city:5693",
    "name": "Yingshang Chengguanzhen",
    "country_id": "country:78"
  },
  {
    "id": "city:5702",
    "name": "Yatou",
    "country_id": "country:78"
  },
  {
    "id": "city:8959",
    "name": "Metepec",
    "country_id": "country:50"
  },
  {
    "id": "city:5626",
    "name": "Shigatse",
    "country_id": "country:78"
  },
  {
    "id": "city:5737",
    "name": "Sanshui",
    "country_id": "country:78"
  },
  {
    "id": "region:1183128",
    "name": "Budhanilkantha",
    "country_id": "country:219"
  },
  {
    "id": "city:5035",
    "name": "Sheki",
    "country_id": "country:228"
  },
  {
    "id": "city:10457",
    "name": "Palm Bay",
    "country_id": "country:43"
  },
  {
    "id": "city:1168554",
    "name": "Hashima",
    "country_id": "country:75"
  },
  {
    "id": "city:1157988",
    "name": "Jin’an",
    "country_id": "country:78"
  },
  {
    "id": "city:1156459",
    "name": "Fancheng",
    "country_id": "country:78"
  },
  {
    "id": "city:767407",
    "name": "Mutsu",
    "country_id": "country:75"
  },
  {
    "id": "city:1149623",
    "name": "Kiyose",
    "country_id": "country:75"
  },
  {
    "id": "city:1132301",
    "name": "St Thomas",
    "country_id": "country:49"
  },
  {
    "id": "city:1115247",
    "name": "Yichuan",
    "country_id": "country:78"
  },
  {
    "id": "city:2607",
    "name": "Fukue",
    "country_id": "country:75"
  },
  {
    "id": "city:1108519",
    "name": "Heshigten Banner",
    "country_id": "country:78"
  },
  {
    "id": "city:1107665",
    "name": "Asakura",
    "country_id": "country:75"
  },
  {
    "id": "city:358278",
    "name": "Haiyan",
    "country_id": "country:78"
  },
  {
    "id": "city:1101651",
    "name": "Gjakovë",
    "country_id": "country:233"
  },
  {
    "id": "city:5506",
    "name": "Langley",
    "country_id": "country:49"
  },
  {
    "id": "city:378501",
    "name": "Sisophon",
    "country_id": "country:214"
  },
  {
    "id": "city:4753",
    "name": "Con Dao",
    "country_id": "country:83"
  },
  {
    "id": "city:3194",
    "name": "Lampang",
    "country_id": "country:47"
  },
  {
    "id": "city:950363",
    "name": "Merritt",
    "country_id": "country:49"
  },
  {
    "id": "city:416647",
    "name": "Nablus",
    "country_id": "region:2005732"
  },
  {
    "id": "city:863940",
    "name": "Yaita",
    "country_id": "country:75"
  },
  {
    "id": "city:862931",
    "name": "Governor's Harbour",
    "country_id": "country:64"
  },
  {
    "id": "city:5476",
    "name": "Maladzyechna",
    "country_id": "country:35"
  },
  {
    "id": "city:93978",
    "name": "Lovech",
    "country_id": "country:32"
  },
  {
    "id": "city:1023954",
    "name": "Lacombe",
    "country_id": "country:49"
  },
  {
    "id": "city:6019",
    "name": "Hancheng",
    "country_id": "country:78"
  },
  {
    "id": "city:2655",
    "name": "Kunsan",
    "country_id": "country:91"
  },
  {
    "id": "city:2633",
    "name": "Yamagata",
    "country_id": "country:75"
  },
  {
    "id": "city:2587",
    "name": "Niigata",
    "country_id": "country:75"
  },
  {
    "id": "city:1507",
    "name": "Malindi",
    "country_id": "country:62"
  },
  {
    "id": "city:1589",
    "name": "Birmingham - Jefferson County",
    "country_id": "country:43"
  },
  {
    "id": "city:1593",
    "name": "Bellingham",
    "country_id": "country:43"
  },
  {
    "id": "city:1498",
    "name": "Kisumu",
    "country_id": "country:62"
  },
  {
    "id": "city:1493",
    "name": "Djibouti",
    "country_id": "country:145"
  },
  {
    "id": "city:1549",
    "name": "Pemba Island",
    "country_id": "country:59"
  }]
}


# response = HTTParty.get('http://localhost:4001/citiesCode')

city_data[:citiesCode].each do |citycode|
  Code.create(city_code: citycode[:id], city_name: citycode[:name], country_id: citycode[:country_id])
end
