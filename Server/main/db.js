const { Pool } = require('mysql')

const pool = new Pool({
    user: 'root',
    host: 'localhost',
    database: 'tbf_db',
    // TODO Create env conf files
    password: 'Vinter201901',
    post: 5432
});

module.exports = pool;