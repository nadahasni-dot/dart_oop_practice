void main(List<String> arguments) {
  //* list declaration
  List<String> myNumbers = [];
  List<int> list = [1, 3, 4, 7, 2, 5, 10, 8];

  //* add to list
  list.add(100);
  list.addAll([10, 99, 108]);

  //* insert into index
  list.insert(2, 88);
  list.insertAll(5, [10, 11, 12]);

  //* remove value from list
  list.remove(20);
  list.removeWhere((number) => number % 2 != 0); // remove odd
  list.removeRange(2, 4); // remove from index 2 & 3. stop before index 4  

  //* iterate each list using for
  // for (int i = 0; i < list.length; i++) {
  //   print(list[i]);
  // }
  // print('=========');

  //* iterate each list using for in
  // for (int number in list) {
  //   print(number);
  // }
  // print('=========');

  //* iterate each list using foreach
  list.forEach((number) {
    print('number ' + number.toString());
  });
  print('=========');

  //* map list into another form
  myNumbers = list.map((number) => 'my number is ' + number.toString()).toList();

  myNumbers.forEach((myNumber) {
    print(myNumber);
  });
}
