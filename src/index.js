import React from "react";
import { createRoot } from "react-dom/client";
import GlobalStyle from "./GlobalStyle";
import App from "./App";

const container =
  document.getElementById("root") || document.createElement("div");
const root = createRoot(container);
root.render(
  <React.StrictMode>
    <GlobalStyle />
    <App />
  </React.StrictMode>
);
