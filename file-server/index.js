const express = require('express')
const app = express()

const port = 3000

app.route('/public').use(express.static(path.join(__dirname, '../public')))

app.listen(
  port, 
  () => console.log(`SUCCESS: File server ready on port ${port}`))

