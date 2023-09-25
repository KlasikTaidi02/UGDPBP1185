import 'package:flutter/material.dart';
import 'package:cobaugd1/View/login.dart';
import 'package:cobaugd1/component/form_component.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController notelpController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  String selectedGender = '';
  bool isAgreed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              inputForm((p0) {
                if (p0 == null || p0.isEmpty) {
                  return 'username Tidak Boleh Kosong';
                }
                if (p0.toLowerCase() == 'anjing') {
                  return "Tidak Boleh Menggunakan kata kasar";
                }
                return null;
              },
                  controller: usernameController,
                  hintTxt: "Username",
                  helperTxt: "Masukkan Username Anda",
                  iconData: Icons.person),
              inputForm((p0) {
                if (p0 == null || p0.isEmpty) {
                  return 'Email Tidak Boleh Kosong';
                }
                if (!p0.contains('@')) {
                  return 'Email harus menggunakan @';
                }
                return null;
              },
                  controller: emailController,
                  hintTxt: "Email",
                  helperTxt: "contoh: ucup@gmail.com",
                  iconData: Icons.email),
              inputForm((p0) {
                if (p0 == null || p0.isEmpty) {
                  return 'Password tidak boleh kosong!';
                }
                if (p0.length < 5) {
                  return 'Password minimal 5 digit!';
                }
                return null;
              },
                  controller: passwordController,
                  hintTxt: "Password",
                  helperTxt: "xxxxx",
                  iconData: Icons.password,
                  password: true),
              inputForm((p0) {
                if (p0 == null || p0.isEmpty) {
                  return 'Nomor telepon tidak boleh kosong!';
                }
                return null;
              },
                  controller: notelpController,
                  hintTxt: "No. Telp",
                  helperTxt: "Masukkan nomor telepon anda!",
                  iconData: Icons.phone_android),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: SizedBox(
                  width: 350,
                  child: TextFormField(
                    readOnly: true,
                    controller: _dateController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Tanggal lahir tidak boleh kosong!';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Tanggal lahir",
                      filled: true,
                      helperText: "YYYY-MM-DD",
                      prefixIcon: Icon(Icons.calendar_today),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                    ),
                    onTap: () {
                      _selectDate();
                    },
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, top: 10),
                width: 350,
                child: Text(
                  'Gender',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                  textAlign: TextAlign.left,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 400, top: 10),
                title: Text('Laki-laki'),
                leading: Radio(
                  value: 'Laki-laki',
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 4.0),
                title: Text('Perempuan'),
                leading: Radio(
                  value: 'Perempuan',
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
              ),
              CheckboxListTile(
                title: Text(
                    'Saya setuju dengan segala syarat dan ketentuan yang berlaku!'),
                value: isAgreed,
                onChanged: (newValue) {
                  setState(() {
                    isAgreed = newValue!;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Map<String, dynamic> formData = {};
                    formData['username'] = usernameController.text;
                    formData['password'] = passwordController.text;

                    if (selectedGender.isNotEmpty) {
                      if (isAgreed) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Konfirmasi'),
                              content: Text('Apakah data anda sudah benar?'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Tidak'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) =>
                                            LoginView(data: formData),
                                      ),
                                    );
                                  },
                                  child: Text('Ya'),
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Peringatan'),
                              content: Text(
                                  'Anda harus menyetujui syarat dan ketentuan 				yang berlaku!'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    } else {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Peringatan'),
                            content: Text('Pilih jenis kelamin anda!'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  }
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));

    if (_picked != null) {
      setState(() {
        _dateController.text = _picked.toString().split(" ")[0];
      });
    }
  }
}
