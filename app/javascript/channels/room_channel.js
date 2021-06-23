import consumer from "./consumer"

document.addEventListener('turbolinks:load',()=>{
	const roomElement = document.querySelector("#room-id")
	const roomId = Number(roomElement.getAttribute('data-room-id'))
	consumer.subscriptions.create({ channel:"RoomChannel",room_id:roomId}, {
		connected() {
			console.log(`connected to ${roomId}`)
			document.querySelector('#message-input',(e)=>{

			})
		  // Called when the subscription is ready for use on the server
		},
	  
		disconnected() {
		  // Called when the subscription has been terminated by the server
		},
	  
		received(data) {
			console.log(data)
			const messagesContainer = document.querySelector('#messages')
			const SendButton = document.querySelector('#send')
			const messageInput = document.querySelector("#message-input")
			messagesContainer.innerHTML = messagesContainer.innerHTML + data.html
			messageInput.value =""
			SendButton.disabled = false
			console.log('send')
			const messageContainer = document.querySelector('#messages')
			messageContainer.scrollTop = messageContainer.scrollHeight
		  // Called when there's incoming data on the websocket for this channel
		}
	  });
})

