import 'package:flutter/material.dart';
import 'package:appfunction/components/default_button.dart';
import 'package:appfunction/components/section_title.dart';
import 'package:appfunction/utils/constants.dart';


class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // this height only for demo
      // height: 500,
      width: double.infinity,
    
      child: Column(
        children: [
          SizedBox(height: rDefaultPadding * 2.5),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
            alignment: Alignment.topLeft,
            child: SectionTitle(
              title: "Contato",
              subTitle: "Entre em contato e saiba mais",
              color: Color(0xFF07E24A),
            ),
          ),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.only(top: rDefaultPadding * 2),
      padding: EdgeInsets.all(rDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [/*
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              SocialCard(
                color: Color(0xFFD9FFFC),
                iconSrc: "assets/images/skype.png",
                name: 'renan_qsantos',
                press: () {},
              ),
             
              SocialCard(
                color: Color(0xFFE8F0F9),
                iconSrc: "assets/images/linkedin.png",
                name: 'renan-qsantos',
                press: () {},
              ),
            ],
          ),*/
          SizedBox(height: rDefaultPadding * 2),
          ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: rDefaultPadding * 2.5,
        runSpacing: rDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Nome",
                hintText: "Digite seu nome",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Digite seu endereço de email",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Tipo de Projeto",
                hintText: "Selecione o tipo de projeto desejado",
              ),
            ),
          ),
          SizedBox(
            // height: 300,
            // TextField by default cover the height, i tryed to fix this problem but i cant
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Detalhes",
                hintText: "Informe todos os detalhes do projeto",
              ),
            ),
          ),
          SizedBox(height: rDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: "assets/images/contact_icon.png",
                text: "Enviar",
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
