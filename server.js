const express = require("express");
const app = express();
const PORT = 3000;

app.get("/", (req, res) => {
  res.send(`
        <h1>🛒 Chào mừng đến với My Simple Store!</h1>
        <p>Phiên bản: <strong>Docker Tối Ưu (Alpine)</strong></p>
        <p>Trạng thái: Đang hoạt động ngon lành!</p>
    `);
});

app.listen(PORT, () => {
  console.log(`Server đang chạy tại http://localhost:${PORT}`);
});
