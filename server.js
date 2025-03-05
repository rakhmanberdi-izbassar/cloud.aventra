const express = require("express");
const path = require("path");

const app = express();
const PORT = process.env.PORT || 10000;

// "dist" немесе "public" папкасын серверге беру
app.use(express.static(path.join(__dirname, "public")));

app.get("*", (req, res) => {
    res.sendFile(path.join(__dirname, "public", "index.html"));
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
