package study.studyAction;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
import studyModel.kosta.Model.NoticeDAO;
=======
import studyModel.NoticeDAO;
>>>>>>> branch 'master' of https://github.com/mjw7755/StudyHaja_1.git

public class NoticeDeletePro_Action implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("euc-kr");
		NoticeDAO dao = NoticeDAO.getInstance();
		String num = request.getParameter("num");
		String pageNum = request.getParameter("pageNum");
		System.out.println(num);
		int check= dao.delete(Integer.parseInt(num));
		System.out.println("할얘끼냐고5");
		request.setAttribute("num", num);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("check", check);
		return "/jsp/notice_deletePro.jsp";
	}

}
