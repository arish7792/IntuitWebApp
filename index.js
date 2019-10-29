const express = require('express');
 
const app = express();
 
// code to echo the message on the web page.
app.get('/', (req, res) => {
  res.send('How are you doing');
});
 
// configuring the port on local.
app.listen(8080, () => {
  console.log('Listening on port 8080');
});