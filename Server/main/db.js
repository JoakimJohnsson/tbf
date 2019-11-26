const { Pool } = require('mysql')

const pool = new Pool({
    user: 'hunkpapa',
    host: 'localhost',
    database: 'tbf_db',
    password: 'hunkpapa',
    post: 5432
});

module.exports = pool;