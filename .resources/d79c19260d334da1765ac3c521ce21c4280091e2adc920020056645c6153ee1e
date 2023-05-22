def doPost(request, session):
	
	session_id = request['parms']['session']
	page_id = requeest['params']['page']
	message_type = request['data']['msg_type']
	payload = request['data']['payload']
	
	system.perspective.sendMessage('receiveMessage', scope='session', sessionId=session_id, pageId=page_id)