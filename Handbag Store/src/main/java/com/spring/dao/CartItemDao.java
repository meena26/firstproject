package com.spring.dao;

import java.util.List;

import com.spring.model.Handbag;
import com.spring.model.Cart;
import com.spring.model.CartItem;

public interface CartItemDao {
	void addCartItem(CartItem cartItem);

	void removeCartItem(int cartItemId);
	void removeAllCartItems(Cart cart);
}


//void addCartItem(CartItem cartItem);
//void removeCartItem(int cartItemId);
//void removeAllCartItems(Cart cart);




