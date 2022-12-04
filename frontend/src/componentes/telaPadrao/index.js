import React from "react";
import { KeyboardAvoidingView, SafeAreaView, StatusBar } from "react-native";
import estilosGlobal, { cores } from "../../estilos"
import estilos from "./estilos";

export default function TelaPadrao({ children }) {
    return <>
        <SafeAreaView style={estilos.ajusteTela}>
            <StatusBar backgroundColor={cores.marrom} />
            <KeyboardAvoidingView
                behavior={Platform.OS === "android" ? "height" : "padding"}
                style={estilosGlobal.preencher}
            >
                {children}
            </KeyboardAvoidingView>
        </SafeAreaView>
        <SafeAreaView style={estilos.ajusteTelaBaixo}>
        </SafeAreaView>
    </>
}