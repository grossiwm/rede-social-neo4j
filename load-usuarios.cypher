match (a) -[r] -> () delete a, r
match (a) delete a


CREATE (Jose:Pessoa {nome:'José', nascimento:'11/11/2001', pais: 'Brasil', cidade:'Rio de Janeiro', sexo: 'masculino', religiao:'católico', estado_civil:'solteiro'})
CREATE (Mauro:Pessoa {nome:'Mauro', nascimento:'11/11/2001', pais: 'Brasil', cidade:'Rio de Janeiro', sexo: 'masculino', religiao:'católico', estado_civil:'solteiro'})
CREATE (Leda:Pessoa {nome:'Leda', nascimento:'11/11/2001', pais: 'Brasil', cidade:'Rio de Janeiro', sexo: 'feminino', religiao:'católico', estado_civil:'solteiro'})
CREATE (Erika:Pessoa {nome:'Érika', nascimento:'11/11/2001', pais: 'Brasil', cidade:'Rio de Janeiro', sexo: 'feminino', religiao:'católico', estado_civil:'solteiro'})
CREATE (Daniel:Pessoa {nome:'Daniel', nascimento:'11/11/2001', pais: 'Brasil', cidade:'Rio de Janeiro', sexo: 'masculino', religiao:'católico', estado_civil:'solteiro'})
CREATE (Edilson:Pessoa {nome:'Edilson', nascimento:'11/11/2001', pais: 'Brasil', cidade:'Rio de Janeiro', sexo: 'masculino', religiao:'católico', estado_civil:'solteiro'})
CREATE (Aline:Pessoa {nome:'Aline', nascimento:'11/11/2001', pais: 'Brasil', cidade:'Rio de Janeiro', sexo: 'feminino', religiao:'católico', estado_civil:'solteiro'})

CREATE
	(Mauro)-[:AMIGO]->(Leda),
	(Mauro)-[:AMIGO]->(Erika),
	(Mauro)-[:AMIGO]->(Daniel),
	(Mauro)-[:AMIGO]->(Edilson),
	(Mauro)-[:AMIGO]->(Aline)
  
CREATE
	(Leda)-[:AMIGO]->(Mauro),
	(Leda)-[:AMIGO]->(Erika),
	(Leda)-[:AMIGO]->(Edilson)
  
CREATE
	(Erika)-[:AMIGO]->(Mauro),
	(Erika)-[:AMIGO]->(Leda),
	(Erika)-[:AMIGO]->(Aline)
	
CREATE
	(Daniel)-[:AMIGO]->(Mauro),
	(Daniel)-[:AMIGO]->(Leda),
	(Daniel)-[:AMIGO]->(Edilson),	
	(Daniel)-[:AMIGO]->(Aline)

CREATE
	(Edilson)-[:AMIGO]->(Mauro),
	(Edilson)-[:AMIGO]->(Leda),
	(Edilson)-[:AMIGO]->(Daniel)

CREATE
	(Aline)-[:AMIGO]->(Daniel),
	(Aline)-[:AMIGO]->(Mauro),
	(Aline)-[:AMIGO]->(Erika),
	(Aline)-[:AMIGO]->(Jose)

CREATE
	(Jose)-[:AMIGO]->(Aline)

CREATE(Postagem1:Postagem {img:'', texto:'A pedra e lorem ipsum'})

CREATE(Postagem2:Postagem {img:'foto.png', texto:''})

CREATE
	(Mauro)-[:POSTOU]->(Postagem2),
	(Aline)-[:POSTOU]->(Postagem1)

CREATE
	(Mauro)-[:ENVIOU_MENSAGEM {corpo:'Bom dia'}]->(Leda),
	(Mauro)-[:ENVIOU_MENSAGEM {corpo:'Bom dia'}]->(Erika),
	(Mauro)-[:ENVIOU_MENSAGEM {corpo:'Bom dia'}]->(Daniel),
	(Mauro)-[:ENVIOU_MENSAGEM {corpo:'Bom dia'}]->(Edilson),
	(Mauro)-[:ENVIOU_MENSAGEM {corpo:'Bom dia'}]->(Aline)
	
CREATE
	(Aline)-[:ENVIOU_MENSAGEM {corpo:'Que chato'}]->(Jose)

CREATE
	(Leda)-[:COMENTOU {corpo:'Que bonitão!'}]->(Postagem2),
	(Erika)-[:COMENTOU {corpo:'Gostoso!'}]->(Postagem2),
	(Daniel)-[:COMENTOU {corpo:'Que isso???'}]->(Postagem2),
	(Edilson)-[:COMENTOU {corpo:'Que homem!'}]->(Postagem2),
	(Aline)-[:COMENTOU {corpo:'Mandou muito.'}]->(Postagem2)
	
CREATE
	(Erika)-[:COMENTOU {corpo:'Adorei amiga'}]->(Postagem1),
	(Daniel)-[:COMENTOU {corpo:'É nóis.'}]->(Postagem1),
	(Mauro)-[:COMENTOU {corpo:'Que homem!'}]->(Postagem1),
	(Jose)-[:COMENTOU {corpo:'Mandou muito.'}]->(Postagem1)	