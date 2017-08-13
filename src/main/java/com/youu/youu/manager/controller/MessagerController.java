package com.youu.youu.manager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.youu.youu.manager.bean.MessageModel;
import com.youu.youu.manager.service.MessageModelService;

@RestController
@RequestMapping("/message")
public class MessagerController {
	
	@Autowired
	MessageModelService messageModelService;
	
	/**
	 * 删除消息模版
	 * @return
	 */
	@RequestMapping("/delMsg")
	public String delMsg(Integer mid) {
		System.out.println("删除消息模版");
		System.out.println(mid);
		boolean result = messageModelService.delete(mid);
		if (result) {
			return "删除成功！";
		}
		return "删除失败！";
	}
	
	/**
	 * 更新消息模版
	 * @return
	 */
	@RequestMapping("/updateMsg")
	public String updateMsg(MessageModel messageModel) {
		System.out.println("更新消息模版");
		System.out.println(messageModel);
		boolean result = messageModelService.update(messageModel);
		if (result) {
			return "更新成功！";
		}
		return "更新失败！";
	}
	
	/**
	 * 添加消息模版
	 * @return
	 */
	@RequestMapping("/addMsg")
	public String addMsg(MessageModel messageModel) {
		System.out.println("添加消息模版");
		System.out.println(messageModel);
		boolean result = messageModelService.addMsg(messageModel);
		if (result) {
			return "添加成功！";
		}
		return "添加失败！";
	}
	
	/**
	 * 获取所有消息模版
	 * @param pn
	 * @param ps
	 * @return
	 */
	@RequestMapping("/list")
	public PageInfo<MessageModel> list(@RequestParam(value="pn", defaultValue="1")Integer pn, 
			@RequestParam(value="ps", defaultValue="8")Integer ps) {
		System.out.println("获取所有消息模版");
		PageHelper.startPage(pn, ps);
		List<MessageModel> msgList = messageModelService.getList();
		PageInfo<MessageModel> pageInfo = new PageInfo<>(msgList);
		return pageInfo;
	}
}
