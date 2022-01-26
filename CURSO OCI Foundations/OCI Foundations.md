# OCI Foundations

## 2 - OCI Introduction

### OCI Overview

Algumas das maiores empresas do mundo estão executando suas cargas de trabalho de missão crítica na plataforma de nuvem de próxima geração da Oracle chamada Oracle Cloud Infrastructure. E hoje, estou muito animado para contar mais sobre isso. Nesta lição, você verá uma visão geral do que pode fazer no OCI. Vamos começar.

Para simplificar, vamos dividi-los em sete categorias principais: Infraestrutura Central, Serviços de Banco de Dados, Dados e IA, Análise, Governança e Administração, Serviços para Desenvolvedores e Serviços de Aplicativos.

Mas primeiro, a base de qualquer plataforma de nuvem é a presença global das regiões. Temos muitas regiões geralmente disponíveis no mundo, juntamente com suporte Multi-Cloud com Microsoft Azure e uma oferta híbrida diferenciada chamada Dedicated Region Cloud at Customer.

Temos blocos de construção em cima dessa presença global, as sete categorias que acabamos de mencionar. Na parte inferior, temos as primitivas centrais - computação, armazenamento e rede. Os Serviços de Computação abrangem Máquinas Virtuais, Servidores Bare Metal, contêineres, um Serviço Kubernetes gerenciado e um Serviço VMWare gerenciado.

Esses serviços são principalmente para realizar cálculos, executar lógica e executar aplicativos. O armazenamento em nuvem inclui discos anexados a máquinas virtuais, armazenamento de arquivos, armazenamento de objetos, armazenamento de arquivos e serviços de migração de dados. A OCI oferece uma gama completa de serviços de armazenamento para você armazenar, acessar, controlar e analisar seus dados estruturados ou não estruturados.

Os recursos de rede permitem que você configure redes privadas definidas por software no Oracle Cloud. A OCI fornece o conjunto mais amplo e profundo de serviços de rede com a mais alta confiabilidade, a maioria dos recursos de segurança e o mais alto desempenho.

Depois temos os Serviços de Banco de Dados, temos vários tipos de serviços de banco de dados, tanto Oracle quanto de código aberto. Somos a única nuvem que executa bancos de dados autônomos e vários tipos deles, incluindo OLTP, OLAP e JSON.

E então você pode executar bancos de dados e máquinas virtuais, servidores Bare Metal ou até Exadata na nuvem. Você também pode executar bancos de dados de código aberto, como MySQL e NoSQL no Oracle Cloud Infrastructure.

Data and AI Services, temos um serviço gerenciado Apache Spark chamado Dataflow, um serviço gerenciado para rastrear artefatos de dados em OCI chamado Data Catalog e um serviço gerenciado para ingestão de dados e ETL chamado Data Integration.

Também temos uma plataforma de ciência de dados gerenciada para modelos e treinamento de machine learning. Também temos um serviço Apache Kafka gerenciado para casos de uso de streaming de eventos.

Então temos os serviços de Governança e Administração, esses serviços incluem segurança, identidade e observabilidade e gerenciamento. Temos recursos exclusivos, como compartimentos, que facilitam operacionalmente o gerenciamento de ambientes grandes e complexos. A segurança está integrada em todos os aspectos da OCI, seja detecção ou correção automática, o que normalmente chamamos de Cloud Security Posture Management, proteção de rede robusta ou criptografia por padrão.

Temos uma plataforma integrada de observabilidade e gerenciamento com recursos como registro, análise de registro e gerenciamento de desempenho de aplicativos e muito mais.

Então nós temos um monte de serviços para desenvolvedores. Temos um serviço gerenciado de baixo código chamado APEX, vários outros serviços para desenvolvedores e um serviço gerenciado Terraform chamado Resource Manager.

Para análises, temos um serviço de análise gerenciada chamado Oracle Analytics Cloud que se integra a várias soluções de terceiros.

Em Serviços de aplicativo, temos uma oferta sem servidor gerenciada, funções de chamada e gateway de API e um Serviço de eventos para ajudá-lo a criar microsserviços e arquiteturas orientadas a eventos.

Temos um conjunto abrangente de SaaS conectado em todo o seu negócio, finanças, recursos humanos, cadeia de suprimentos, fabricação, publicidade, vendas, atendimento ao cliente e marketing, todos executados em OCI.

Essa é uma longa lista. E essas sete categorias e os serviços mencionados representam apenas uma pequena fração dos mais de 80 serviços atualmente disponíveis no OCI.

Felizmente, é rápido e fácil experimentar um novo serviço usando nossa conta de nível gratuito líder do setor. Somos a primeira nuvem a oferecer um servidor por apenas um centavo por hora de núcleo.

Esteja você começando com o Oracle Cloud Infrastructure ou migrando todo o seu conjunto de dados para ele, podemos apoiá-lo em sua jornada para a nuvem. É isso. OCI, uma plataforma de nuvem ampla e profunda. Obrigado por assistir.

### OCI Architecture

Bem-vindo a esta lição sobre Arquitetura OCI. Nesta lição, abordaremos as principais construções da arquitetura física da OCI, começando pelas regiões. Região é uma área geográfica localizada composta por um ou mais domínios de disponibilidade.

Os meios de disponibilidade são um ou mais data centers tolerantes a falhas localizados em uma região, mas conectados entre si por uma rede de baixa latência e alta largura de banda. Os domínios de falha são um agrupamento de hardware e infraestrutura dentro de um domínio de disponibilidade para fornecer antiafinidade. Portanto, pense neles como data centers lógicos.

Nós vimos isso na lição anterior. Hoje, a OCI tem uma enorme presença geográfica em todo o mundo, com várias regiões em todo o mundo. E também temos uma parceria multinuvem com o Microsoft Azure. E temos uma oferta diferenciada de nuvem híbrida chamada Dedicated Region Cloud@Customer.

Mas antes de mergulharmos na arquitetura física, vejamos como você escolhe uma região? A primeira coisa é escolher uma região, você escolhe uma região mais próxima de seus usuários para menor latência e maior desempenho. Então esse é um critério fundamental.

O segundo critério-chave é a residência de dados e os requisitos de conformidade. Muitos países têm requisitos rígidos de residência de dados e você deve cumpri-los. E assim você escolhe uma região com base nesses requisitos de conformidade.

O terceiro critério-chave é a disponibilidade do serviço. Novos serviços em nuvem são disponibilizados com base na demanda regional às vezes, motivos de conformidade regulatória, disponibilidade de recursos e vários outros fatores. Tenha estes três critérios em mente ao escolher uma região.

Então, vamos olhar para cada um deles com um pouco mais de detalhes. Domínio de disponibilidade. Os domínios de disponibilidade são isolados uns dos outros, tolerantes a falhas e muito improváveis ​​de falhar simultaneamente. Como os domínios de disponibilidade não compartilham infraestrutura física, como energia ou refrigeração ou a rede interna, uma falha que afete um domínio de disponibilidade provavelmente não afetará a disponibilidade de outros.

Então, como você pode ver neste gráfico aqui, uma determinada região tem três domínios de disponibilidade. Um domínio de disponibilidade tem algum tipo de interrupção, não está disponível. Mas os outros dois domínios de disponibilidade ainda estão funcionando.

Falamos sobre domínios de falhas um pouco antes. O que são domínios de falha? Pense que cada domínio de disponibilidade tem três domínios de falha. Portanto, pense nos domínios de falha como data centers lógicos dentro do domínio de disponibilidade.

Então, como você pode ver na imagem aqui, temos três domínios de disponibilidade e cada um deles tem três domínios de falha. Então a ideia é você colocar os recursos em diferentes domínios de falha, e eles não compartilham um único ponto de falha de hardware, como servidores físicos, rack físico, tipo de switch de rack, uma unidade de distribuição de energia. Você pode obter alta disponibilidade aproveitando domínios de falha.

Também aproveitamos domínios de falhas para nossos próprios serviços. Portanto, em qualquer região, os recursos nesse domínio de falha estão sendo ativamente alterados a qualquer momento. Isso significa que os problemas de disponibilidade causados ​​por procedimentos de mudança são isolados no nível do domínio da falha. Além disso, você pode controlar o posicionamento das instâncias do banco de dados do computador para o domínio de falha no momento da inicialização da instância. Assim, você pode especificar qual domínio de falha deseja usar.

Então, qual é a orientação geral? A orientação geral é que temos essas construções, como domínios de falha e domínios de disponibilidade, para ajudá-lo a evitar pontos únicos de falha. Fazemos isso por conta própria.

Assim, garantimos que os servidores, o switch do topo do rack, sejam todos redundantes. Assim você não tem falhas de hardware ou tentamos minimizar ao máximo essas falhas de hardware. Você precisa fazer o mesmo quando estiver projetando sua própria arquitetura.

Então vamos ver um exemplo. Você tem uma região. Você tem um domínio de habilidade. E como dissemos, um AD tem três domínios de falha, então você vê esses domínios de falha aqui.

Então, a primeira coisa que você faz é quando você cria um aplicativo, você cria essa rede virtual definida por software. E então vamos dizer que é uma aplicação muito simples. Você tem uma camada de aplicativo. Você tem uma camada de banco de dados.

Então, a primeira coisa que você pode fazer é executar várias cópias do seu aplicativo. Portanto, você tem uma camada de aplicativo que é replicada em domínios de falha. E então você tem um banco de dados, que também é replicado em domínios de falha.

Porque você faz isso? Bem, dá-lhe essa camada extra de redundância. Então, algo acontece com um domínio de falha, seu aplicativo ainda está em execução.

Agora, para ir para a próxima etapa, você pode replicar o mesmo design em outro domínio de disponibilidade. Portanto, você pode ter duas cópias do seu aplicativo em execução. E você pode ter duas cópias do seu banco de dados em execução.

Agora, uma coisa que surgirá é como você garante que seus dados estejam sincronizados entre essas cópias? Assim, você pode usar várias tecnologias, como o Oracle Data Guard, para garantir que seus dados primário e de espera - os dados sejam mantidos em sincronia aqui. E para que -- você possa projetar seu aplicativo -- seu arquiteturas como essas para evitar pontos únicos de falha. Mesmo para regiões onde temos um único domínio de disponibilidade, você ainda pode aproveitar a construção de domínio de falha para obter alta disponibilidade e evitar pontos únicos de falha.

Vamos resumir o que aprendemos nesta lição. Então nós olhamos para a região. A região é composta por domínios de disponibilidade. Os domínios de disponibilidade são compostos por domínios de falha.

Então, vamos olhar para a visão de dentro para fora. Então, primeiro, vamos começar com o domínio de falha. O domínio de falha fornece proteção contra falhas em um domínio de disponibilidade.

O domínio de disponibilidade em si fornece proteção contra falhas de domínio de disponibilidade inteira, principalmente em uma região multi-AD. E então você tem esse conceito de par de regiões, onde em cada país que operamos ou na maioria dos países que operamos, temos pelo menos dois data centers. Assim, você pode usar o segundo centro de dados para recuperação de desastres ou backup ou também ajuda a cumprir os requisitos de conformidade e residência de dados. E além disso, também temos SLAs sobre disponibilidade, gerenciamento e desempenho.

Para recapitular, analisamos a arquitetura física da OCI com regiões que são geolocalizações. Analisamos os domínios de disponibilidade. Cada região tem três domínios de disponibilidade.

E então cada domínio de disponibilidade tem três domínios de falha. Portanto, use essas construções arquitetônicas para projetar seus aplicativos altamente disponíveis e evitar pontos únicos de falha. Obrigado por assistir.

## 3 - Oracle Cloud Free Tier Account

### Demo: Oracle Cloud Free Tier Sing-up

Bem vinda. Nesta lição, vou orientá-lo no processo de criação de uma conta do Oracle Cloud FreeTier. Mas antes de fazermos isso, vamos primeiro discutir o que é o Oracle Cloud FreeTier. O Oracle Cloud FreeTier permite que você se inscreva em uma conta do Oracle Cloud, que fornece vários desses serviços gratuitos e uma avaliação gratuita, os US$ 300 de crédito gratuito para usar em todos os serviços OCI qualificados por até 30 dias. Então é uma combinação de duas coisas diferentes. Vamos falar um pouco mais sobre estes.

Os serviços Sempre Gratuitos estão disponíveis por um período de tempo ilimitado para qualquer pessoa. A avaliação gratuita, por outro lado, deve ser usada até que seus US$ 300 em créditos gratuitos sejam consumidos ou os 30 dias tenham expirado, o que ocorrer primeiro. Portanto, o processo de criação da conta do Oracle Cloud FreeTier é bastante simples. Deixe-me guiá-lo através dele.

Então aqui estou eu na página da web Oracle.com/cloud/free. E você pode ver este botão aqui, que é Iniciar de graça. Se eu tivesse uma conta existente, clicaria aqui, entraria no Oracle Cloud e isso me permitiria acessar minha conta real. Eu não tenho um. Vou orientá-lo sobre como criar um de graça.

Então deixe-me clicar neste botão aqui. E enquanto eu faço isso, ele está me pedindo algumas informações importantes. A primeira coisa é o meu país. E deixe-me apenas clicar aqui. Então, ele está pedindo para fornecer um nome. E está pedindo um ID de e-mail.

E aqui embaixo você vê um captcha, uma resposta de desafio para verificar se os bots automatizados não estão usando mal esse sistema. Então eu clico aqui dizendo que sou humano. E então, quando faço isso, está me pedindo para verificar isso. É o típico desafio captcha tradicional. Assim diz, por favor clique em cada imagem que contém um barco. Deixe-me certificar-me de que posso verificar todos os barcos aqui. Este é um barco. Isso pode ser um barco. Clique em próximo.

Contendo um barco. Definitivamente um barco, definitivamente um barco aqui, barco aqui, barco aqui, e verifique. E isso deve me deixar entrar, verificando que sou humano. E então eu preciso verificar meu e-mail. Então clique aqui. E ele me enviará um e-mail com uma etapa de verificação solicitando que eu verifique isso. E esse é o primeiro passo para abrir uma conta. Deixe-me pausar o vídeo aqui e verificar minha conta de e-mail.

Acabei de verificar meu ID de e-mail. E agora está me pedindo para fornecer mais informações aqui. Então, a primeira coisa que preciso fazer é inserir uma senha válida. Então deixe-me digitar um aqui. E está feliz com essa senha. Deixe-me apenas confirmar novamente.

Tudo bem. E então ele está me pedindo um nome de empresa. Providencie isso aqui. E está pedindo um nome de conta na nuvem. Agora, essa conta pode não estar disponível, então deixe-me usar uma que vamos usar para este curso de treinamento.

Este é um treinamento da OCI Foundations. E na minha região de origem, está me pedindo para selecionar a região de origem. E vamos rolar para baixo aqui e escolher na América do Norte. Então vou escolher a região mais próxima de mim seria o Oeste dos EUA, San Jose. Então eu escolheria isso. Então clique em Continuar.

E então o próximo passo seria inserir todas as minhas informações aqui. Então deixe-me colocar o local do meu escritório. Preciso fornecer meu número de telefone. E agora está pedindo para adicionar uma carta de verificação de pagamento. Então eu preciso fornecer o número do meu cartão de crédito aqui. E então o cartão de crédito não é cobrado, a menos que você opte por atualizar esta conta. Então eu posso dizer cartão de crédito aqui. E então você adiciona o número do cartão de crédito aqui. Vou adicionar cartão Visa. Clique em Concluir aqui.

E agora eu preciso clicar nesta caixa aqui, que diz, eu concordo com os termos e condições aqui. E você pode ler mais sobre os termos e condições, se quiser. Há links aqui para que você possa ler mais aqui. Todas as informações parecem corretas. Incluí meu cartão. E clicarei em Iniciar minha conta de avaliação gratuita.

E neste ponto, ele deve abrir minha própria conta de nível de avaliação gratuita, que é sempre gratuita e uma avaliação gratuita com US $ 300 para ser consumida em 30 dias. E assim que esse processo estiver concluído -- pode levar alguns minutos -- terei uma conta Oracle Cloud FreeTier. Parece que, enquanto eu estava fazendo isso, levei alguns segundos. E aqui estou eu. Esta é minha conta do Oracle Cloud. Espero que você tenha achado esta lição útil. Obrigado por assistir.

### Demo: OCI Console Walk-Through

Bem vindo de volta. Nesta lição, veremos como você pode começar a usar o console OCI. Portanto, a primeira coisa que você faz para acessar o console OCI é acessar cloud.oracle.com e clicar no nome da sua conta Cloud aqui. Em um dos vídeos anteriores, abrimos uma conta FreeTier. E nomeamos a conta como treinamento de fundamentos OCI, pois isso faz parte do treinamento de fundamentos OCI. Por isso, forneci o nome da conta do Cloud aqui. E então você clica em Avançar.

Ao fazer isso, ele vai me pedir um nome de usuário e senha. Também poderíamos fazer o logon único de federações de identidade, mas isso está além do escopo deste curso introdutório. Então vamos pular. E vou apenas fornecer meu nome de usuário aqui.

Agora, este é o nome de usuário que usei com esta conta em particular. E deixe-me inserir minha senha. E com isso, estou autenticado no console da web.

Então, o que é esse console da web? O console da Web é a interface de usuário baseada na Web simples e intuitiva que você pode usar para acessar e gerenciar o Oracle Cloud Infrastructure. Assim, ao fornecer meu nome de usuário e senha, sou autenticado. Estou no console aqui. Deixe-me guiá-lo por algumas das principais características do console e algumas das coisas que podem ajudá-lo a começar rapidamente.

Então aqui na barra de navegação esquerda você vê este ícone. Se você clicar nele, ele abrirá o painel de navegação do serviço. E você pode ver todas as principais categorias de serviços que temos, começando com computação, armazenamento, rede, bancos de dados e alguns dos outros serviços. Se você quiser acessar recursos individuais ou serviços individuais dentro de uma categoria, basta clicar aqui, por exemplo, em computação, e eu posso abrir instâncias, posso criar instâncias ou gerenciá-las aqui. Ou eu também poderia abrir um serviço, que faz parte da computação, chamado gerenciamento de SO. Eu poderia trabalhar nisso.

E se você estiver com algumas camadas de profundidade aqui e quiser voltar ao menu principal, basta clicar neste ícone novamente. E traz você de volta ao painel de navegação do serviço. Portanto, este é o painel que você usaria muito à medida que avançamos e fazemos várias demos. Este seria o nosso ponto de partida. Então esse é o número um.

Número dois, quero mostrar a você esse recurso de pesquisa. Então, se eu quiser procurar por algum recurso, eu poderia vir aqui e procurar por esses recursos. Por exemplo, se eu quiser ver quem são meus usuários nessa locação específica, posso fornecer a palavra-chave como usuários. E isso traria a lista de todos os usuários que existem nesta locação no momento. Eu sou o administrador do aluguel, então meu nome está listado aqui. Não há outros usuários no momento.

Portanto, a pesquisa é realmente útil quando você realmente precisa descobrir algo rapidamente. Você pode fazer pesquisas simples, assim como fazer pesquisas complexas usando algo chamado Advanced Resource Query. E vamos analisá-lo posteriormente.

A terceira coisa que quero falar são as regiões. Se você clicar na região aqui, esta é a minha região de origem. A região de origem é a região que você fornece quando se inscreve em uma conta. E você pode ver que a região de origem está listada aqui.

Mas posso ter acesso a outras regiões também. Ao clicar nele, você pode ver que existem muitas regiões disponíveis nos EUA e em todo o mundo. Se eu quiser me inscrever em uma região específica, basta clicar em Inscrever-se aqui. E isso me permitiria assinar essa região específica, o que significa que posso criar recursos nessas regiões. Veremos isso em algumas das demonstrações subsequentes. Por enquanto, estou bem em ter acesso a apenas uma região, que é minha região de origem aqui.

Eu também tenho essa coisa aqui, que é o Cloud Shell. E o Cloud Shell é um terminal baseado em navegador da Web acessível no console do Oracle Cloud, como você pode ver aqui. Em segundo plano, o Cloud Shell é uma pequena máquina virtual, que executa um shell bash que você acessa por meio do console OCI. E você pode usá-lo para executar comandos que você realmente não precisa instalar. A CLI está instalada aqui, a interface de linha de comando OCI. Então você não precisa fazer essa instalação local.

Então pense em acessar recursos no navegador. E você pode ficar no navegador. Você não precisa de nenhum tipo de dependência de máquina local para SSH em suas máquinas Unix ou executar qualquer tipo de CLI localmente em sua máquina. Você pode usar o Cloud Shell para todas essas atividades.

E aqui está o ícone nos anúncios. E se houver anúncios no OCI, todos eles estão listados aqui. Então, para conhecer todas as coisas da OCI, basta clicar aqui e ver as novidades que apareceram. Há o ícone de ajuda aqui que você pode usar para criar uma solicitação de suporte. Você pode visualizar essas solicitações de suporte. E você também pode solicitar o aumento do limite de serviço usando esses links aqui. Então, alguns links realmente úteis para suporte.

Há também uma opção de chat ao vivo. E isso em segundo plano roda o Oracle Digital Assistant. E para qualquer tipo de ajuda que você precisa com sua locação ou em geral você está procurando recursos, você pode usar o assistente virtual para isso. Então, você pode mudar ng as línguas. Acho que hoje suportamos 29 idiomas e a lista continua aumentando. Portanto, se você deseja alterar o idioma do navegador para outro idioma que não seja o inglês, clique no menu suspenso aqui.

E, finalmente, há o meu perfil de usuário. Eu sou o administrador do arrendamento. Portanto, se eu clicar em Configurações do usuário aqui, posso ver algumas das configurações rápidas da minha conta. Posso habilitar a autenticação multifator. Essa é uma boa prática recomendada para aplicar. Falaremos sobre isso em uma lição subsequente. E posso obter mais informações aqui -- coisas como meus tokens de autenticação, etc.

Portanto, este é apenas um passo a passo rápido do console OCI. Obrigado por assistir.

### Demo: Setting Up Your Tenancy

Bem-vindo à nossa lição sobre como configurar sua própria locação. Depois que a Oracle criar sua locação no OCI, um administrador de sua empresa precisará executar um conjunto de tarefas e estabelecer um plano organizacional para seus recursos e usuários da Nuvem. Vamos ver rapidamente como você pode fazer isso.

Portanto, a primeira coisa a entender é quando nos referimos como o que chamamos de locação também é chamado de compartimento raiz. Existe um conceito de compartimentos na OCI, que são isolamentos lógicos que podem ser usados ​​para controle de acesso e isolamento lógico de seus recursos. Veremos o que isso significa no módulo e nas lições de gerenciamento de identidade e acesso. Mas, por enquanto, lembre-se de que quando nos referimos como locação, às vezes também é chamado de compartimento raiz.

Agora, quando você configura sua conta -- quando você, por exemplo, se inscreve para a conta FreeTier Oracle Cloud, a Oracle cria um administrador de locação para você. E esta é a pessoa que configura a conta com seu ID de e-mail. E assim configuramos este primeiro usuário. E também colocamos esse usuário como parte de um grupo. E esse grupo é chamado de administradores.

Esta é uma palavra-chave reservada. E você não pode mudá-lo. E o que torna esse grupo realmente poderoso é essa política específica aqui, que permite que esse grupo específico - administradores - gerencie esse é o nível mais alto de acesso a todos os recursos do painel, ou seja, todos os recursos, todos os recursos nessa locação específica. Locação significa sua conta.

E não se preocupe se alguns desses itens não estiverem claros para você -- usuários, grupos, políticas. Vamos analisá-los no módulo de gerenciamento de identidade e acesso. E, claro, sua conta vem com limites de serviço. E você pode enviar uma solicitação de suporte para aumentar esses limites de serviço.

Também vou falar sobre três práticas recomendadas para aplicar desde o início. Portanto, o compartimento raiz - ou sua locação - pode conter todos os recursos do Cloud. Você pode colocar seus recursos de computação aqui, seu armazenamento, seus bancos de dados, rede, tudo como parte do seu compartimento raiz. Mas a melhor prática é criar compartimentos dedicados para isolar recursos.

Por quê? A ideia dos compartimentos é permitir que você compartimentalize seus recursos, isole-os logicamente para que você possa fornecer o nível certo de acesso aos usuários para esses recursos. Portanto, não coloque todos os seus recursos de nuvem no compartimento raiz. Essa definitivamente não é a melhor prática.

A segunda coisa a ter em mente é que seus administradores de locação devem sempre criar outros administradores ou administradores e permitir que esses administradores gerenciem a conta. Então o que quero dizer com isso? Como você pode ver aqui, há um administrador de locação. E esse administrador específico foi em frente e criou alguns administradores aqui. Por falta de uma palavra melhor, estamos nos referindo a eles como administradores de serviço. Mas estes podem ser qualquer tipo de administradores -- administradores de projeto, administradores de segurança, administradores de serviço, qualquer que seja a forma de categorizar suas contas.

E esses administradores pertencem a seus próprios grupos e têm seu próprio conjunto de políticas. Então, apenas para ficar com este exemplo, temos alguns administradores de serviço para armazenamento e rede. E eles pertencem ao grupo de administradores de armazenamento porque, na prática, você sempre terá mais de um tipo de administrador ou algumas pessoas que são administradores como parte de um grupo específico, ou pelo menos mais de uma pessoa.

A prática recomendada aqui é não usar a conta de administrador de locação para operações diárias. Deve ser reservado apenas para certos tipos de propósitos de correção. E você deve ter seus administradores de serviço realmente cuidando dos usuários e gastos de recursos e gerenciando essa conta. Essa é a nossa segunda melhor prática.

A terceira prática recomendada é proteger sua conta. Você deve impor o uso da autenticação multifator. Portanto, a autenticação multifator é uma autenticação de duas etapas em que você sabe uma coisa, sua senha. E então você tem algo, como um dispositivo, que pode ser usado para autenticar seu usuário. Portanto, é sempre uma boa prática impor o uso da autenticação multifator.

Então, essas são as três melhores práticas. Mantenha-os em mente. Alguns desses itens podem não estar claros agora. À medida que entrarmos nas lições subsequentes, elas ficarão claras. Deixe-me ir rapidamente ao console e mostrar alguns deles em ação.

Então aqui estou eu no meu console do Cloud. E os usuários, grupos e políticas fazem parte dos serviços de configuração de identidade e segurança. Então, podemos clicar em identidade e segurança aqui. Em identidade, posso ver usuários, grupos e políticas.

Então, se eu apenas clicar em Usuários aqui, rapidamente quero mostrar a você que tenho meu usuário. Este é o ID de e-mail do usuário que usei para me inscrever nesta conta. E assim posso ver que este usuário em particular está disponível aqui. E é parte do grupo de disco chamado administradores.

E se eu voltar aos meus grupos aqui, posso ver que atualmente tenho apenas um grupo. Chama-se administradores. E há apenas um membro neste grupo. Eu posso criar qualquer coisa disso quando eu provar iso minha conta. A Oracle fez isso por mim. Este é o meu administrador de locação. E este é o meu grupo de administradores de arrendamento. E é chamado de Administradores. Essa é uma palavra-chave reservada.

E a última coisa que quero mostrar são as políticas. E esta é uma política de administração de locatário padrão que novamente foi criada pela Oracle como uma provisão por conta. E dá a esse grupo específico e a todos os usuários desse grupo acesso para gerenciar todos os recursos nessa locação específica, sendo a locação essa conta.

A última coisa sobre a qual não falamos realmente sobre esses conceitos são os compartimentos. E posso ver aqui que tenho um compartimento raiz, que também é -- se você ver o ano do texto, também é o mesmo nome do meu arrendamento. Lembre-se, este é o nome da dependência que abrimos. Então tenancy/rootcompartment. Prefira a mesma coisa. E diz aqui compartimento raiz da locação.

Agora, posso colocar todos os meus recursos aqui, ou posso criar compartimentos individuais. Há um compartimento já criado por padrão. Novamente, é um curso introdutório, então não precisamos entrar em alguns desses tópicos mais avançados. Mas eu poderia vir aqui e poderia criar mais compartimentos.

Espero que essa tenha sido uma visão geral rápida de como você configurou sua locação e as primeiras etapas que você dá à medida que sua conta é provisionada. E, posteriormente, a partir daqui, você criaria usuários, criaria grupos, criaria esses administradores, escreveria políticas e criaria compartimentos. Veremos alguns deles no módulo de gerenciamento de identidade e acesso. Espero que você tenha achado esta lição útil. Obrigado por assistir.

### Demo: MFA and Budget Setup

Bem vindo de volta. Nesta demonstração específica, veremos como você pode configurar a autenticação multifator. Como vimos em uma das lições teóricas, é uma prática recomendada aplicar a autenticação multifator -- ou MFA -- especialmente para seus administradores, como os administradores de locações, porque esses logins precisam ser realmente seguros. Portanto, é uma boa ideia usar a autenticação multifator para seus administradores, especialmente para seu administrador de locação.

Então, aqui na página de documentação, você pode ver todos os detalhes sobre como trabalhar com MFA. As duas coisas que quero destacar são as pessoas que não estão familiarizadas com o MFA, basicamente, é uma autenticação de dois fatores onde você inclui algo que você conhece, como uma senha, e depois algo que você tem, como um dispositivo. E você pode ler sobre os conceitos gerais aqui.

A única coisa que quero apontar na documentação é que você precisa de um aplicativo autenticador. E este é um aplicativo que você instala em seu dispositivo móvel que pode fornecer token seguro baseado em software para verificação de identidade. Agora, os dois aplicativos de autenticação móvel suportados são o Oracle Mobile Authenticator e o Google Authenticator. E esses são os dois suportados aqui atualmente. E você pode ler mais sobre alguns dos detalhes aqui.

Então, vamos em frente e configurar o MFA para nosso administrador de locação. Então aqui estou logado como meu administrador de locação. Se eu clicar em Configurações do usuário, você verá que minhas configurações de usuário aparecem aqui. E aqui está um botão, que habilita a autenticação multifator. Então deixe-me ir aqui e clicar neste botão em particular.

E então traz as etapas a serem executadas para habilitar o MFA. Portanto, no meu dispositivo, tenho o Google Authenticator. Então eu só vou usar isso. Deixe-me apenas trazê-lo e tirar uma foto. Eu tenho que escanear este código QR. E eu consegui. E agora preciso inserir o código que é exibido no meu dispositivo. E eu clico em verificar.

E é isso. Agora meu MFA está ativo. E a maneira que eu usaria é-- deixe-me apenas sair e entrar novamente. E ele me pediria minha autenticação de segundo fator. Então eu vou sair. E eu vou entrar novamente. Este é o meu administrador de locação.

E eu clico aqui. E está me pedindo uma senha de uso único. E essa senha, novamente, posso obter do meu dispositivo móvel de um dos autenticadores que tenho. E eu insiro esse número. E eu devo ser capaz de fazer login agora. Portanto, isso é tão simples quanto o processo de configuração do MFA. Definitivamente algo a considerar, especialmente para suas contas de administrador.

A segunda coisa que quero mostrar rapidamente aqui é configurar um alerta de cobrança. Sei que abordaremos vários deles em governança e administração, mas é uma boa prática recomendada configurar seus orçamentos e alertas de cobrança. E deixe-me mostrar como você faz isso ao abrir uma nova conta, por exemplo. Então clique em Criar Orçamento aqui. E agora eu posso definir um orçamento, escopo em um compartimento ou há algo chamado imposto de rastreamento de custos que eu poderia usá-los.

Então, digamos que estou usando isso -- ao longo deste curso, estamos usando o compartimento sandbox. Então eu diria que é o orçamento do sandbox. E aqui eu poderia escolher meu compartimento. E eu vou escolher meu compartimento sandbox aqui porque é isso que eu quero realmente ver sobre que tipo de custo usa em um compartimento específico. Posso inserir um valor de orçamento mensal.

Agora, eu poderia usar um número muito pequeno aqui apenas para fins de demonstração. Na prática, você estaria usando algo muito maior. E o dia do mês para iniciar esse processo orçamentário-- e se você quiser ser o primeiro dia ou seu mês fiscal não estiver alinhado ao mês do calendário diferente, você pode fazer isso aqui.

E então você pode criar uma regra de alerta de orçamento aqui. Você pode ver que a métrica de limite que é violada é o gasto real ou o gasto previsto. Eu vou dizer que é um gasto real. E você também pode escolher uma porcentagem limite para que seu alerta seja acionado quando o orçamento atingir uma porcentagem especificada do orçamento total ou um valor especificado. Eu direi que quando atingir 90%, você deve me enviar um e-mail.

E então eu posso fornecer meus destinatários de e-mail aqui. Deixe-me fornecer o e-mail do administrador da locação. E eu poderia inserir mensagem aqui. Então eu clico em Criar. E agora meu alerta de orçamento foi criado.

Então, sempre que eu exceder os \$10 -- eu vou 90\% desse valor de $ 10 -- eu recebo um e-mail. Também é sempre uma boa prática, principalmente quando você está abrindo sua conta. Faça esse tipo de configuração para não ter nenhum tipo de surpresa no faturamento.

Então, nesta demonstração rápida, vimos como você pode configurar a MFA e como configurar um alerta de cobrança. Estas são duas práticas recomendadas que você definitivamente deve aplicar ao abrir sua própria conta. Obrigado por assistir.