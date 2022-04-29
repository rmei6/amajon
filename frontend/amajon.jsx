import React from "react";
import ReactDOM from "react-dom";
import { login, logout } from "./actions/session_actions";
import Root from "./components/root";
import configureStore from "./store/store";
import {fetchProducts, fetchProduct} from "./actions/products_actions";
// import '../app/assets/fonts/AmazonEmber_Rg.ttf';


document.addEventListener("DOMContentLoaded", () => {
  let store;
  if (window.currentUser) {
    const preloadedState = {
      entities: {
        users: { [window.currentUser.id]: window.currentUser }
      },
      session: { id: window.currentUser.id }
    };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }

  window.login = login;
  window.logout = logout;

  window.getState = store.getState;
  window.dispatch = store.dispatch;

  window.fetchProducts = fetchProducts;
  window.fetchProduct = fetchProduct;

  const root = document.getElementById("root");
  ReactDOM.render(<Root store={store}/>, root);


});