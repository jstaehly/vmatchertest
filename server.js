const express = require('express');
const cors = require('cors');
const { Pool } = require('pg');
require('dotenv').config();

const app = express();
const port = 3001;

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
});

app.use(cors());

app.get('/venues', async (req, res) => {
  try {
    const result = await pool.query('SELECT * FROM venues');
    res.json(result.rows);
  } catch (err) {
    console.error(err);
    res.status(500).send('Error retrieving venues');
  }
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
