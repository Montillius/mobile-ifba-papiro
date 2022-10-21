import React from "react";
import { Text, View } from "react-native";
import estilos from "./estilos";

export default function Autor({ route }) {

    const { autor } = route.params

    return <View style={estilos.informacao}>
        <Text style={estilos.dados}>Nome: <Text style={estilos.nome}>{autor}</Text></Text>
        <Text style={estilos.dados}>Idade: <Text style={estilos.nome}>Virá na nova atualização</Text></Text>
        <Text style={estilos.dados}>Gênero literário: <Text style={estilos.nome}>Virá na nova atualização</Text></Text>
        <Text style={estilos.dados}>Biografia: <Text style={estilos.nome}>Virá na nova atualização</Text></Text>
    </View>
}