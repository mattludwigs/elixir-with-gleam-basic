pub type User {
  User(name: String, age: Int)
}

pub fn make_user(name: String, age: Int) -> User {
  User(name: name, age: age)
}
