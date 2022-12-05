const FRASES_URL = "172.29.1.1:5000/"


export const getFrases = async (pagina) => {
    let promise = null;

    console.log(FEEDS_URL + "frases/"+ pagina)

    try {
        resposta = await fetch(FRASES_URL + "frases/" + pagina, { method: "GET" });
        if (resposta.ok) {
            promise = Promise.resolve(resposta.json());
        } else {
            promise = Promise.reject(resposta);
        }
    } catch (erro) {
        promise = Promise.reject(erro);
    }

    return promise;
}

export const getFrase = async (fraseId) => {
    return acessarUrl(FRASE_URL + fraseId);
}

export const getImagem = (imagem) => {
    return { uri: ARQUIVOS_URL + imagem }
}