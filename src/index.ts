import express from "express";
import mongoose from "mongoose";

mongoose
  .connect(
    "mongodb+srv://mongodefault:Px2KIGnVtCsgQeEz@cluster0.ahjgu.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0"
  )
  .then(() => {
    const app = express();
    const port = 3001;

    app.listen(3001, () => {
      console.log(`Server is running on port ${port}`);
    });
  })
  .catch(() => console.log("the mongoDB connection is failed"));
