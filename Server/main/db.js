const { Pool } = require('mysql');

console.log("password", `${process.env.REACT_APP_TBF_DB_PW}`);

const pool = new Pool({
    user: 'root',
    host: 'localhost',
    database: 'tbf_sql_db',
    password: `${process.env.REACT_APP_TBF_DB_PW}`,
    post: 5432
});

module.exports = pool;