package service.member;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.MemberDTO;
import repository.MemberRepository;

public class MemberListService {
	@Autowired
	MemberRepository memberRepository;
	public List<MemberDTO> memList(Model model) {
		List<MemberDTO> list = memberRepository.memList();
		//model.addAttribute("lists", list);
		return list;
	}
}
