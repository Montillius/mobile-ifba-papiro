import { StyleSheet } from 'react-native';
import { cores } from '../../estilos';

export default StyleSheet.create({
  informacao: {
    padding: 80
  },
  nome: {
    color: cores.marrom,
    fontSize: 16,
    fontFamily: "RalewayRegular"
  },
  divisor: {
    marginHorizontal: 24,
    borderBottomWidth: 1,
    borderBottomColor: cores.cinza,
  },
  dados:{
    color: cores.preto,
    fontSize: 16,
    fontFamily: "RalewayBold"
  }
});
