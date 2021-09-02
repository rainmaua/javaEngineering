package service.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.NoticeDTO;
import repository.NoticeRepository;

public class NoticeService {
	@Autowired
	NoticeRepository noticeRepository;
	public void noticeSelect(Model model) {
		List<NoticeDTO> list = noticeRepository.noticeSelect();
		model.addAttribute("nlist", list);
	}
}
