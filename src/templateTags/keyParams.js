module.exports = {
    keyParams: (...vars)=> {
        let result = keyParams.apply(null, vars);
        return [result.query, result.values];
    },
    keyParams2: keyParams
};

function keyParams(strings, ...vars) {
    let query = '',
        values = [];

    for(let i=0, l=strings.length, part, value; i<l; i++) {
        part = strings[i];
        value = vars[i];
        query += part;

        if(value === undefined) continue;

        if(Array.isArray(value)) {
            query += value.map((v)=>{
                values.push(v);
                return '$' + values.length;
            }).join(',');
        }else{
            values.push(value);
            query += '$' + values.length;
        }
    }

    return {
        query:  query,
        values: values
    };
}
