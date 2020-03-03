class TestList{
  List<int> getList(List<int> listUser){
    var list = listUser;
    var list2 = [1,...?list];

    return list2;
  }
}