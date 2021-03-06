package com.team.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import com.team.dao.LoginDAO;
import com.team.dto.LoginDTO;

@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	LoginDAO dao;

	public List<LoginDTO> memberList(int memberstart,Model model) {
		List<LoginDTO> list = dao.memberList(memberstart,model);
		return list;
	}

	public boolean loginChk(LoginDTO dto) {
		boolean chk = false;
		for (LoginDTO dbDto : dao.loginChk()) {
			if (dto.getUserId().equals(dbDto.getUserId())) {
				if (dto.getUserPwd().equals(dbDto.getUserPwd())) {
					chk = true;
				} 
			}
		}
		return chk;
	}
	
	public boolean idcheck(String userId) {
		boolean chk = false;
		if (userId.equals(dao.idCheck(userId))) {
			chk = true;
		}
		return chk;  
	}

	public int saveMember(LoginDTO dto) {
		return dao.saveMember(dto);
	}
	
	public void apiSaveMember(LoginDTO dto) {
		dao.apiSaveMember(dto);
	}

	public void deleteMember(LoginDTO dto) {
		dao.deleteMember(dto);
	}

	public void updateMember(LoginDTO dto) {
		dao.updateMember(dto);
	}

	public void memberInfoDetail(String id, Object object) {

	}

	public LoginDTO memberInfo(LoginDTO dto) {
		return dao.memberInfo(dto);
	}

	public String getMaster(String id) {
		return dao.getMaster(id);
	}

	public boolean kakaoIdCheck(String id) {
		boolean chk = false;
		for (LoginDTO dto : dao.kakaoIdCheck()) {
			if (id.equals(dto.getUserId())) {
				chk = true;
			}
		}
		return chk;
	}

	public boolean naverIdCheck(String id) {
		boolean chk = false;
		for (LoginDTO dto : dao.naverIdCheck()) {
			if (id.equals(dto.getUserId())) {
				chk = true;
			}
		}
		return chk;
	}

	public LoginDTO find(String id) {
		return dao.find(id);
	}

	public boolean chkAnswer(String answer, String id) {
		boolean chk = false;
		if (dao.chkAnswer(id).equals(answer)) {
			chk = true;
		}
		return chk;
	}

	public void alterPwd(LoginDTO dto) {
		dao.alterPwd(dto);
	}

	@Override
	public boolean idConfirm(String id) {
		if(dao.idConfirm(id)==0)
		{
			return false;
		}
		else {
			return true;
		}
	}

}
