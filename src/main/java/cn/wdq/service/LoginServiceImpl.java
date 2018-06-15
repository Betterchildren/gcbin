package cn.wdq.service;

import cn.wdq.dao.UIDImpl;
import cn.wdq.entities.UserInfo;
import com.alibaba.fastjson.JSONObject;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class LoginServiceImpl implements LoginService{
	Logger logger=Logger.getLogger(LoginServiceImpl.class);
	@Autowired
	UIDImpl uIDImpl;

	@Override
	public List<UserInfo> login(UserInfo userInfo){
		List<UserInfo> userInfos=uIDImpl.login(userInfo);
		return userInfos;
	}

	@Override
	public int haveSame(JSONObject json){
		return uIDImpl.haveSame(json);
	}

	@Override
	public int register(JSONObject json) {
		return uIDImpl.register(json);
	}

	@Override
	public void forceLogout(HttpServletRequest request,String user_name){
		uIDImpl.forceLogout(user_name);
	}

	@Override
	public void autoLogout(String user_name) {
		uIDImpl.autoLogout(user_name);
	}

	@Override
	public void insertLoginInfo(UserInfo userInfo,HttpServletRequest request) {
		String cuserid=request.getSession().getId();
		uIDImpl.deleteOnline(cuserid);
		//增加最近登录日期字段
		userInfo.setCuserid(cuserid);
		uIDImpl.insertLoginInfo(userInfo);
	}

	@Override
	public void editPassword(String user_name,String password){
		UserInfo userInfo=new UserInfo();
		userInfo.setUser_name(user_name);
		userInfo.setPassword(password);
		uIDImpl.editPassword(userInfo);
	}

	@Override
	public void setHeadImg(String img_base64,String user_name) {
		UserInfo userInfo=new UserInfo();
		userInfo.setUser_name(user_name);
		userInfo.setHead_img(img_base64);
		uIDImpl.setHeadImg(userInfo);
	}

	@Override
	public void updateLastTime(String user_name) {
		uIDImpl.updateLastTime(user_name);
	}

	@Override
	public int addLoginHistory(UserInfo userInfo) {

		userInfo.setCuserid(null);
		return uIDImpl.addLoginHistory(userInfo);
	}

	@Override
	public List<UserInfo> queryLogHis() {
		return uIDImpl.queryLogHis();
	}
}
