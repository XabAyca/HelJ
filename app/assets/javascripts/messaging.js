window.addEventListener('load',()=>{
	console.log('l')
	console.log(document.querySelector('#messages'))
	if( document.querySelector('#messages')){
		console.log('l')
		messageContainer = document.querySelector('#messages')
		messageContainer.scrollTop = messageContainer.scrollHeight
	}
})