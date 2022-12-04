import React, { useState } from "react";
import { ActivityIndicator, FlatList, View } from "react-native";
import Item from "./item";
import { Frases } from "../../../frases";
import estilos from "../../estilos";


export default function Frase(item) {

    const [proximaPagina, setProximaPagina] = useState(1);
    const [frases, setFrases] = useState([Frases]);
    const [atualizando, setAtualizando] = useState(false)


    const carregaFrases = () => {
        const frasesLimite = Frases;
        const paginas = proximaPagina;

        const frases = frasesLimite.filter((item) => item.id <= (paginas * 6))

        setFrases(frases)
        setProximaPagina(paginas + 1)
        setAtualizando(false)
    }


    const atualizar = () => {
        setFrases([])
        setProximaPagina(1)
        setAtualizando(true)

        return carregaFrases();

    };

    function FooterList({ Load }){        
        return (
            <View style={estilos.espaco}>
                <ActivityIndicator size={25} color="#000000" />
            </View>
        )
    }


    return <>
        <FlatList
            data={frases}
            removeClippedSubviews={false}
            renderItem={({ item }) => <Item {...item} />}
            keyExtractor={({ id }) => String(id)}

            onEndReached={carregaFrases}
            onEndReachedThreshold={0.1}
            ListFooterComponent={<FooterList Load={atualizando} />}

            onRefresh={() => atualizar()}
            refreshing={atualizando}
        />
    </>
}