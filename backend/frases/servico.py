from flask import Flask, jsonify
import mysql.connector as mysql
import urllib.request

servico = Flask(__name__)

# informacoes sobre o servico
DESCRICAO = "serviço que gerencia os feeds de produto"
VERSAO = "1.0.0"
AUTOR = "Otiliano R. de S. Junior"

MYSQL_SERVER = "bancodados"
MYSQL_USER = "root"
MYSQL_PASS = "admin"
MYSQL_DB = "db_papiro"

ALIVE = "yes"
DEBUG = True
TAMANHO_PAGINA = 3


def get_conexao_bd():

    conexao = mysql.connect(
        host=MYSQL_SERVER, user=MYSQL_USER, password=MYSQL_PASS, database=MYSQL_DB
    )
    return conexao


@servico.route("/is_alive", methods=["GET"])
def is_alive():
    return jsonify(alive = ALIVE)


@servico.route("/info", methods=["GET"])
def get_info():
    return jsonify(
        descricao=DESCRICAO,
        versao=VERSAO,
        autor=AUTOR,
    )


def gerar_frase(result):
    frase = {
        "_id": result["frases_id"],
        "autor": result["autor_id"],
        "frase": result["frase"],
        "dados_autor": {
            "nome": result["autor_nome"],
            "data_nascimento": result["autor_nascimento"],
            "genero": result["autor_genero"],
            "biografia": result["autor_biografia"],
            }
    }

    return frase

@servico.route("/frases/<int:pagina>/")
def get_frases(pagina):
    frases = []

    conexao = get_conexao_bd()
    cursor = conexao.cursor(dictionary=True)
    cursor.execute(
        "SELECT "+
            "b.nome as autor_nome, "+
            "DATE_FORMAT(b.data_nascimento, '%Y-%m-%d') as autor_nascimento, "+
            "b.genero as autor_genero, "+
            "b.biografia as autor_biografia, "+
            "a.id_frase as frases_id, "+
            "a.frase, "+
            "a.id_autor as autor_id "+
        "FROM dtb_frases a "+ 
        "JOIN dtb_autor b ON a.id_autor = b.id_autor " 
        "LIMIT " + str((pagina - 1) * TAMANHO_PAGINA) +
        ", " + str(TAMANHO_PAGINA)
    )
    result = cursor.fetchall()
    conexao.close()

    for registro in result:
        frases.append(gerar_frase(registro))
 
    return jsonify(frases)

def acessar(url):
    resposta = urllib.request.urlopen(url)
    dados = resposta.read()

    return dados.decode("utf-8")


if __name__ == "__main__":
    servico.run(
        host="0.0.0.0",
        debug=True
    )
