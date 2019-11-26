const { Pool } = require('mysql')

const pool = new Pool({
    user: 'root',
    host: 'localhost',
    database: 'tbf_db',
    password: '',
    post: 5432
});

module.exports = pool;