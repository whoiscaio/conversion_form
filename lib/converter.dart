class Converter {
  static String binaryToHexadecimal(String binary) {
    List<Map<String, String>> correspondents = [
      {
        "binary": "0000",
        "hexadecimal": "0"
      }, {
        "binary": "1000",
        "hexadecimal": "1",
      }, {
        "binary": "0100",
        "hexadecimal": "2",
      }, {
        "binary": "1100",
        "hexadecimal": "3",
      }, {
        "binary": "0010",
        "hexadecimal": "4",
      }, {
        "binary": "1010",
        "hexadecimal": "5",
      }, {
        "binary": "0110",
        "hexadecimal": "6",
      }, {
        "binary": "1110",
        "hexadecimal": "7",
      }, {
        "binary": "0001",
        "hexadecimal": "8",
      }, {
        "binary": "1001",
        "hexadecimal": "9",
      }, {
        "binary": "0101",
        "hexadecimal": "A",
      }, {
        "binary": "1101",
        "hexadecimal": "B",
      }, {
        "binary": "0011",
        "hexadecimal": "C",
      }, {
        "binary": "1011",
        "hexadecimal": "D",
      }, {
        "binary": "0111",
        "hexadecimal": "E",
      }, {
        "binary": "1111",
        "hexadecimal": "F",
      }
    ];

    String reversedBinary = binary.split("").reversed.join("");
    String hexadecimal = "";
    
    final value = reversedBinary.replaceAllMapped(RegExp(r".{4}"), (match) => "${match.group(0)} ");
    
    hexadecimal = value.split(" ").map((value) => (
      correspondents.firstWhere((item) => item["binary"] == value.padRight(4, "0"))["hexadecimal"]
    )).join("");
    
    return hexadecimal.split("").reversed.join("");
  }
}