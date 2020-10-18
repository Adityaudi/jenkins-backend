const express = require('express')
const data = require('./Router/product')
const category = require ('./Router/category')
const history = require ('./Router/history')
const userslogin = require('./Router/users')
const auth = require("./Router/auth")
const Route = express.Router()
const cors = require('cors')

const fs = require('fs')
const path = require('path')
const morgan = require('morgan')

var accessLogStream = fs.createWriteStream(path.join(__dirname, 'access.log'), {flags: 'a'})

Route.use(morgan('combined', {stream: accessLogStream})) 
Route.use(cors())

Route.use("/product", data)
Route.use ("/category", category)
Route.use("/history", history)
Route.use( "/users", userslogin)
Route.use('/auth', auth)
Route.use("/public", express.static("public"))

Route.get("*", (req, res) =>{
    res.status(500).json('OOPS! PAGE NOT FOUND.')
})


module.exports = Route

