import '../constants/app_images.dart';

class StepsModel 
{
  late String urlImage;
  late String title;
  late String body;

  StepsModel({required this.title, required this.body, required this.urlImage});
}

//TODO: DESCOBRIR ONDE COLOCAR
final List<StepsModel> stepsDonation = [
    StepsModel(
        title: "Como funciona a doação?",
        body: "Arraste para o lado e descubra quais são os passos para doar",
        urlImage: AppImages.DONATION_STEP_0),

    StepsModel(
        title: "Informe-se",
        body:
            "Leia as regras e requisitos necessários antes de sair de casa.\nÉ possível encontrá-los na aba 'Regras' e no botão 'Teste de aptidão'.",
        urlImage: AppImages.DONATION_STEP_1),

    StepsModel(
        title: "Encontre o hemocentro mais próximo",
        body: "É possível encontrá-lo na aba 'Mapa'",
        urlImage: AppImages.DONATION_STEP_2),

    StepsModel(
        title: "Preencha a ficha de cadastro",
        body:
            "No local, você irá fazer o cadastro e informar dados como nome, documento, endereço, formas de contato, etc.",
        urlImage:  AppImages.DONATION_STEP_4),

    StepsModel(
        title: "Pré-triagem",
        body:
            "Nesse momento irão medir sua pressão, fazer teste de anemia, medir temperatura e pesar para observar se está tudo bem com sua saúde.",
        urlImage:  AppImages.DONATION_STEP_7),

    StepsModel(
        title: "Triagem",
        body:
            "Na triagem a(o) enfermeira(o) realiza diversas perguntas para saber se você está apto a doar.",
        urlImage:  AppImages.DONATION_STEP_6),

    StepsModel(
        title: "Coleta de sangue",
        body:
            "Se passar pela triagem e pré-triagem e estiver tudo bem, você será encaminhado(a) para a sala de coleta para realizá-la.\n O procedimento leva de 8 a 12 minutos.",
        urlImage:  AppImages.DONATION_STEP_10),

    StepsModel(
        title: "Lanchinho",
        body:
            "Após a doação é recomendado se alimentar, por isso o hemocentro oferece um lanche.",
        urlImage:  AppImages.DONATION_STEP_11),

    StepsModel(
        title: "Fim",
        body:
            "Se caso der algum problema no seu exame, o hemocentro entrará em contato.\nÉ isso!! Tranquilo né? Agora que já sabe como funciona o processo, agende sua doação :) ",
        urlImage:  AppImages.DONATION_STEP_12),
  ];