#!/usr/bin/env node

const {keyParams} = require('../templateTags/keyParams');
const { Pool } = require('pg');

const pool = new Pool();

pool.query('SELECT * FROM county_emergency_management_offices').then((results)=> {
    console.log(results);
}).catch(console.error);

let name = 'brianc',
    name2 = 'steve',
    result = keyParams`SELECT ${name}::text as name WHERE name = ${name2}::text AND 1=${1+1}`,
    expected = [
        'SELECT $1::text as name WHERE name = $2::text AND 1=$3',
        [ 'brianc', 'steve', 2 ]
    ];

console.log(result[0] === expected[0]);

let states = ['NJ', 'OH', 'NY'],
    query = keyParams`SELECT *
        FROM county_emergency_management_offices 
        WHERE state in (${states})`;

pool.query(...query).then((results)=> {
    console.log(results.rows);
}).catch(console.error);
