import React, { useEffect, useState } from "react";
import { ActivityIndicator, Button, FlatList, View } from "react-native";
import Item from "./item";
import estilos from "../../estilos";
import axios from 'axios'

const FRASES_URL = "172.29.1.1:5000/"

export default function Frase(item) {

    const [proximaPagina, setProximaPagina] = useState(1);
    const [frases, setFrases] = useState([]);
    const [atualizando, setAtualizando] = useState(false)

    const getFrases = () => {
        axios.get(`http://172.29.1.1:5000/frases/${proximaPagina}/`)
            .then(res => {
                const fras = res.data;
                setFrases(fras);
            })
    }

    useEffect(() => {
        getFrases()
    }, [])

    const carregaFrases = () => {
        axios.get(`http://172.29.1.1:5000/frases/${proximaPagina + 1}/`)
            .then(res => {
                const fras = res.data;
                setFrases(frases.concat(fras));
                setAtualizando(true)
        }).finally(res => setAtualizando(false))
         setProximaPagina(proximaPagina + 1)
    }

    function FooterList({ Load }) {
        return (
            Load &&
            <View style={estilos.espaco}>
                <ActivityIndicator size={25} color="#000000" />
            </View>
        )
    }


    return <>
        <FlatList
            data={frases}
            removeClippedSubviews={false}
            renderItem={({ item, index }) => <Item key={index} {...item} />}
            onEndReachedThreshold={0.1}
            ListFooterComponent={<FooterList Load={atualizando} />}
        />
        <Button title="Carregar mais" onPress={carregaFrases} color="#ac6730"/>
    </>
}

