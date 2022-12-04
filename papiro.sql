-- --------------------------------------------------------------------------
-- CRIAÇÃO do banco de dados db_papiro
-- --------------------------------------------------------------------------

DROP DATABASE IF EXISTS db_papiro; CREATE DATABASE db_papiro CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci; USE db_papiro;

-- --------------------------------------------------------------------------
-- CRIAÇÃO TABELA DE FRASES
-- --------------------------------------------------------------------------
  CREATE TABLE IF NOT EXISTS dtb_frases (
    id_frase INT(11) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    id_autor VARCHAR(20) DEFAULT NULL,
    frase VARCHAR(500) DEFAULT NULL,
    FOREIGN KEY (id_autor) REFERENCES dtb_autor (id_autor)
  ) ENGINE=MyISAM DEFAULT CHARSET=utf8;
    
-- --------------------------------------------------------------------------
-- CRIAÇÃO TABELA DE AUTORES
-- --------------------------------------------------------------------------
  
  CREATE TABLE IF NOT EXISTS dtb_autor (
	id_autor INT(11) UNSIGNED PRIMARY KEY AUTO_INCREMENT ,
	nome VARCHAR(200) DEFAULT NULL,
	data_nascimento date DEFAULT NULL,
	genero VARCHAR(100) DEFAULT NULL,
	biografia VARCHAR(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- --------------------------------------------------------------------------


-- --------------------------------------------------------------------------
-- INICIO INSERTS
-- --------------------------------------------------------------------------

-- --------------------------------------------------------------------------
-- INSERT EM FRASES
-- --------------------------------------------------------------------------

  INSERT INTO dtb_frases (id_frase, id_autor, frase) VALUES
  (1, 2, 'Os problemas são oportunidades para se mostrar o que sabe.'),
  (2, 1,'Nossos fracassos, às vezes, são mais frutíferos do que os êxitos.'),
  (3, 3, 'Tente de novo. Fracasse de novo. Mas fracasse melhor'),
  (4, 4, 'É costume de um tolo, quando erra, queixar-se dos outros. É costume de um sábio queixar-se de si mesmo'),
  (5, 5,'O verdadeiro heroísmo consiste em persistir por mais um momento, quando tudo parece perdido'),
  (6, 6,'Mesmo que já tenhas feito uma longa caminhada, há sempre um novo caminho a fazer'),
  (7, 7,'Na prosperidade, nossos amigos nos conhecem; na adversidade, nós é que conhecemos nossos amigos'),
  (8, 8,'A felicidade não está em fazer o que a gente quer, e sim querer o que a gente faz'),
  (9, 9,'Nada acontece a menos que sonhemos antes'),
  (10, 10,'É sempre divertido fazer o impossível'),
  (11, 11,'Experiência é o nome que cada um dá a seus erros'),
  (12, 12,'Lembre sempre que a sua vontade de triunfar é mais importante do que qualquer outra coisa'),
  (13, 13,'A arte de ser ora audacioso, ora prudente, é a arte de vencer'),
  (14, 14,'Seja corajoso. Mesmo que você não seja, finja ser. Ninguém nota a diferença'),
  (15, 15,'Não somos responsáveis apenas pelo que fazemos, mas também pelo que deixamos de fazer'),
  (16, 16,'Quando você contrata pessoas mais inteligentes do que você, prova que é mais inteligente do que elas'),
  (17, 17,'O talento vence jogos, mas só o trabalho em equipe vence campeonatos'),
  (18, 19, 'Toda empresa precisa ter gente que erra, que não tem medo de errar e que aprende com erro'),
  (19, 18,'Não deixe o ruído das opiniões dos outros abafar a sua própria voz interior'),
  (20, 18,'Decidir o que não fazer é tão importante quanto decidir o que fazer. Isso é verdadeiro para companhias e também para produtos'),
  (21, 18,'Seu tempo é limitado, então não o gaste vivendo a vida de outra pessoa'),
  (22, 12,'Não são os anos de sua vida que contam. É a vida em seus anos'),
  (23, 10,'Você pode construir o mais belo lugar do mundo, mas serão as pessoas que tornarão realidade o sonho'),
  (24, 11,'O acordo é o último recurso dos que não têm imaginação'),
  (25, 9,'Não sei aonde vou, mas já estou no caminho'),
  (26, 1, 'O insucesso é uma oportunidade para recomeçar com mais inteligência'),
  (27, 19, 'O sucesso é um professor traiçoeiro. Ele seduz pessoas inteligentes e as faz pensar que elas não podem perder tudo.'),
  (28, 19,'É genial festejar o sucesso, mas é mais importante aprender com as lições do fracasso.'),
  (29, 19,'Nunca se compare com ninguém neste mundo. Caso o faça, entenda que você estará insultando a si mesmo'),
  (30, 18, 'Inovação distingue um líder de um seguidor.'),
  (31, 18, 'A única maneira de fazer algo excelente é amar o que você faz. Se você ainda não a encontrou, continue procurando. Não se acomode.'),
  (32, 18, 'Seu tempo é limitado. Não gaste seu tempo vivendo a vida de outra pessoa.'),
  (33, 10,'Para começar, pare de falar e comece a fazer.'),
  (34, 10, 'Aprendi que o difícil não é chegar ao topo, mas sim nunca deixar de subir.'),
  (35, 1,'Pensar é o trabalho mais difícil que existe. Talvez por isso tão poucos se dediquem a ele.'),
  (36, 1,'Não encontro defeitos. Encontro soluções. Qualquer um sabe queixar-se.'),
  (37, 1,'Não é o empregador quem paga os salários, mas o cliente.'),
  (38, 6, 'O orgulho é a fonte de todas as fraquezas, porque é a fonte de todos os vícios.'),
  (39, 6, 'A medida do amor é amar sem medida.'),
  (40, 6, 'Ninguém faz bem o que faz contra a vontade, mesmo que seja bom o que faz.'),
  (41, 12,'Só tem o direito de criticar aquele que pretende ajudar.'),
  (42, 12,'Quando pratico o bem, sinto-me bem; quando pratico o mal, sinto-me mal. Eis a minha religião.'),
  (43, 20, 'A imaginação é mais importante que o conhecimento.'),
  (44, 20, 'Duas coisas são infinitas: o universo e a estupidez humana. Mas, em relação ao universo, ainda não tenho certeza absoluta.'),
  (45, 20,'Não tentes ser bem-sucedido, tenta antes ser um homem de valor.'),
  (46, 20, 'O importante é não parar de questionar.'),
  (47, 13,'Quem teme ser vencido tem a certeza da derrota.'),
  (48, 13,'Todo o homem luta com mais bravura pelos seus interesses do que pelos seus direitos.'),
  (49, 8, 'Quando os ricos estão em guerra, são os pobres que morrem.'),
  (50, 8, 'Tudo o que sei sobre a minha vida, ao que parece, aprendi em livros.'),
  (51, 8, 'O importante não é aquilo que fazem de nós, mas o que nós mesmos fazemos do que os outros fizeram de nós.'),
  (52, 7, 'Na vida o segredo do sucesso é conhecido apenas por aqueles que não são bem sucedidos.');
  
-- --------------------------------------------------------------------------
-- INSERT AUTORES
-- --------------------------------------------------------------------------

  INSERT INTO dtb_autor (id_autor, nome, data_nascimento, genero, biografia) VALUES
  (1, 'Henry Ford *', '1947/04/07', 'Empreendedor e engenheiro mecânico', ' Fundador da Ford Motor Company, autor dos livros Minha filosofia de indústria e Minha vida e minha obra, e o primeiro empresário a aplicar a montagem em série de forma a produzir em massa automóveis em menos tempo e a um menor custo.'),
  (2, 'Duke Ellington *', '1899/04/29', 'Compositor de jazz', ' Foi um compositor de jazz, pianista e líder de orquestra estadunidense eternizado com a alcunha de "The Duke" e distinguido com a Presidential Medal of Freedom em 1969 e com a Legião de Honra em 1973, sendo ambas as distinções as mais elevadas que um civil pode receber.'),
  (3, 'Samuel Beckett *', '1906/04/13', 'Dramaturgo e escritor', ' Beckett é amplamente considerado como um dos escritores mais influentes do século XX. Fortemente influenciado por James Joyce, ele é considerado um dos últimos modernistas. '),
  (4, 'Sócrates *', '399/02/15', 'Filósofo', 'Foi um filósofo ateniense do período clássico da Grécia Antiga. Creditado como um dos fundadores da filosofia ocidental, é até hoje uma figura enigmática, conhecida principalmente através dos relatos em obras de escritores que viveram mais tarde, especialmente dois de seus alunos.'),
  (5, 'W. F. Grenfel *', '1865/02/28', 'Missionário', 'A Missão Nacional Real para Pescadores de Mar Profundo enviou Grenfell à Terra Nova em 1892 para melhorar a situação dos habitantes costeiros e pescadores. [2] Essa missão começou para valer em 1892 [3] quando ele recrutou duas enfermeiras e dois médicos para hospitais em Indian Harbour, Labrador e mais tarde abriu hospitais caseiros ao longo da costa de Labrador. A missão expandiu-se muito de seu mandato inicial para o desenvolvimento de escolas, um orfanato, cooperativas, projetos de trabalho industrial e trabalho social.'),
  (6, 'Santo Agostinho *', '354/11/13', 'Teólogos', 'Aurélio Agostinho de Hipona, conhecido universalmente como Santo Agostinho, foi um dos mais importantes teólogos e filósofos nos primeiros séculos do cristianismo, cujas obras foram muito influentes no desenvolvimento do cristianismo e filosofia ocidental. Foi bispo de Hipona, uma cidade na província romana da África.'),
  (7, 'Churton Collins *', '1848/03/26', 'Escritor', 'Foi um crítico literário e conferencista inglês.'),
  (8, 'Jean-Paul Charles *', '1905/06/21', 'Filósofo', 'Foi um filósofo, escritor e crítico francês, conhecido como representante do existencialismo. Acreditava que os intelectuais têm de desempenhar um papel ativo na sociedade. Era um artista militante, e apoiou causas políticas de esquerda com a sua vida e a sua obra.'),
  (9, 'Carl Sandburg *', '1878/01/06', 'Poeta', 'Foi um poeta, historiador, novelista e folclorista estadunidense. Nasceu em Galesburg, Illinois de uma família de suecos e morreu em Flat Rock, Carolina do Norte. Tornou-se conhecido por suas poesias e sua biografia de Abraham Lincoln, pelas quais recebeu o Prêmio Pulitzer.'),
  (10, 'Walt Disney *', '1901/12/05', 'Empresário', 'Foi um animador, produtor de cinema e empresário americano. Pioneiro da indústria de animação americana, introduziu vários desenvolvimentos na produção de desenhos animados.'),
  (11, 'Oscar Wilde *', : '1854/10/16', 'Escritor', 'Oscar Fingal O"Flahertie Wills Wilde, ou simplesmente Oscar Wilde, foi um influente escritor, poeta e dramaturgo irlandês.'),
  (12, 'Abraham Lincoln *', '1809/02/12', 'Político', 'Foi um político norte-americano que serviu como o 16° presidente dos Estados Unidos, posto que ocupou de 4 de março de 1861 até seu assassinato em 15 de abril de 1865. Lincoln liderou o país de forma bem-sucedida durante sua maior crise interna, a Guerra Civil Americana, preservando a integridade territorial do país, abolindo a escravidão e fortalecendo o governo nacional.'),
  (13, 'Napoleão Bonaparte *', '1769/08/15', 'Estadista e líder militar', 'Foi um estadista e líder militar francês que ganhou destaque durante a Revolução Francesa e liderou várias campanhas militares de sucesso durante as Guerras Revolucionárias Francesas. Foi imperador dos franceses como Napoleão I de 1804 a 1814 e brevemente em 1815 durante os Cem Dias.'),
  (14, 'H. Jackson Brown Jr *', '1940/01/01', 'Escritor', 'Antes de se tornar escritor, atuou como diretor criativo de uma agência de publicidade em Nashville . Ele se formou na Emory University em 1962 e foi membro da fraternidade Sigma Chi . [5] Em 1991, ele foi homenageado como um "Significant Sig", um prêmio concedido pela organização a seus membros notáveis.'),
  (15, 'Moliere *', '', 'Dramaturgo', 'Jean-Baptiste Poquelin, mais conhecido como Molière, foi um dramaturgo francês, além de actor e encenador, considerado um dos mestres da comédia satírica. Teve um papel de destaque na dramaturgia francesa, até então muito dependente da temática da mitologia grega'),
  (16, 'R. H. Grant *', '1860/08/05', 'Político', 'Foi membro do United Farmer da Assembleia Legislativa de Ontário de 1919 a 1923. Ele representou a cavalgada de Carleton . Ele serviu como ministro de gabinete no governo de EC Drury . A Robert Grant Avenue, no bairro de Fernbank em Stittsville , recebeu o nome de Grant e seu pai. A área comercial de Grant Crossing, nas proximidades, também recebeu o nome da fazenda da família que já existiu no terreno.'),
  (17, 'Michael Jordan', '1963/02/17', 'Ex-basquetebolista ', 'É considerado por muitos como o melhor jogador de basquete de todos os tempos e por muitos como um dos mais importantes desportistas masculinos da história.'),
  (18, 'Steve Jobs *', '1955/02/24', 'Inventor', 'Foi um inventor, empresário e magnata americano no setor da informática. Notabilizou-se como co-fundador, presidente e diretor executivo da Apple Inc. e por revolucionar seis indústrias: computadores pessoais, filmes de animação, música, telefones, tablets e publicações digitais.'),
  (19, 'Bill Gates', '1955/10/28', 'Empresário', 'William Henry Gates III, mais conhecido como Bill Gates, é um magnata, empresário, diretor executivo, investidor, filantropo e autor americano, que ficou conhecido por fundar, junto com Paul Allen a Microsoft, a maior e mais conhecida empresa de software do mundo em termos de valor de mercado.'),
  (20, 'Albert Einstein', '1879/03/14', 'Cientista', 'Foi uma das mentes mais brilhantes da ciência, e o seu legado inclui a explicação do efeito fotoelétrico, a formulação da teoria da relatividade espacial geral e restrita, além de grandes contribuições para a Física Estatística, por meio de sua explicação para o movimento browniano.' );