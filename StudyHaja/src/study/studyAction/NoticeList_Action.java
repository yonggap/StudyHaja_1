package study.studyAction;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import studyModel.NoticeDAO;
import studyModel.NoticeVO;

public class NoticeList_Action implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int pageSize=10;
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		String pageNum = request.getParameter("pageNum");
		
		if(pageNum == null) pageNum="1";
		
		int currentPage = Integer.parseInt(pageNum);
		int startRow= (currentPage * pageSize) - 9;
		int endRow = currentPage * pageSize;
		int count = 0, number= 0;
		
		//ArrayList<NoticeVO> list2 = new ArrayList<NoticeVO>();
		List list2 = null;
		NoticeDAO dao = NoticeDAO.getInstance();
		//list2 = dao.listAll();
		count = dao.getListAllCount();
		
		if(count > 0){
			list2 = dao.getSelectAll(startRow, endRow);
			
		}else{
			list2 = Collections.EMPTY_LIST;
		}
		number = count - (currentPage - 1) * pageSize;
		
		request.setAttribute("currentPage", new Integer(currentPage));
		request.setAttribute("startRow", new Integer(startRow));
		request.setAttribute("endRow", new Integer(endRow));
		request.setAttribute("count", new Integer(count));
		request.setAttribute("pageSize", new Integer(pageSize));
		request.setAttribute("number", new Integer(number));
		request.setAttribute("list2", list2);
		
		return "/ram/jsp/notice_list.jsp";
	}

}
