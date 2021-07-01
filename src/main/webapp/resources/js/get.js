/**
 * 
 */
 	$(function () {
		function showModifyModal(rno) {
			$.ajax({
				type: "get",
				url: appRoot + "/replies/" + rno,
				success: function (reply) {
					$("#reply-rno-input2").val(reply.rno);
					$("#reply-replyer-input2").val(reply.replyer);
					$("#reply-reply-textarea2").text(reply.reply);
					$("#reply-modify-modal").modal("show");
				},
				error: function () {
					console.log("댓글 가져오기 실패-!")
				}
			});
		}
		
		function showReplyList(list) {
			var container = $("#reply-list-container").empty();
			
			for (var reply of list) {
				var replyHTML = `<li class="media" id="${reply.rno}" data-rno="${reply.rno}">
										<div class="media-body">
											<h5 class="my-4">${reply.replyer}</h5>
											<p>${reply.reply}</p>
											<small>${new Date(reply.replyDate).toISOString().split("T")[0]}</small>
										</div>
									</li>`;
				var replyComponent =  $(replyHTML).click(function() {
					showModifyModal($(this).attr("data-rno"));
				});
				container.append(replyComponent);
			}

			// similar with advanced for statement
			/*
			for (var reply of list) {
				var newItem = $("<li>").addClass("media")
										.attr("id", "reply" + reply.rno)
										.attr("data-rno", reply.rno);
				var mediaBody = $("<div>").addClass("media-body");
				newItem.append(mediaBody);
				
				// update and delete comments
				newItem.click(function () {
					showModifyModal($(this).attr("data-rno"));
				});
				
				// insert new comments
				mediaBody.append("<h5 class='my-4'>" + reply.replyer + "</h5>")
						 .append("<p>" + reply.reply + "</p>")
						 //.append("<small>" + reply.replyDate + "</small>");
						 .append("<small>" + new Date(reply.replyDate).toISOString() + "</small>");	
				container.append(newItem);
			}
			*/
		}
		
		// 댓글 목록 가져오기
		function getReplyList() {
			$.ajax({
				type: "get",	
				url: appRoot + "/replies/pages/" + boardBno,
				success: function (list) {
					console.log(list);
					showReplyList(list);
				},
				error: function () {
					console.log("댓글 가져오는 중에 에러가 발생했다!");
				}
			});
		}
		
		// 페이지 로딩 후 댓글 목록 가져오는 함수 실행
		getReplyList();
		
		// 댓글 입력 버튼 처리
		$("#reply-submit-btn1").click(function () {
			var bno = $("#reply-bno-input1").val();
			var replyer = $("#reply-replyer-input1").val();
			var reply = $("#reply-reply-textarea1").val();
			
			var data = {
				bno: bno,
				replyer: replyer,
				reply: reply
			};
			
			$.ajax({
				type: "post",
				url: appRoot + "/replies/new",
				data: JSON.stringify(data),
				contentType: "application/json",
				success: function () {
					console.log("successed!");
					// Close Modal
					$("#reply-insert-modal").modal("hide");
					// and Get comments List
					getReplyList();
					// and Show message (notice)
					$("#alert1").text("♥ ♥ ♥ 새로운 댓글을 등록하였습니다 ♥ ♥ ♥").addClass("show");
				},
				error: function () {
					console.log("failed!");
				}
			});
		});
		
		
		// 수정 Submit 버튼 클릭 시
		$("#reply-modify-btn1").click(function () {
			var rno = $("#reply-rno-input2").val();
			var bno = $("#reply-bno-input2").val();
			var reply = $("#reply-reply-textarea2").val();
			var replyer = $("#reply-replyer-input2").val();
			
			var data = {
				rno: rno,
				bno: bno,
				reply: reply,
				replyer: replyer
			}
			
			$.ajax({
				type: "put",
				url: appRoot + "/replies/" + rno,
				data: JSON.stringify(data),
				contentType: "application/json",
				success: function () {
					console.log("수정 성공");
					// Close Modal
					$("#reply-modify-modal").modal("hide");
					// and Get comments List
					getReplyList();
					// and Show message (notice)
					$("#alert1").text("♥ ♥ ♥ 댓글을 수정하였습니다 ♥ ♥ ♥").addClass("show");
				},
				error: function () {
					console.log("수정 실패");
				}
			})
		})
		
		// 삭제 버튼 클릭 시
		$("#reply-delete-btn1").click(function () {
			var check = confirm("삭제하시겠습니까?")
			
			if (check) {
				
				var rno = $("#reply-rno-input2").val();
				
				$.ajax({
					type: "delete",
					url: appRoot + "/replies/" + rno,
					success: function () {
						console.log("삭제 성공");
						// Close Modal
						$("#reply-modify-modal").modal("hide");
						// And Get comments List
						getReplyList();
						$("#alert1").text("♥ ♥ ♥ 댓글을 삭제하였습니다 ♥ ♥ ♥").addClass("show");
					},
					error: function () {
						console.log("삭제하지 못했습니다-!")
					}
				})
			}
		})
		
	});