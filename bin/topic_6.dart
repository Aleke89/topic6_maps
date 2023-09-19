import 'dart:math';

void main(List<String> arguments) {
  // Task 1:
  // Map<String,int> map = {
  //   "first":1,
  //   "second":2,
  //   "third":3
  // };
  // map.forEach((key, value) {
  //   print(value*3);
  //  });

// Task 2:
  // List<int> list = [1, 2, 3];
  // List<int> lists = [4, 5, 6];
  // List<int> listt = [7, 8, 9];

  // Map<String, int> map = {};

  // List<int> resultList = List.generate(
  //   list.length,
  //   (index) {
  //     int sum = list[index] + lists[index] + listt[index];
  //     String key =
  //         'sum${index + 1}'; // Generate a key, e.g., 'sum1', 'sum2', 'sum3'
  //     map[key] = sum; // Add the sum to the map with the key
  //     return sum;
  //   },
  // );

  // print("Resultant List: $resultList");
  // print("Map: $map");

  // Task 3:

  // List list = ["First","Second","Third"];
  // Map<int,String> map = {};
  // list.map((e) => [e].toList());
  // print(list);

  // Task 4:
  // int base = 2;
  // int numberOfTerms = 5;
  // List<int> powersList = generatePowersList(base, numberOfTerms);
  // print("List of Powers: $powersList");

  // Task 5:
  // Map<int, String> map = {
  //   1: "a",
  //   2: "d",
  //   3: "s",
  //   4: "d",
  //   5: "c",
  //   6: "b",
  //   7: "a",
  // };
  // Map<int, String> deduplicatedMap = removeDuplicates(map);
  // Map<int, String> uppercaseMap = convertToUppercase(deduplicatedMap);
  // print("Original Map: $map");
  // print("Deduplicated Map: $deduplicatedMap");
  // print("Uppercase Map: $uppercaseMap");

  // Task 6:
  // List<int> list1 = [1, 2, 3, 4, 5];
  // List<int> list2 = [5, 4, 3, 2, 1];
  // List<int> sumList =
  //     List.generate(list1.length, (index) => list1[index] + list2[index]);
  // List<int> diffList =
  //     List.generate(list1.length, (index) => list1[index] - list2[index]);

  // Task 7:
  // var test = {1: "1", 2: "2", 3: "3", 4: "4", 5: "5"};
  // List<int> list = [];
  // test.values.forEach((element) {
  //     int? number = int.tryParse(element);
  //     list.add(number!);
  // });
  // print(list);

  // Task 8:
  // int n = 10;
  // List<int> fibonacciNumbers = generateFibonacci(n);
  // List<int> squaredFibonacci =
  //     fibonacciNumbers.map((int number) => number * number).toList();
  // print('Squared Fibonacci Numbers: $squaredFibonacci');

  // Task 9:
  // List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  // int sum = 0;
  // list.forEach((element) {
  //   sum += element;
  // });
  // print(sum);

  // Task 10:
  // List<int> numbers = [1, -2, 0, 3, -4, 0, 5, 0, -6];
  // int positive = 0;
  // int negative = 0;
  // int zero = 0;
  // numbers.forEach((element) {
  //   if(element<0){
  //     negative++;
  //   }else if(element==0){
  //     zero++;
  //   }else{
  //     positive++;
  //   }
  // });
  // print(positive/numbers.length);
  // print(negative/numbers.length);
  // print(zero/numbers.length);

  // Task 11:
  // List<int> list1 = [1, 2, 3, 4, 5];
  // List<int> list2 = [3, 4, 5, 6, 7];
  // print(list1.toSet().intersection(list2.toSet()).length);

  // Task 12:
  // List<int> list1 = [1, 2, 3, 4, 5];
  // List<int> list2 = [3, 4, 5, 6, 7];
  // List<int> list3 = [];

  // Random random = Random();
  // for (int i = 0; i < list1.length; i++) {
  //   int el = random.nextInt(2)+1;
  //   if (el == 1) {
  //     list3.add(list1[i]);
  //     list3.add(list2[i]);
  //   }
  // }
  // print(list3);

  // Task 13:
  //  Map<String, List<int>> dictionaryOfLists = {
  //   'A': [1, 2, 3],
  //   'B': [4, 5, 6],
  //   'C': [7, 8, 9],
  // };

  // List<Map<String, List>> list = [];

  // dictionaryOfLists.forEach((key, value) {
  //   Map<String, List> map = {key: value};
  //   list.add(map);
  // });

  // print(list);
}

List<int> generateFibonacci(int n) {
  List<int> fibonacciNumbers = [];
  if (n <= 0) {
    return fibonacciNumbers;
  }
  fibonacciNumbers.add(0);
  if (n == 1) {
    return fibonacciNumbers;
  }
  fibonacciNumbers.add(1);
  for (int i = 2; i < n; i++) {
    int nextFibonacci = fibonacciNumbers[i - 1] + fibonacciNumbers[i - 2];
    fibonacciNumbers.add(nextFibonacci);
  }
  return fibonacciNumbers;
}

Map<int, String> removeDuplicates(Map<int, String> originalMap) {
  Map<int, String> deduplicatedMap = {};

  originalMap.forEach((key, value) {
    if (!deduplicatedMap.containsValue(value)) {
      deduplicatedMap[key] = value;
    }
  });

  return deduplicatedMap;
}

Map<int, String> convertToUppercase(Map<int, String> inputMap) {
  Map<int, String> uppercaseMap = {};

  inputMap.forEach((key, value) {
    uppercaseMap[key] = value.toUpperCase();
  });

  return uppercaseMap;
}

List<int> generatePowersList(int base, int numberOfTerms) {
  return List<int>.generate(
    numberOfTerms,
    (index) => pow(base, index).toInt(),
  );
}
