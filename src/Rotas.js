import react from "react";
import { NavigationContainer } from "@react-navigation/native";
import { createNativeStackNavigator } from "@react-navigation/native-stack";
import Autor from "./telas/Autor";
import Frase from "./telas/Frases";

const Stack = createNativeStackNavigator();

export default function Rotas() {
    return <NavigationContainer>
        <Stack.Navigator
            screenOptions={{
                headerShown: false,
            }}>
            <Stack.Screen name="Frase" component={Frase} />
            <Stack.Screen name="Autor" component={Autor} />
        </Stack.Navigator>
    </NavigationContainer>
}
