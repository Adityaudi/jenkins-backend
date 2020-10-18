const database = require('../Config/ConnectionDB')
const { conn } = require('../Config/ConnectionDB')
const history = {}

history.GetAll = () => {
    return new Promise((resolve, reject) => {
        database
        conn
            .query(`SELECT * FROM "TBL_HISTORYuser"`)
            .then((res) => {
                resolve(res.rows)
            })
            .catch((err) => {
                reject(err)
            })
    })
}

// Add history
history.Add = (data) => {
    database
    conn 
        .query (
            `INSERT INTO public."TBL_HISTORYuser"(
                "Cashier", date, orders, amount)
                VALUES ('${data.CASHIER}', '${data.DATE}', '${data.ORDERS}', '${data.AMOUNT}');`)
        .then((res) => {
            return res
        })
        .catch((err) => {
            console.log('a')
            return err
        })
    }
// Update history
history.Update = (INVOICES, CASHIER, DATE, ORDERS, AMOUNT) => {
    database
    conn
        .query (
            `UPDATE "TBL_HISTORYuser" SET "CASHIER" = '${CASHIER}', "DATE"='${DATE}', "ORDERS"='${ORDERS}', "AMOUNT"='${AMOUNT}' WHERE "INVOICES"= ${INVOICES}`)
        .then((res) => {
            res = "Update history success!"
            return res
        })
        .catch((err) => {
            return err
        })
}   
// Delete data history
history.Delete = (INVOICES) => {
    database
    conn
        .query (
            `DELETE FROM "TBL_HISTORYuser" WHERE "INVOICES"= ${INVOICES}`)
        .then((res) => {
            res = "Delete history success!"
            return res
        })
        .catch((err) => {
            return err
        })
}  

    
module.exports = history