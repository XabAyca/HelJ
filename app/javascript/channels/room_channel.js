import consumer from "./consumer"

document.addEventListener('turbolinks:load',()=>{
	const roomElement = document.querySelector("#room-id")
	const roomId = Number(roomElement.getAttribute('data-room-id'))
	consumer.subscriptions.create({ channel:"RoomChannel",room_id:roomId}, {
		connected() {
			console.log(`connected to ${roomId}`)
		  // Called when the subscription is ready for use on the server
		},
	  
		disconnected() {
		  // Called when the subscription has been terminated by the server
		},
	  
		received(data) {
			console.log(data)
			const messagesContainer = document.querySelector('#messages')
			messagesContainer.innerHTML = messagesContainer.innerHTML + data.html
			console.log('send')
		  // Called when there's incoming data on the websocket for this channel
		}
	  });
})

