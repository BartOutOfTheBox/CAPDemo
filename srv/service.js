module.exports = (srv) => {
    // this is processed before the 'on' handler
    // very useful for validation or generating values for ID columns
    srv.before("CREATE", 'Persons', async (req) => {
        context.data.ID = Math.floor(Math.random() * 1000); 
    });
}
