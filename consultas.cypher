match (jose:Pessoa {nome:'José'}) <-[:AMIGO]-(amigos)<-[:AMIGO]-(amigosDosAmigos) return amigosDosAmigos

match ((jose:Pessoa {nome:'José'})<-[:AMIGO]-(amigos)-[:COMENTOU]->(post)<-[:POSTOU]-(p:Pessoa {nome:'Mauro'})) return amigos