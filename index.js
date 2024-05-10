const express = require("express")

const app = express()

app.get("/", (req, res) =>{
    res.send("Hellooo world!!!!")
})

app.listen(3000, () => {
    console.log("Now running on port 3000")
})