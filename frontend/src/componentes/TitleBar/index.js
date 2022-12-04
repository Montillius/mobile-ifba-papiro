import React from "react";

import { View, Text } from 'react-native';
import estilos from "./estilos";


export default function TitleBar() {

    return <View style={estilos.conteudo}>
        <View style={estilos.total}>
            <Text style={estilos.descricao}>Papiro</Text>
        </View>
    </View>

}