import { StyleSheet } from 'react-native';
import { cores } from '../../estilos';

export default StyleSheet.create({
  conteudo: {
    backgroundColor: cores.marrom,
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
    flexWrap: 'wrap',
    padding: 24,
  },
  descricao: {
    fontSize: 24,
    color: cores.claro,
    fontFamily: "RalewayBold",
  },
});