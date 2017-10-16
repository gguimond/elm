var jsonServer = require('json-server')

// Retourne un serveur Express
var server = jsonServer.create()

// Définit les intergiciels (*middlewares*) par défaut (logger, static, cors et no-cache)
server.use(jsonServer.defaults())

var router = jsonServer.router('db.json')
server.use(router)

console.log('Listening at 4000')
server.listen(4000)