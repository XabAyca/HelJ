window.addEventListener('load',()=>{
	
	
	if( document.querySelector('#messages')){
		
		messageContainer = document.querySelector('#messages')
		messageContainer.scrollTop = messageContainer.scrollHeight
	}
})