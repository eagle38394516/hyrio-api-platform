import React from "react";
import {createRoot} from "react-dom/client";
import App from "./App";
import "./global.less";
import zhCN from "antd-mobile/es/locales/zh-CN";
import {ConfigProvider} from "antd-mobile";

createRoot(document.getElementById('root')!).render(
    <ConfigProvider locale={zhCN}>
      <App/>
    </ConfigProvider>
);
