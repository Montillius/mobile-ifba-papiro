import React, { useState } from "react";
import { ActivityIndicator, FlatList, View } from "react-native";
import Item from "./item";
import { Frases } from "../../../frases";
import estilos from "../../estilos";
import { getFrases } from "../../api";

export default function Frase(item) {

    const [proximaPagina, setProximaPagina] = useState(1);
    const [frases, setFrases] = useState([Frases]);
    const [atualizando, setAtualizando] = useState(false)


    getFrases = () => {
    const { frases, proximaPagina} = this.state;

    getFrases(proximaPagina, TAMANHO_PAGINA).then((maisFrases) => {
        console.log("frases:", maisFrases);
        if (maisFrases) {
            this.setState(
                {
                    frases: [...frases, ...maisFrases],
                    proximaPagina: proximaPagina + 1, 
                    atualizando: false
                }
            )
        }
    }).catch((erro) => {
        console.error("erro acessando os feeds:", erro);
    });
}
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

