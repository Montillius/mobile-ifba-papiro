import React from "react";
import 'intl';
import 'intl/locale-data/jsonp/pt-BR';
import Rotas from "./src/Rotas";
import TelaPadrao from "./src/componentes/telaPadrao"
import TitleBar from "./src/componentes/TitleBar";
import { useFonts, Raleway_700Bold_Italic, Raleway_400Regular } from '@expo-google-fonts/raleway'
import { View } from "react-native";


export default function App() {

  const [fonte] = useFonts({
    "RalewayBold": Raleway_700Bold_Italic,
    "RalewayRegular": Raleway_400Regular
  })

  if (!fonte) {
    return <View />
  }

  return <TelaPadrao>
    <TitleBar />
    <Rotas />
  </TelaPadrao>;

}
