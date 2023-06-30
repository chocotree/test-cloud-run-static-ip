const express = require('express')
const app = express()
const port = 8080


app.get('/', async (req, res) => {
	const resData = await fetch('https://api64.ipify.org?format=json').then(res => res.json());
	console.log('resData:', resData)

	res.send(resData)
})

app.listen(port, () => {
	console.log(`Example app listening on port ${port}`)
})