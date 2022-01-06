class CustomerModel{
  late String fullName;
  late String phone;
  late String email;
  late String password;

  CustomerModel({
    required this.fullName,
    required this.phone,
    required this.email,
    required this.password,
  });

  factory CustomerModel.nullValues(){
    return CustomerModel(
        fullName: "",
        phone: "",
        email: "",
        password: "");
  }

}