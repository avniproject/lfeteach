// To run this program open terminal save this script in the file and run this using node sample command: node <file_name.js>
// Please provide the id in userId array
// By default it will disable users if you want to enable the users then pass false flag to userUpdate function.


const userId = [];
console.log('If status is 201 then user updated successfully if status is 500 then please check the token')

async function userUpdate(id, flag = true) {
    await fetch(`https://app.lfe.avniproject.org/user/${id}/disable?disable=${flag}`, {
        method: 'PUT', headers: {
            "AUTH-TOKEN": ''
        }
    }).then(r => {
        console.log('for ', id, ' status is -->', r.status)
    });

}

userId.forEach(id => {
    return userUpdate(id)
})




