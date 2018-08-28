const express = require('express'); 
const app = express();

app.get('/', (req,res) => {
  res.send('Hello DevLeaguers');
});

app.listen(process.env.PORT, () => {
  console.log(`Started app on port: ${process.env.PORT}`);
});