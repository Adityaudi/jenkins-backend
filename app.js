require('dotenv/config')
const express = require('express')
const Route = require("./src/main")
const database = require("./src/Config/ConnectionDB")
const bodyParser = require('body-parser')
const redis = require('./src/Config/redisConn')
const morgan = require('morgan')

const server = express()
const port = process.env.PORT

server.use(bodyParser.urlencoded({extended: false }))
server.use(bodyParser.json())
server.use(Route)

database
    .dbconnect()
    .then((result) => {
        console.log(result)
    }).catch((err) => {
        console.log(err)
    });
 
server.listen(port, () => {
    console.log (`Service app running on http://localhost:${port}`)
})

redis
    .redischeck()
    .then((result) => {
        console.log(result)
    }).catch((err) => {
        console.log(err)
    });

// ..DOKUMENTASI POSTMAN
// https://documenter.getpostman.com/view/12508682/TVCdzo4B