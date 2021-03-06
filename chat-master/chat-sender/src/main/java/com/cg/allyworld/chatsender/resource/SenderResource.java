package com.cg.allyworld.chatsender.resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cg.allyworld.chatsender.entity.ChatWebsite;
import com.cg.allyworld.chatsender.entity.Sender;
import com.cg.allyworld.chatsender.service.SenderService;

@RestController
@RequestMapping("/sender")
public class SenderResource {

	@Autowired
	private SenderService service;

	@Autowired
	private Sender sender;

	@PostMapping
	public void sendMessage(@RequestBody ChatWebsite chat) {
		System.out.println("sending msg");
		int senderId = chat.getSenderId();
		int receiverId = chat.getReceiverId();
		String message = chat.getMessage();
		//String actionType = chat.getAction();
		System.out.println("sendingmessage");
		sender.send(senderId, receiverId, message);
	}

}
