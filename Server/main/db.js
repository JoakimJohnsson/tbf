const { Pool } = require('mysql')

const pool = new Pool({
    user: 'root',
    host: 'localhost',
    database: 'tbf_sql_db',
    // TODO Create env conf files
    password: 'su_password',
    post: 5432
});

module.exports = pool;