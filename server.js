import express from "express";

const app = express();
const PORT = process.env.PORT || 10000;

app.get("/", (req, res) => {
    res.send("Hello from Render!");
});

app.listen(PORT, () => {
    console.log(`✅ Server running on port ${PORT}`);
});
