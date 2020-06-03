package com.team.service;

import java.util.List;

import com.team.dto.CartDTO;

public interface CartService {
	/* Cart 장바구니 */
	public int insertCart(CartDTO dto);
	/* 장바구니 목록 가져오기 */
	public List<CartDTO> cartList(String userId);
	/* 장바구니 개별삭제 */
	public void cartDelete(CartDTO dto);
	/* 장바구니 전체 삭제 */
	public void cartDeleteAll(CartDTO dto);
	public void cntUp(CartDTO dto);
	public void cntDown(CartDTO dto);

}