import React, { useEffect, useState } from "react";
import { ActivityIndicator, FlatList, View } from "react-native";
import Item from "./item";
import estilos from "../../estilos";
import axios from 'axios'

const FRASES_URL = "172.29.1.1:5000/"


export default function Frase(item) {

    const [proximaPagina, setProximaPagina] = useState(1);
    const [frases, setFrases] = useState([]);
    const [atualizando, setAtualizando] = useState(false)

    const getFrases = () => {
        const paginas = proximaPagina;
        const data = () => {
            axios.get(`172.29.1.1:5000/frases/1`)
            .then(res => {
                const frases = res.data;
                setFrases(frases);
                setProximaPagina(paginas + 1)
            })
        }
    }
    
    useEffect(() => {
        getFrases()
    }, [getFrases()])
    
    

    const atualizar = () => {
        setFrases([])
        setProximaPagina(1)
        setAtualizando(true)

        return carregaFrases();

    };

    function FooterList({ Load }) {
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


            onEndReachedThreshold={0.1}
            ListFooterComponent={<FooterList Load={atualizando} />}
        />
    </>
}

