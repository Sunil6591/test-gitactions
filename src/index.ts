require('dotenv').config()
import express, { Application, Request, Response } from "express";
const app: Application = express()

app.get('/', function (_: Request, res: Response) {
  res.send('Hello World')
})

const port = process.env.PORT || 3000;

app.listen(port, () => console.log(`Server started at ${port}`));