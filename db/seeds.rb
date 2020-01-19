ActiveRecord::Base.transaction do
  if Campu.all.blank?
    Campu.create(nome: 'UFC - Russas', cep: '62900-000', cidade: 'Russas', estado: 'CE')
    curso1 = Curso.create(nome: 'Engenharia de Software', campu_id: 1, carga_atividades_complementares: 288.0)
    curso2 = Curso.create(nome: 'Ciências da Computação', campu_id: 1, carga_atividades_complementares: 192.0)
    curso3 = Curso.create(nome: 'Engenharia Mecânica', campu_id: 1, carga_atividades_complementares: 352.0)
    curso4 = Curso.create(nome: 'Engenharia de Produção', campu_id: 1, carga_atividades_complementares: 112.0)
    curso5 = Curso.create(nome: 'Engenharia Civíl', campu_id: 1, carga_atividades_complementares: 144.0)

    # ==============================================================================================

    cat1 = Categoria.create(nome: 'Atividades de iniciação à docência, à pesquisa e/ou à extensão', limite_carga_horaria: 96.0, curso_id: curso1.id, numero: 1)
    cat2 = Categoria.create(nome: 'Atividades artístico culturais e esportivas', limite_carga_horaria: 80.0, curso_id: curso1.id, numero: 2)
    cat3 = Categoria.create(nome: 'Atividades de participação e/ou organização de eventos', limite_carga_horaria: 32.0, curso_id: curso1.id, numero: 3)
    cat4 = Categoria.create(nome: 'Experiências ligadas à formação profissional e/ou correlatas', limite_carga_horaria: 64.0, curso_id: curso1.id, numero: 4)
    cat5 = Categoria.create(nome: 'Produção Técnica e/ou Científica', limite_carga_horaria: 96.0, curso_id: curso1.id, numero: 5)
    cat6 = Categoria.create(nome: 'Vivências de gestão', limite_carga_horaria: 48.0, curso_id: curso1.id, numero: 6)
    cat7 = Categoria.create(nome: 'Outras atividades', limite_carga_horaria: 48.0, curso_id: curso1.id, numero: 7)

    Atividade.create(categoria_id: cat1.id, nome: 'Iniciação Científica com bolsa PIBIC, ITI ou bolsa ligada a projetos ou grupos de pesquisa aprovados na unidade acadêmica')
    Atividade.create(categoria_id: cat1.id, nome: 'Participação do grupo PET')
    Atividade.create(categoria_id: cat1.id, nome: 'Monitoria com bolsa')
    Atividade.create(categoria_id: cat1.id, nome: 'Participação como voluntário nas atividades da categoria')
    Atividade.create(categoria_id: cat1.id, nome: 'Participação em bolsa de Iniciação Acadêmica')
    Atividade.create(categoria_id: cat1.id, nome: 'Participação em bolsa de Informática')
    Atividade.create(categoria_id: cat1.id, nome: 'Cursos ministrados')

    Atividade.create(categoria_id: cat2.id, nome: 'Ensaio/treino de participação em grupo de teatro, de dança, coral, literário, musical ou esportivo')
    Atividade.create(categoria_id: cat2.id, nome: 'Evento/apresentação/torneio de grupo de teatro, de dança, coral, literário, musical ou esportivo')
    Atividade.create(categoria_id: cat2.id, nome: 'Torneio/campeonato nacional ou internacional de e-sports, jogos eletrônicos, jogos de cartas ou de tabuleiro')

    Atividade.create(categoria_id: cat3.id, nome: 'Participação em congressos internacionais')
    Atividade.create(categoria_id: cat3.id, nome: 'Participação em congressos nacionais')
    Atividade.create(categoria_id: cat3.id, nome: 'Participação em seminários, colóquios e palestras avaliados pelo Colegiado do curso como contribuintes para um desenvolvimento integral do profissional, excluídas as atividades internas de grupos de pesquisas')
    Atividade.create(categoria_id: cat3.id, nome: ' Participação como ouvinte em defesas de Trabalho de Conclusão de Curso')
    Atividade.create(categoria_id: cat3.id, nome: 'Apresentação de artigo em congresso internacional')
    Atividade.create(categoria_id: cat3.id, nome: 'Apresentação de artigo em congresso nacional')
    Atividade.create(categoria_id: cat3.id, nome: 'Organização de eventos científicos como presidente ou membros da diretoria')
    Atividade.create(categoria_id: cat3.id, nome: 'Organização de eventos regulares do Campus de Russas como coordenador ou membro da comissão do evento')
    Atividade.create(categoria_id: cat3.id, nome: 'Participação como monitor (ou auxiliar) em eventos')
    Atividade.create(categoria_id: cat3.id, nome: 'Participação em maratona de programação Competição local')
    Atividade.create(categoria_id: cat3.id, nome: 'Participação em maratona de programação Seletiva regional para a maratona nacional ou internacional')
    Atividade.create(categoria_id: cat3.id, nome: 'Participação em maratona de programação Maratona de programação nacional')
    Atividade.create(categoria_id: cat3.id, nome: 'Participação em maratona de programação Maratona de programação Internacional')


    Atividade.create(categoria_id: cat4.id, nome: 'Estágio Não-Curricular')
    Atividade.create(categoria_id: cat4.id, nome: 'Participação na empresa júnior')
    Atividade.create(categoria_id: cat4.id, nome: 'Cursos e minicursos correlatos')
    Atividade.create(categoria_id: cat4.id, nome: 'Participação em Visitas técnicas')

    Atividade.create(categoria_id: cat5.id, nome: 'Publicação de artigo em revista internacional')
    Atividade.create(categoria_id: cat5.id, nome: 'Publicação de artigo em revista nacional')
    Atividade.create(categoria_id: cat5.id, nome: 'Publicação de artigo completo em congresso internacional')
    Atividade.create(categoria_id: cat5.id, nome: 'Publicação de artigo completo em congresso nacional')
    Atividade.create(categoria_id: cat5.id, nome: 'Publicação de artigo resumido em congresso internacional')
    Atividade.create(categoria_id: cat5.id, nome: 'Publicação de artigo resumido em congresso nacional')
    Atividade.create(categoria_id: cat5.id, nome: 'Publicação de resumos em encontros universitários')
    Atividade.create(categoria_id: cat5.id, nome: 'Patente ou registro de software')

    Atividade.create(categoria_id: cat6.id, nome: 'Participação na diretoria de empresa júnior, como presidente e vice-presidente ou diretor')
    Atividade.create(categoria_id: cat6.id, nome: 'Participação na diretoria do centro acadêmico do curso')
    Atividade.create(categoria_id: cat6.id, nome: 'Participação na condição de representante estudantil no colegiado de coordenação de curso, departamental e conselho de centro')
    Atividade.create(categoria_id: cat6.id, nome: 'Participação na condição de representante estudantil em comissão permanente ou temporária')

    Atividade.create(categoria_id: cat7.id, nome: 'Participação em atividade de voluntariado em prol da sociedade: 1 hora por 2 horas de atividades')
    Atividade.create(categoria_id: cat7.id, nome: 'Curso de língua estrangeira')
    Atividade.create(categoria_id: cat7.id, nome: 'Participação em grupos de estudo, sob a responsabilidade de um professor do Campus ou de ciência da Coordenação de curso')
    Atividade.create(categoria_id: cat7.id, nome: 'Participação em células de estudo do Programa de Aprendizagem Cooperativa em Células Estudantis')
    Atividade.create(categoria_id: cat7.id, nome: 'Participação em palestras e/ou cursos sobre temas importantes para a sociedade, como acessibilidade, TI verde, dengue e outras doenças transmitidas pelo Aedes Aegypti, educação ambiental, direitos humanos, relações étnico-raciais e africanidades, dentre outros')

    # ==============================================================================================

    cat8 = Categoria.create(nome: 'Atividades de iniciação à docência, à pesquisa e/ou à extensão', limite_carga_horaria: 96.0, curso_id: curso2.id, numero: 1)
    cat9 = Categoria.create(nome: 'Atividades artístico culturais e esportivas', limite_carga_horaria: 80.0, curso_id: curso2.id, numero: 2)
    cat10 = Categoria.create(nome: 'Atividades de participação e/ou organização de eventos', limite_carga_horaria: 32.0, curso_id: curso2.id, numero: 3)
    cat11 = Categoria.create(nome: 'Experiências ligadas à formação profissional e/ou correlatas', limite_carga_horaria: 64.0, curso_id: curso2.id, numero: 4)
    cat12 = Categoria.create(nome: 'Produção Técnica e/ou Científica', limite_carga_horaria: 96.0, curso_id: curso2.id, numero: 5)
    cat13 = Categoria.create(nome: 'Vivências de gestão', limite_carga_horaria: 48.0, curso_id: curso2.id, numero: 6)
    cat14 = Categoria.create(nome: 'Outras atividades', limite_carga_horaria: 48.0, curso_id: curso2.id, numero: 7)

    Atividade.create(categoria_id: cat8.id, nome: 'Iniciação Científica com bolsa PIBIC, ITI ou bolsa ligada a projetos ou grupos de pesquisa aprovados na unidade acadêmica')
    Atividade.create(categoria_id: cat8.id, nome: 'Participação do grupo PET')
    Atividade.create(categoria_id: cat8.id, nome: 'Monitoria com bolsa')
    Atividade.create(categoria_id: cat8.id, nome: 'Participação em projetos de extensão com bolsa')
    Atividade.create(categoria_id: cat8.id, nome: 'Participação como voluntário')
    Atividade.create(categoria_id: cat8.id, nome: 'Participação em bolsa de Iniciação Acadêmica')
    Atividade.create(categoria_id: cat8.id, nome: 'Participação em bolsa de Informática')
    Atividade.create(categoria_id: cat8.id, nome: 'Cursos ministrados')

    Atividade.create(categoria_id: cat9.id, nome: 'Ensaio/treino de participação em grupo de teatro, de dança, coral, literário, musical ou esportivo')
    Atividade.create(categoria_id: cat9.id, nome: 'Evento/apresentação/torneio de grupo de teatro, de dança, coral, literário, musical ou esportivo')
    Atividade.create(categoria_id: cat9.id, nome: 'Torneio/campeonato nacional ou internacional de e-sports, jogos eletrônicos, jogos de cartas ou de tabuleiro')

    Atividade.create(categoria_id: cat10.id, nome: 'Participação em congressos internacionais')
    Atividade.create(categoria_id: cat10.id, nome: 'Participação em congressos nacionais')
    Atividade.create(categoria_id: cat10.id, nome: 'Participação em seminários, colóquios e palestras avaliados pelo Colegiado do curso como contribuintes para um desenvolvimento integral do profissional, excluídas as atividades internas de grupos de pesquisas')
    Atividade.create(categoria_id: cat10.id, nome: 'Participação como ouvinte em defesas de Trabalho de Conclusão de Curso')
    Atividade.create(categoria_id: cat10.id, nome: 'Apresentação de artigo em congresso internacional')
    Atividade.create(categoria_id: cat10.id, nome: 'Apresentação de artigo em congresso nacional')
    Atividade.create(categoria_id: cat10.id, nome: 'Organização de eventos científicos como presidente ou membros da diretoria')
    Atividade.create(categoria_id: cat10.id, nome: 'Organização de eventos regulares do Campus de Russas como coordenador ou membro da comissão do evento')
    Atividade.create(categoria_id: cat10.id, nome: 'Participação como monitor (ou auxiliar) em eventos')
    Atividade.create(categoria_id: cat10.id, nome: 'Participação em maratona de programação local')
    Atividade.create(categoria_id: cat10.id, nome: 'Participação em maratona de programação Seletiva regional para a maratona nacional ou internacional')
    Atividade.create(categoria_id: cat10.id, nome: 'Participação em maratona de programação Maratona de programação nacional')
    Atividade.create(categoria_id: cat10.id, nome: 'Participação em maratona de programação Maratona de programação Internacional')


    Atividade.create(categoria_id: cat11.id, nome: 'Estágio Não-Curricular')
    Atividade.create(categoria_id: cat11.id, nome: 'Participação na empresa júnior')
    Atividade.create(categoria_id: cat11.id, nome: 'Cursos e minicursos correlatos')
    Atividade.create(categoria_id: cat11.id, nome: 'Participação em Visitas técnicas')

    Atividade.create(categoria_id: cat12.id, nome: 'Publicação de artigo em revista internacional')
    Atividade.create(categoria_id: cat12.id, nome: 'Publicação de artigo em revista nacional')
    Atividade.create(categoria_id: cat12.id, nome: 'Publicação de artigo completo em congresso internacional')
    Atividade.create(categoria_id: cat12.id, nome: 'Publicação de artigo completo em congresso nacional')
    Atividade.create(categoria_id: cat12.id, nome: 'Publicação de artigo resumido em congresso internacional')
    Atividade.create(categoria_id: cat12.id, nome: 'Publicação de artigo resumido em congresso nacional')
    Atividade.create(categoria_id: cat12.id, nome: 'Publicação de resumos em encontros universitários')
    Atividade.create(categoria_id: cat12.id, nome: 'Patente ou registro de software')

    Atividade.create(categoria_id: cat13.id, nome: 'Participação na diretoria de empresa júnior, como presidente e vice-presidente ou diretor')
    Atividade.create(categoria_id: cat13.id, nome: 'Participação na diretoria do centro acadêmico do curso')
    Atividade.create(categoria_id: cat13.id, nome: 'Participação na condição de representante estudantil no colegiado de coordenação de curso, departamental e conselho de centro')
    Atividade.create(categoria_id: cat13.id, nome: 'Participação na condição de representante estudantil em comissão permanente ou temporária')

    Atividade.create(categoria_id: cat14.id, nome: 'Participação em atividade de voluntariado em prol da sociedade')
    Atividade.create(categoria_id: cat14.id, nome: 'Curso de língua estrangeira')
    Atividade.create(categoria_id: cat14.id, nome: 'Participação em grupos de estudo, sob a responsabilidade de um professor do Campus ou de ciência da Coordenação de curso')
    Atividade.create(categoria_id: cat14.id, nome: 'Participação em células de estudo do Programa de Aprendizagem Cooperativa em Células Estudantis')
    Atividade.create(categoria_id: cat14.id, nome: 'Participação em palestras e/ou cursos sobre temas importantes para a sociedade, como acessibilidade, TI verde, dengue e outras doenças transmitidas pelo Aedes Aegypti, educação ambiental, direitos humanos, relações étnico-raciais e
    africanidades, dentre outros')


    # ==============================================================================================

    cat15 = Categoria.create(nome: 'Atividades de iniciação à docência, à pesquisa e/ou à extensão', limite_carga_horaria: 96.0, curso_id: curso3.id, numero: 1)
    cat16 = Categoria.create(nome: 'Atividades artístico culturais e esportivas', limite_carga_horaria: 80.0, curso_id: curso3.id, numero: 2)
    cat17 = Categoria.create(nome: 'Atividades de participação e/ou organização de eventos', limite_carga_horaria: 32.0, curso_id: curso3.id, numero: 3)
    cat18 = Categoria.create(nome: 'Experiências ligadas à formação profissional e/ou correlatas', limite_carga_horaria: 64.0, curso_id: curso3.id, numero: 4)
    cat19 = Categoria.create(nome: 'Produção Técnica e/ou Científica', limite_carga_horaria: 96.0, curso_id: curso3.id, numero: 5)
    cat20 = Categoria.create(nome: 'Vivências de gestão', limite_carga_horaria: 48.0, curso_id: curso3.id, numero: 6)
    cat21 = Categoria.create(nome: 'Outras atividades', limite_carga_horaria: 48.0, curso_id: curso3.id, numero: 7)
    cat38 = Categoria.create(nome: 'Atividades de Revisão de Ensino Médio', limite_carga_horaria: 48.0, curso_id: curso3.id, numero: 8)

    Atividade.create(categoria_id: cat15.id, nome: 'Iniciação Científica com bolsa PIBIC, ITI ou bolsa ligada a projetos de pesquisa aprovados na unidade acadêmica')
    Atividade.create(categoria_id: cat15.id, nome: 'Participação do grupo PET')
    Atividade.create(categoria_id: cat15.id, nome: 'Monitoria com bolsa')
    Atividade.create(categoria_id: cat15.id, nome: 'Participação em projetos de extensão com bolsa')
    Atividade.create(categoria_id: cat15.id, nome: 'Participação como voluntário')
    Atividade.create(categoria_id: cat15.id, nome: 'Participação em bolsa de Iniciação Acadêmica')
    Atividade.create(categoria_id: cat15.id, nome: 'Participação em bolsa de Informática')
    Atividade.create(categoria_id: cat15.id, nome: 'Cursos ministrados')

    Atividade.create(categoria_id: cat16.id, nome: 'Evento em grupo de teatro, de dança, coral, literário, musical ou em equipe esportiva, envolvendo ensaios/treinos e apresentações/torneios')

    Atividade.create(categoria_id: cat17.id, nome: 'Participação em congressos internacionais')
    Atividade.create(categoria_id: cat17.id, nome: 'Participação em congressos nacionais')
    Atividade.create(categoria_id: cat17.id, nome: 'Participação em seminários, colóquios e palestras avaliados pelo Colegiado do curso como contribuintes para um desenvolvimento integral do profissional, excluídas as atividades internas de grupos de pesquisas')
    Atividade.create(categoria_id: cat17.id, nome: ' Participação como ouvinte em defesas de Trabalho de Conclusão de Curso')
    Atividade.create(categoria_id: cat17.id, nome: 'Apresentação de artigo em congresso internacional')
    Atividade.create(categoria_id: cat17.id, nome: 'Apresentação de artigo em congresso nacional')
    Atividade.create(categoria_id: cat17.id, nome: 'Organização de eventos científicos como presidente ou membros da diretoria')
    Atividade.create(categoria_id: cat17.id, nome: 'Organização de eventos regulares do Campus de Russas como coordenador ou membro da comissão do evento')
    Atividade.create(categoria_id: cat17.id, nome: 'Participação como monitor (ou auxiliar) em eventos')


    Atividade.create(categoria_id: cat18.id, nome: 'Estágio Não-Curricular')
    Atividade.create(categoria_id: cat18.id, nome: 'Cursos e minicursos correlatos')
    Atividade.create(categoria_id: cat18.id, nome: 'Participação em Visitas técnicas')

    Atividade.create(categoria_id: cat19.id, nome: 'Publicação de artigo em revista internacional')
    Atividade.create(categoria_id: cat19.id, nome: 'Publicação de artigo em revista nacional')
    Atividade.create(categoria_id: cat19.id, nome: 'Publicação de artigo completo em congresso internacional')
    Atividade.create(categoria_id: cat19.id, nome: 'Publicação de artigo completo em congresso nacional')
    Atividade.create(categoria_id: cat19.id, nome: 'Publicação de artigo resumido em congresso internacional')
    Atividade.create(categoria_id: cat19.id, nome: 'Publicação de artigo resumido em congresso nacional')
    Atividade.create(categoria_id: cat19.id, nome: 'Publicação de resumos em encontros universitários')
    Atividade.create(categoria_id: cat19.id, nome: 'Patente ou registro de software')

    Atividade.create(categoria_id: cat20.id, nome: 'Participação na diretoria de empresa júnior, como presidente e vice-presidente ou diretor')
    Atividade.create(categoria_id: cat20.id, nome: 'Participação na empresa júnior')
    Atividade.create(categoria_id: cat20.id, nome: 'Participação na diretoria do centro acadêmico do curso')
    Atividade.create(categoria_id: cat20.id, nome: 'Participação na condição de representante estudantil no colegiado de coordenação de curso, departamental e conselho de centro')
    Atividade.create(categoria_id: cat20.id, nome: 'Participação na condição de representante estudantil em comissão temporária')
      
    Atividade.create(categoria_id: cat21.id, nome: 'Participação em atividade de voluntariado em prol da sociedade')
    Atividade.create(categoria_id: cat21.id, nome: 'Curso de língua estrangeira')
    Atividade.create(categoria_id: cat21.id, nome: 'Participação em grupos de estudo, sob a responsabilidade de um professor ou de ciência da Coordenação de curso')
    Atividade.create(categoria_id: cat21.id, nome: 'Participação em células de estudo do Programa de Aprendizagem Cooperativa em Células Estudantis')
    Atividade.create(categoria_id: cat21.id, nome: 'Participação em palestras e/ou cursos sobre temas importantes para a sociedade, como acessibilidade, TI verde, dengue e outras doenças transmitidas pelo Aedes Aegypti, educação ambiental, direitos humanos, relações étnico-raciais e africanidades, dentre outros')

    Atividade.create(categoria_id: cat38.id, nome: 'Participação na atividade obrigatória de Revisão de Matemática do Ensino Médio')
    Atividade.create(categoria_id: cat38.id, nome: 'Participação na atividade obrigatória de Revisão de Física do Ensino Médio')

    # ==============================================================================================

    cat22 = Categoria.create(nome: 'Atividades de iniciação à docência, à pesquisa e/ou à extensão', limite_carga_horaria: 96.0, curso_id: curso4.id, numero: 1)
    cat23 = Categoria.create(nome: 'Atividades artístico culturais e esportivas', limite_carga_horaria: 80.0, curso_id: curso4.id, numero: 2)
    cat24 = Categoria.create(nome: 'Atividades de participação e/ou organização de eventos', limite_carga_horaria: 32.0, curso_id: curso4.id, numero: 3)
    cat25 = Categoria.create(nome: 'Experiências ligadas à formação profissional e/ou correlatas', limite_carga_horaria: 64.0, curso_id: curso4.id, numero: 4)
    cat26 = Categoria.create(nome: 'Produção Técnica e/ou Científica', limite_carga_horaria: 96.0, curso_id: curso4.id, numero: 5)
    cat27 = Categoria.create(nome: 'Vivências de gestão', limite_carga_horaria: 48.0, curso_id: curso4.id, numero: 6)
    cat28 = Categoria.create(nome: 'Outras atividades', limite_carga_horaria: 48.0, curso_id: curso4.id, numero: 7)
    cat29 = Categoria.create(nome: 'Atividades de Revisão de Ensino Médio', limite_carga_horaria: 48.0, curso_id: curso4.id, numero: 8)

    Atividade.create(categoria_id: cat22.id, nome: 'Iniciação Científica com bolsa PIBIC, ITI ou bolsa ligada a projetos de pesquisa aprovados na unidade acadêmica')
    Atividade.create(categoria_id: cat22.id, nome: 'Participação do grupo PET')
    Atividade.create(categoria_id: cat22.id, nome: 'Monitoria com bolsa')
    Atividade.create(categoria_id: cat22.id, nome: 'Participação em projetos de extensão com bolsa')
    Atividade.create(categoria_id: cat22.id, nome: 'Participação como voluntário')
    Atividade.create(categoria_id: cat22.id, nome: 'Participação em bolsa de Iniciação Acadêmica')
    Atividade.create(categoria_id: cat22.id, nome: 'Participação em bolsa de Informática')
    Atividade.create(categoria_id: cat22.id, nome: 'Cursos ministrados')

    Atividade.create(categoria_id: cat23.id, nome: 'Evento em grupo de teatro, de dança, coral, literário, musical ou em equipe esportiva, envolvendo ensaios/treinos e apresentações/torneios')

    Atividade.create(categoria_id: cat24.id, nome: 'Participação em congressos internacionais')
    Atividade.create(categoria_id: cat24.id, nome: 'Participação em congressos nacionais')
    Atividade.create(categoria_id: cat24.id, nome: 'Participação em seminários, colóquios e palestras avaliados pelo Colegiado do curso como contribuintes para um desenvolvimento integral do profissional, excluídas as atividades internas de grupos de pesquisas')
    Atividade.create(categoria_id: cat24.id, nome: 'Participação como ouvinte em defesas de Trabalho de Conclusão de Curso')
    Atividade.create(categoria_id: cat24.id, nome: 'Apresentação de artigo em congresso internacional')
    Atividade.create(categoria_id: cat24.id, nome: 'Apresentação de artigo em congresso nacional')
    Atividade.create(categoria_id: cat24.id, nome: 'Organização de eventos científicos como presidente ou membros da diretoria')
    Atividade.create(categoria_id: cat24.id, nome: 'Organização de eventos regulares do Campus de Russas como coordenador ou membro da comissão do evento')
    Atividade.create(categoria_id: cat24.id, nome: 'Participação como monitor (ou auxiliar) em eventos')

    Atividade.create(categoria_id: cat25.id, nome: 'Estágio Não-Curricular')
    Atividade.create(categoria_id: cat25.id, nome: 'Cursos e minicursos correlatos')
    Atividade.create(categoria_id: cat25.id, nome: 'Participação em Visitas técnicas')

    Atividade.create(categoria_id: cat26.id, nome: 'Publicação de artigo em revista internacional')
    Atividade.create(categoria_id: cat26.id, nome: 'Publicação de artigo em revista nacional')
    Atividade.create(categoria_id: cat26.id, nome: 'Publicação de artigo completo em congresso internacional')
    Atividade.create(categoria_id: cat26.id, nome: 'Publicação de artigo completo em congresso nacional')
    Atividade.create(categoria_id: cat26.id, nome: 'Publicação de artigo resumido em congresso internacional')
    Atividade.create(categoria_id: cat26.id, nome: 'Publicação de artigo resumido em congresso nacional')
    Atividade.create(categoria_id: cat26.id, nome: 'Publicação de resumos em encontros universitários')
    Atividade.create(categoria_id: cat26.id, nome: 'Patente ou registro de software')

    Atividade.create(categoria_id: cat27.id, nome: 'Participação na diretoria de empresa júnior, como presidente e vice-presidente ou diretor')
    Atividade.create(categoria_id: cat27.id, nome: 'Participação na empresa júnior')
    Atividade.create(categoria_id: cat27.id, nome: 'Participação na diretoria do centro acadêmico do curso')
    Atividade.create(categoria_id: cat27.id, nome: 'Participação na condição de representante estudantil no colegiado de coordenação de curso, departamental e conselho de centro')
    Atividade.create(categoria_id: cat27.id, nome: 'Participação na condição de representante estudantil em comissão temporária')
      
    Atividade.create(categoria_id: cat28.id, nome: 'Participação em atividade de voluntariado em prol da sociedade')
    Atividade.create(categoria_id: cat28.id, nome: 'Curso de língua estrangeira')
    Atividade.create(categoria_id: cat28.id, nome: 'Participação em grupos de estudo, sob a responsabilidade de um professor ou de ciência da Coordenação de curso')
    Atividade.create(categoria_id: cat28.id, nome: 'Participação em células de estudo do Programa de Aprendizagem Cooperativa em Células Estudantis')
    Atividade.create(categoria_id: cat28.id, nome: 'Participação em palestras e/ou cursos sobre temas importantes para a sociedade, como acessibilidade, TI verde, dengue e outras doenças transmitidas pelo Aedes Aegypti, educação ambiental, direitos humanos, relações étnico-raciais e africanidades, dentre outros')

    Atividade.create(categoria_id: cat29.id, nome: 'Participação na atividade obrigatória de Revisão de Matemática do Ensino Médio')
    Atividade.create(categoria_id: cat29.id, nome: 'Participação na atividade obrigatória de Revisão de Física do Ensino Médio')


      # ==============================================================================================

    cat30 = Categoria.create(nome: 'Atividades de iniciação à docência, à pesquisa e/ou à extensão', limite_carga_horaria: 96.0, curso_id: curso5.id, numero: 1)
    cat31 = Categoria.create(nome: 'Atividades artístico culturais e esportivas', limite_carga_horaria: 80.0, curso_id: curso5.id, numero: 2)
    cat32 = Categoria.create(nome: 'Atividades de participação e/ou organização de eventos', limite_carga_horaria: 32.0, curso_id: curso5.id, numero: 3)
    cat33 = Categoria.create(nome: 'Experiências ligadas à formação profissional e/ou correlatas', limite_carga_horaria: 64.0, curso_id: curso5.id, numero: 4)
    cat34 = Categoria.create(nome: 'Produção Técnica e/ou Científica', limite_carga_horaria: 96.0, curso_id: curso5.id, numero: 5)
    cat35 = Categoria.create(nome: 'Vivências de gestão', limite_carga_horaria: 48.0, curso_id: curso5.id, numero: 6)
    cat36 = Categoria.create(nome: 'Outras atividades', limite_carga_horaria: 48.0, curso_id: curso5.id, numero: 7)
    cat37 = Categoria.create(nome: 'Atividades de Revisão de Ensino Médio', limite_carga_horaria: 48.0, curso_id: curso5.id, numero: 8)

    Atividade.create(categoria_id: cat30.id, nome: 'Iniciação Científica com bolsa PIBIC, ITI ou bolsa ligada a projetos de pesquisa aprovados na unidade acadêmica')
    Atividade.create(categoria_id: cat30.id, nome: 'Participação do grupo PET')
    Atividade.create(categoria_id: cat30.id, nome: 'Monitoria com bolsa')
    Atividade.create(categoria_id: cat30.id, nome: 'Participação em projetos de extensão com bolsa')
    Atividade.create(categoria_id: cat30.id, nome: 'Participação como voluntário')
    Atividade.create(categoria_id: cat30.id, nome: 'Participação em bolsa de Iniciação Acadêmica')
    Atividade.create(categoria_id: cat30.id, nome: 'Participação em bolsa de Informática')
    Atividade.create(categoria_id: cat30.id, nome: 'Cursos ministrados')

    Atividade.create(categoria_id: cat31.id, nome: 'Evento em grupo de teatro, de dança, coral, literário, musical ou em equipe esportiva, envolvendo ensaios/treinos e apresentações/torneios')

    Atividade.create(categoria_id: cat32.id, nome: 'Participação em congressos internacionais')
    Atividade.create(categoria_id: cat32.id, nome: 'Participação em congressos nacionais')
    Atividade.create(categoria_id: cat32.id, nome: 'Participação em seminários, colóquios e palestras avaliados pelo Colegiado do curso como contribuintes para um desenvolvimento integral do profissional, excluídas as atividades internas de grupos de pesquisas')
    Atividade.create(categoria_id: cat32.id, nome: 'Participação como ouvinte em defesas de Trabalho de Conclusão de Curso')
    Atividade.create(categoria_id: cat32.id, nome: 'Apresentação de artigo em congresso internacional')
    Atividade.create(categoria_id: cat32.id, nome: 'Apresentação de artigo em congresso nacional')
    Atividade.create(categoria_id: cat32.id, nome: 'Organização de eventos científicos como presidente ou membros da diretoria')
    Atividade.create(categoria_id: cat32.id, nome: 'Organização de eventos regulares do Campus de Russas como coordenador ou membro da comissão do evento')
    Atividade.create(categoria_id: cat32.id, nome: 'Participação como monitor (ou auxiliar) em eventos')

    Atividade.create(categoria_id: cat33.id, nome: 'Estágio Não-Curricular')
    Atividade.create(categoria_id: cat33.id, nome: 'Cursos e minicursos correlatos')
    Atividade.create(categoria_id: cat33.id, nome: 'Participação em Visitas técnicas')

    Atividade.create(categoria_id: cat34.id, nome: 'Publicação de artigo em revista internacional')
    Atividade.create(categoria_id: cat34.id, nome: 'Publicação de artigo em revista nacional')
    Atividade.create(categoria_id: cat34.id, nome: 'Publicação de artigo completo em congresso internacional')
    Atividade.create(categoria_id: cat34.id, nome: 'Publicação de artigo completo em congresso nacional')
    Atividade.create(categoria_id: cat34.id, nome: 'Publicação de artigo resumido em congresso internacional')
    Atividade.create(categoria_id: cat34.id, nome: 'Publicação de artigo resumido em congresso nacional')
    Atividade.create(categoria_id: cat34.id, nome: 'Publicação de resumos em encontros universitários')
    Atividade.create(categoria_id: cat34.id, nome: 'Patente ou registro de software')

    Atividade.create(categoria_id: cat35.id, nome: 'Participação na diretoria de empresa júnior, como presidente e vice-presidente ou diretor')
    Atividade.create(categoria_id: cat35.id, nome: 'Participação na empresa júnior')
    Atividade.create(categoria_id: cat35.id, nome: 'Participação na diretoria do centro acadêmico do curso')
    Atividade.create(categoria_id: cat35.id, nome: 'Participação na condição de representante estudantil no colegiado de coordenação de curso, departamental e conselho de centro')
    Atividade.create(categoria_id: cat35.id, nome: 'Participação na condição de representante estudantil em comissão temporária')
      
    Atividade.create(categoria_id: cat36.id, nome: 'Participação em atividade de voluntariado em prol da sociedade')
    Atividade.create(categoria_id: cat36.id, nome: 'Curso de língua estrangeira')
    Atividade.create(categoria_id: cat36.id, nome: 'Participação em grupos de estudo, sob a responsabilidade de um professor ou de ciência da Coordenação de curso')
    Atividade.create(categoria_id: cat36.id, nome: 'Participação em células de estudo do Programa de Aprendizagem Cooperativa em Células Estudantis')
    Atividade.create(categoria_id: cat36.id, nome: 'Participação em palestras e/ou cursos sobre temas importantes para a sociedade, como acessibilidade, TI verde, dengue e outras doenças transmitidas pelo Aedes Aegypti, educação ambiental, direitos humanos, relações étnico-raciais e africanidades, dentre outros')

    Atividade.create(categoria_id: cat37.id, nome: 'Participação na atividade obrigatória de Revisão de Matemática do Ensino Médio')
    Atividade.create(categoria_id: cat37.id, nome: 'Participação na atividade obrigatória de Revisão de Física do Ensino Médio')
  end
end