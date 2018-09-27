package com.ll.c;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.font.FontRenderContext;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ll.bean.User;
import com.ll.service.UserService;


@Controller
public class UserC {
	@Autowired
	private UserService userservice;

	
	@RequestMapping("queryUser.do")
	public ModelAndView queryUser(int user_id) {
		User user = userservice.queryUser(user_id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("user", user);
		mv.setViewName("update-Form");
		return mv;
	}

	@RequestMapping("queryUsers.do")
	public ModelAndView queryUsers() {

		List<User> users = userservice.queryUsers();
		System.out.println(users);
		ModelAndView mv = new ModelAndView();
		mv.addObject("users", users);
		mv.setViewName("user-list");
		return mv;
	}

	@RequestMapping("getInsertForm.do")
	public ModelAndView getInsertForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("insertForm");
		return mv;
	}

	@RequestMapping("insertUser.do")
	public ModelAndView insertUser(User user) {
		System.out.println(user);
		int result = userservice.insertUser(user);
		ModelAndView mv = new ModelAndView();
		mv.addObject("user", user);
		if (result > 0) {
			mv.setViewName("redirect:queryUsers.do");
		} else {
			mv.setViewName("fail");
		}
		return mv;
	}

	@RequestMapping("updateUser.do")
	public ModelAndView updateUser(User user) {
		int result = userservice.updateUser(user);
		ModelAndView mv = new ModelAndView();
		mv.addObject("user", user);
		if (result > 0) {
			mv.setViewName("redirect:queryUsers.do");
		} else {
			mv.setViewName("fail");
		}

		return mv;
	}
/**
 * 首页
 * @return
 */
	@RequestMapping("list.do")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("list-Form");
		return mv;
	}
	
/**
 * 登陆页面
 * @return
 */
	@RequestMapping("showLoginView.do")
	public ModelAndView getIndex() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login-Form");
		return mv;
	}
 
	/**
	 * 获取验证码
	 * 
	 * @param response
	 * @param session
	 */
	@RequestMapping("getVerifyCode.do")
	public void generate(HttpServletResponse response, HttpSession session) {
		ByteArrayOutputStream output = new ByteArrayOutputStream();
		String verifyCodeValue = drawImg(output);
 
		session.setAttribute("verifyCodeValue", verifyCodeValue);
 
		try {
			ServletOutputStream out = response.getOutputStream();
			output.writeTo(out);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
 
	/**
	 * 绘画验证码
	 * 
	 * @param output
	 * @return
	 */
	private String drawImg(ByteArrayOutputStream output) {
		String code = "";
		// 随机产生4个字符
		for (int i = 0; i < 4; i++) {
			code += randomChar();
		}
		int width = 70;
		int height = 25;
		BufferedImage bi = new BufferedImage(width, height,
				BufferedImage.TYPE_3BYTE_BGR);
		Font font = new Font("Times New Roman", Font.PLAIN, 20);
		// 调用Graphics2D绘画验证码
		Graphics2D g = bi.createGraphics();
		g.setFont(font);
		Color color = new Color(66, 2, 82);
		g.setColor(color);
		g.setBackground(new Color(226, 226, 240));
		g.clearRect(0, 0, width, height);
		FontRenderContext context = g.getFontRenderContext();
		Rectangle2D bounds = font.getStringBounds(code, context);
		double x = (width - bounds.getWidth()) / 2;
		double y = (height - bounds.getHeight()) / 2;
		double ascent = bounds.getY();
		double baseY = y - ascent;
		g.drawString(code, (int) x, (int) baseY);
		g.dispose();
		try {
			ImageIO.write(bi, "jpg", output);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return code;
	}
 
	/**
	 * 随机参数一个字符
	 * 
	 * @return
	 */
	private char randomChar() {
		Random r = new Random();
		String s = "ABCDEFGHJKLMNPRSTUVWXYZ0123456789";
		return s.charAt(r.nextInt(s.length()));
	}
 
	/**
	 * 验证登陆
	 * @throws IOException 
	 */
	@RequestMapping("login.do")
	@ResponseBody
	public String login(String user_Name, String user_Password,HttpServletRequest req,HttpServletResponse resp, HttpSession session) throws IOException {
		User user = userservice.findUser(user_Name, user_Password);
		System.out.println(user);
		String inputVerifyCode=req.getParameter("verifyCode");
		
		System.out.println("用户输入的验证码值------>"
				+ inputVerifyCode);
		String verifyCodeValue=(String) session.getAttribute("verifyCodeValue");
		System.out.println("Session中的验证码值------>"
				+ verifyCodeValue);
		
			
			if(user!=null&&verifyCodeValue.equals(inputVerifyCode.toUpperCase())){
					System.out.println("用户输入的验证码和图片生成的验证码相等，登陆成功");
					return "index";					
				}				
			
			return "login";
			
			
		}
		
}
