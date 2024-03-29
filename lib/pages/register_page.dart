import 'package:flutter/material.dart';
import 'package:flutter_chat_app/widgets/boton_azul.dart';
import 'package:flutter_chat_app/widgets/custom_input.dart';
import 'package:flutter_chat_app/widgets/logo.dart';
import 'package:flutter_chat_app/widgets/labels.dart';


class RegisterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                Logo(titulo: 'Registro'),
                _Form(),
                Labels(ruta: 'login', titulo:'¿Ya tienes una cuenta?', subtitulo: '¡Ingresa ahora!'),
                Text('Términos y condiciones de uso', style:TextStyle(fontWeight: FontWeight.w200))
              ],
            ),
          ),
        )
      )
   );
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {

  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children:  <Widget> [
          CustomInput(
            icon: Icons.perm_identity,
            placeholder: 'Nombre',
            keyboardType: TextInputType.text,
            textController: emailCtrl,
          ),
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            textController: passCtrl,
            isPassword: true,
          ),
          BotonAzul(
            texto: 'Ingrese', 
            onPressed: () {
            print (emailCtrl.text);
          })
        ],
      ),
    );
  }
}