const Pool = require('pg-pool')

class postgres {
    constructor() {
        this.conn = new Pool({
            database : process.env.DB_NAME,
            user: process.env.DB_USER,
            password: process.env.DB_PASS,
            host: process.env.DB_HOST,
            port: process.env.DB_PORT
        })
    }
    dbconnect(){
        return new Promise((resolve, reject) => {
            this.conn  
                .connect()
                .then((result) => {
                    resolve('Database connected.')
                }).catch((err) => {
                    reject('Database not connect.')
                });
        })
    }
}   

module.exports = new postgres()