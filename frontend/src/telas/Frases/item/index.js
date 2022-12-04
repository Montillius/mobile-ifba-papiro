import { useNavigation } from "@react-navigation/native";
import React from "react";
import { TouchableOpacity, Text, View } from "react-native";
import estilos from "./estilos";


export default function Item({ autor, frase }) {
    const navigation = useNavigation();

    return <>
        <TouchableOpacity onPress={() => { navigation.navigate("Autor", { autor: autor }) }} style={estilos.informacao}>
            <Text style={estilos.nome}>{frase}</Text>
        </TouchableOpacity>
        <View style={estilos.divisor} />
    </>
}