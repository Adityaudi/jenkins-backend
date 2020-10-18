const database = require('../Config/ConnectionDB')
const { conn } = require('../Config/ConnectionDB')
const users = {}

users.GetAll = () => {
    return new Promise((resolve, reject) => {
        database 
            conn
            .query(`SELECT * FROM "TBL_USERLOGIN"`) 
            .then((res) => {
                resolve(res.rows)

                console.log(res)
            })
            .catch((err) => {
                reject(err)
                console.log(err)
            })
    })          
}

users.add = (data) => {
        database 
            conn
            .query(`INSERT INTO "TBL_USERLOGIN" (name, username, photo, password, role) VALUES ('${data.name}', '${data.username}', '${data.photo}', '${data.password}', '${data.role}')`)
                .then((result) => {
                   return result
                }).catch((err) => {
                    return err
                });
            }

users.getByUser = (user) => {
    return new Promise((resolve, reject) =>{
        database
            conn
            .query(`SELECT * FROM "TBL_USERLOGIN" WHERE username = '${user}' ` )
                .then((result) => {
                    resolve(result.rows)
                }).catch((err) => {
                    reject(err)
                });
    })
}
users.setToken = (token, username) => {
    return new Promise((resolve, reject) => {
        database    
        conn
        .query(`UPDATE public."TBL_USERLOGIN" SET token = '${token}' WHERE username = '${username}'`)
        .then((result) => {
                resolve(result)
            }).catch((err) => {
                reject(err)
            });
    })
}
users.search = (username) => {
    return new Promise((resolve, reject) => {
        database 
            conn
            .query(`SELECT * FROM "TBL_USERLOGIN" WHERE username LIKE '%${username}%'`)
            .then((res) => {
                resolve(res.rows)
            })
            .catch((err) => {
                reject(err)
            })
    })
}

module.exports = users