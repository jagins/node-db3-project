const db = require('../data/db-config');

function find()
{
    return db('schemes');
}

function findById(id)
{
    return db('schemes').where({id}).first();
}

function findSteps(id)
{
    //returns steps for a given scheme with scheme name
    /* SELECT steps.id,
              schemes.scheme_name,
              steps.step_number,
              steps.instructions
        From steps
        Join schemes ON steps.scheme_id = schemes.id
        Where schemes.id = 1
        Order BY steps.step_number = id
    */
    return db('steps')
        .join('schemes', 'steps.scheme_id', 'schemes.id')
        .select('steps.id', 'schemes.scheme_name', 'steps.step_number', 'steps.instructions')
        .where('schemes.id', id)
        .orderBy('steps.step_number', id)
           
}

function add(scheme)
{

}

function update(changes, id)
{

}

function remove(id)
{

}

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove
}