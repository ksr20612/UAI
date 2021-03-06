<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>write QnA Form</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
        
        <!-- Bootstrap CSS -->
       <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
      
      <!-- slider 설정 -->
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen">
        <!-- Include jQuery library and Flexslider script -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/flexslider/2.6.3/jquery.flexslider-min.js"></script>
      <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
      
      <!-- Link Swiper's CSS -->
        <link rel="stylesheet" href="css/swiper.min.css">
      
        
        <!-- font 설정 -->
        <link rel="stylesheet" href="https://use.typekit.net/kcj1cyn.css">
                
        <style>
         @import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
        @import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
        @import url(//fonts.googleapis.com/earlyaccess/hanna.css);
        @import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);
            #wrapper{
            width: 1024px;
            margin: 0px auto;
            }
            #top-box{
            width: 1024px;
            height: 215px;
            float: left;
            margin-top: 10px;
            margin-bottom:-10px;
            }
                    #top-small-1{
                        width: 1024px;
                        height: 10px; 
                        float: left;
                    }
                    #top-menu{
                        width:300px;
                        height: 10px;
                        float: right;
                        font-family: lemongrass-caps, sans-serif;
                        font-weight: 200;
                        font-style: normal;
                    } 
                    #top-small-2{
                        width: 1024px;
                        height: 130px;
                        float: left;
                    }
                    #top-logo{
                        width: 130px;
                        height: 120px;
                        margin-left: 230px;
                    }
                    #top-small-3{
                        width: 1024px;
                        height: 60px;
                        float: left;
                    }
                    #top-mini-logo{
                        width: 25px;
                        height: 25px;
                        float: left;
                    }
                    #top-menu-bar{
                        width: 1024px;
                        margin-top: -8px;
                        margin-bottom: -8px;              
                        font-family: seasoned-hostess, sans-serif;
                        font-weight: 900;
                        font-style: normal;
                        font-size: 15pt;
                        float: left;
                    }
            #middle-box{
                width: 1024px;
                height: 1200px;
                float: left;
                }
                        #middle-small-3{
                            width:900px;
                            height: 250px;
                            float: left;
                        }
                        #middle-slide{
                            width: 1000px;
                            height: 250px;
                            float: left;
                            margin-left: 13px;
                            margin-top:-10px;
                        }
                        #middle-small-1{
                         width: 216px;
                         height: 250px;
                         float: left;
                         font-family: lemongrass-caps, sans-serif;
                       }
                       #login-success-box{
                          float: left;
                          margin-top:9px;
                       }
                       #middle-empty1{
                          float: left;
                          width: 200px;
                          height: 45px;
                          font-family: lemongrass-script, sans-serif;
                          font-size: 10pt;
                          text-align: center;
                          margin-bottom:-35px;
                          font-weight: 300;
                          margin-left: 5px;
                          margin-top:10px;
                       }
                       #login-success-function{
                         float: left;
                         text-align: center;
                         margin-left: 10px;
                       }
                       #logo-login-box-line2{
                         width: 3px;
                         height: 160px;
                         float: right;
                         margin-right: 15px;
                       }
                       #middle-login-box{
                         width: 160px;
                         height: 180px;
                         float: left;
                         border-radius: 5px;
                         margin-left: 40px;
                       }
                       #logo-login-box-line{
                         width: 3px;
                         height: 160px;
                         float: right;
                         margin-top: 8px;
                       }
                       #sign-in{
                         width: 140px;
                         height: 80px;
                         float: left;
                         margin-top: 25px;
                       }
                       #logo-sign-in{
                         width: 35px;
                         height: 40px;
                         float: left;
                       }
                       #sign-up{
                         width: 140px;
                         height: 80px;
                         float: left;
                         margin-top: 8px;
                       }
                       #logo-sign-up{
                         width: 32px;
                         height: 30px;
                         float: left;
                         margin-left: 3px;
                       }
                       .login-function{
                         float: right;
                         font-family: lemongrass-caps, sans-serif;
                         font-weight: 400;
                         font-style: normal; 
                         font-size: 18pt;
                         margin-right: 10px;
                         margin-top: 3px;   
                       }
																			                        #middle-small-2{
																			                            width: 795px;
																			                            height: 600px;
																			                            float: left;
																			                            margin-top: 5px;
																			                           font-family: 'Jeju Gothic', sans-serif;
																			                            font-size: 15pt;
																			                        }
																			                        #review-page-title{
																			                            float: left;
																			                            width: 795px;
																			                            font-size: 24pt;
																			                            font-weight: 550;
																			                            background-color: darkgray;
																			                            border-radius:5px;
																			                            color: white;
																			                            font-family: seasoned-hostess, sans-serif;
																			                        }
																			                        #review-box{
																			                            float: left;
																			                            font-family: lemongrass-caps, sans-serif;
																			                            margin-left: 30px;
																			                            font-size: 15pt;
																			
																			                        }
																			                        #reivew-button{
																			                           float: right;
																			                           
																			                        }
																			                        .file_input{
																			                           margin-top: 5px;
																			                        }
																			                        .file_input label {
																			                      position:relative;
																			                      cursor:pointer;
																			                      display:inline-block;
																			                      vertical-align:middle;
																			                      overflow:hidden;
																			                      width:100px;
																			                      height:30px;
																			                      background:#777;
																			                      color:#fff;
																			                      text-align:center;
																			                      line-height:30px;
																			                  }
																			                  .file_input label input {
																			                      position:absolute;
																			                      width:0;
																			                      height:0;
																			                      overflow:hidden;
																			                  }
																			                  .file_input input[type=text] {
																			                      vertical-align:middle;
																			                      display:inline-block;
																			                      width:400px;
																			                      height:28px;
																			                      line-height:28px;
																			                      font-size:11px;
																			                      padding:0;
																			                      border:0;
																			                      border:1px solid #777;
																			                  }
																		                  	  #question-box{
																		                  	  	float:left;
																		                  	  	margin-left: 30px;
																		                  	  	margin-top:10px;
																		                  	  }
																		                  	  #is-hidden{
																			                	  float:left;
																			                	  margin-top:5px;  
																		                  	  }
																		                  	  #is-hidden2{
																			                	  float:left;
																			                	  margin-bottom: 10px; 
																			                	  margin-top:-10px; 
																		                  	  }
																		                  	  #cke_b_content{
																		                  	  	float:left;
																		                  	  	margin-bottom: 15px;
																		                  	  }
                                                                                           
               #bottom-box{
               width: 1024px;
               height: 170px;
               background-color: darkgray;
               color: white;
               float: left;
            margin-top: 80px;               
             }
          
              #bottom-phrase{
                font-family: seasoned-hostess, sans-serif;
            font-weight: 400;
            font-style: normal;
            font-size: 15pt;
                 float: right;
                 margin-top:130px;
                 margin-right: 10px;
              }

        </style>
        
        
        <!-- Swiper styles -->
        <style>
            .swiper-container {
                width: 100%;
                height: 100%;
                margin-left: auto;
                margin-right: auto;
            }
            .swiper-slide {
                text-align: center;
                font-size: 18px;
                background: #fff;
                /* Center slide text vertically */
                display: -webkit-box;
                display: -ms-flexbox;
                display: -webkit-flex;
                display: flex;
                -webkit-box-pack: center;
                -ms-flex-pack: center;
                -webkit-justify-content: center;
                justify-content: center;
                -webkit-box-align: center;
                -ms-flex-align: center;
                -webkit-align-items: center;
                align-items: center;
            }
        </style>
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>
        <script src="//cdn.ckeditor.com/4.7.1/standard/ckeditor.js"></script>
        <script type="text/javascript">
        
        	//id= b_content가 있는 곳을 CKEDITOR로 대신함.
        	
            $(document).ready(function(){
                 
                CKEDITOR.replace( 'b_content' );
                CKEDITOR.config.height = 500;
            
                //밑의 list 버튼 클릭 시 위치 설정
                $("#list").click(function(){
                    location.href = "/boardQnAPage";
                });
                 
                $("#save").click(function(){
                     
                    //에디터 내용 가져옴
                    var b_content = CKEDITOR.instances.content.getData();
                     
                    //널 검사
                    if($("#b_title").val().trim() == ""){
                        alert("제목을 입력하세요.");
                        $("#b_title").focus();
                        return false;
                    }
                     
  				       if($("#b_content").val().trim() == ""){
                        alert("내용을 입력하세요.");
                        $("#b_content").focus();
                        return false;
                    }
  				    
              
                     
                    //값 셋팅
                    //id= idx
                    //subject = title
                    //writer = nick
                    //password = pw
                    //content = content
                    var objParams = {
                            
                            id          : $("#b_idx").val(),
                            subject     : $("#b_title").val(),
                            writer      : $("#sessionData.m_nick").val(),
                            password    : $("#b_pw").val(),
                            content     : content
                    };
                     
                    //ajax 호출
                    $.ajax({
                        url         :   "/writeQnAAction",
                        dataType    :   "json",
                        contentType :   "application/x-www-form-urlencoded; charset=UTF-8",
                        type        :   "post",
                        data        :   objParams,
                        success     :   function(retVal){
						 //url = form action 위치와 동일. 이후 리다이렉트하여 돌아갈 위치는 밑의 location.href= 에 작성.
                            if(retVal.code == "OK") {
                                alert(retVal.message);
                                location.href = "/boardQnAPage";  
                            } else {
                                alert(retVal.message);
                            }
                             
                        },
                        error       :   function(request, status, error){
                            console.log("AJAX_ERROR");
                        }
                    });
                     
                     
                });
                 
            });
        </script>

		<!-- 기능 구현 -->
		<script type="text/javascript">
		function fn_test(value){
			if(value=="0"){
				document.getElementById("b_pw").style.display = "none";
			}else{
				document.getElementById("b_pw").style.display = "block";
				
			}
		}
		</script>

		<script>
		function checkz(){
		      if(!document.b_title.value){
		        alert("제목을 입력해주세요");
		        document.b_title.focus();
		        return false;
		      }
		      if(!document.b_content.value){
			        alert("내용을 입력해주세요");
			        document.b_content.focus();
			        return false;
		      }
		      if(!document.b_pw.value){
			        alert("글의 비밀번호를 입력해주세요");
			        document.b_pw.focus();
			        return false;
		      }
		      return true;
		}
	</script>        
    </head>






    <body>
        <div id="wrapper">
            <div id="top-box">
                <div id="top-small-1">
                    <div id="top-menu">
                       <a style="color: black" href="./mainPage">HOME</a> | 
                      <a style="color: black" href="./loginForm">LOGIN</a> | 
                      <a style="color: black" href="#">NOTICE</a> | 
                      <a style="color: black" href="./myPage">MYPAGE</a>            
                    </div>
                    </div>
                    <div id="top-small-2">
                    <div id="top-logo">
                        <a href="./mainPage"><img id="top-logo" src="./img/logo.png"></a>
                    </div>
                    </div>
                    <div id="top-small-3">
                    <nav class="navbar navbar-expand navbar-light bg-light sticky-top">
                        <a class="navbar-brand"><img id="top-mini-logo" src="./img/topMiniLogo.png"></a>
                        <ul class="navbar-nav" id="top-menu-bar">
                           <li class="nav-item"><a class="nav-link" href="./boardNoticePage">Notice</a></li>
                            <li class="nav-item"><a class="nav-link" href="./productListPage">Lecture</a></li>
	                        <li class="nav-item"><a class="nav-link" href="./boardReviewPage">Review</a></li>
	                        <li class="nav-item"><a class="nav-link" href="./boardQnAPage">Q & A</a></li>
                        </ul>
                    </nav>
                    </div>
                </div><!--top-box div-->
        
        <div id="middle-box">

            <div id="middle-small-3">
                <!-- Swiper -->
                <div class="swiper-container" id="middle-slide">
                    <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="./img/middleSlide4.png"></div>
                    <div class="swiper-slide"><img src="./img/middleSlide4.png"></div>
                    <div class="swiper-slide"><img src="./img/middleSlide4.png"></div>
                    <div class="swiper-slide"><img src="./img/middleSlide4.png"></div>
                    </div> 
                    <!-- Add Pagination --> 
                    <div class="swiper-pagination"></div> 
                    <!-- Add Arrows -->
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
                
                <!-- Swiper JS --> 
                <script src="js/swiper.min.js"></script>
                
                <!-- Initialize Swiper -->
                <script>
                    var swiper = new Swiper('.swiper-container', {
                    spaceBetween: 30,
                    loop: true,
                    centeredSlides: true,
                    autoplay: {
                        delay: 3500, //autoplay 시간
                        disableOnInteraction: false,
                    },
                    pagination: {
                        el: '.swiper-pagination',
                        clickable: true
                    },
                    navigation: {
                        nextEl: '.swiper-button-next',
                        prevEl: '.swiper-button-prev',
                    },
                    });
                </script>
                </div><!--middle-small-box-3-->
            

                <div id="middle-small-1">
                        <c:choose>
                            <c:when test="${!empty sessionData }">
                              <div id="middle-empty1">Learn Something Worthy!</div>
                              <div id="login-success-box">
                                  <h4>Welcome,</h4> <h6>${sessionData.m_nick }</h6>
                                  <br>
                                  <div id="login-success-function">
                                  <a style="color: black" href="./logoutAction"><button class="btn btn-light">Logout</button></a>
                                  <a href="./myPage"><button class="btn btn-secondary">My Page</button></a>
                                  <br>
                                  </div>
                              
                              </div>
                              <img src="./img/loginBoxLine.png" id="logo-login-box-line2">
                            </c:when>
                            
                            <c:otherwise>
                                <div class="well" id="middle-login-box">
                                <img src="./img/loginBoxLine.png" id="logo-login-box-line">
                                <div id="sign-in">
                                  <img src="./img/signIn.png" id="logo-sign-in"> 
                                  <a class="login-function" style="color: black" href="./loginForm">Sign In</a>
                                </div>
                                <div id="sign-up">
                                  <img src="./img/signUp.png" id="logo-sign-up">
                                  <a class="login-function" style="color: black" href="./joinMemberForm">Sign Up</a>
                                </div>
                              </div>
                              <!-- Your ID was not found in our Data. Please try it again. <br>
                              <a href="./loginForm">go back to Login Page</a> <br><br> -->
                            </c:otherwise>      
                          </c:choose>
                    </div><!--middle-small-box-1-->
      
            
                <div id="middle-small-2">
                   <div id="review-page-title">
                   	▶   Write Question
                   </div>
                    <br>
                    <br>
                    	<div id="question-box">
		                    <form onsubmit="return checkz()" action="./writeQnAAction" method="post" enctype="multipart/form-data">
										Title : <input type="text" name="b_title" id="b_title" placeholder="제목을 입력해주세요"> 
										<br>
										Nick : ${sessionData.m_nick } 
										<br>
										<div id="is-hidden">
											<select name ="b_isHidden" class="form-control" id="b_isHidden" onchange="fn_test(this.value);">
												<option value="0">공개글</option>
												<option value="1" selected>비밀글</option>
											</select>
										</div>
										<br>
										<br>
										<div id="is-hidden2">
											<select name="b_qCategory" class="form-control">
												<option value="0" selected>상품문의</option>
												<option value="1">결제문의</option>
											</select>
											<input type="hidden" name="p_idx" value="1">
										</div>
										<br>
										<textarea rows="10" cols="65" name="b_content" id="b_content" placeholder="내용을 입력해주세요"></textarea> 
										<br>
										<input type="hidden" value="${sessionData.m_idx}"  name="m_idx">
										
										<div id="b_pw" style="display:block"  class="col-lg-12">
										게시물PW: <input type="password" name="b_pw"  placeholder="비밀번호를 입력해주세요" maxlength="15">
										</div>
										
											<div class="file_input">
						                      <label>
						                          File
						                          <input type="file" multiple="multiple" name="files">
						                      </label>
						                      <input type="text" readonly="readonly" title="File Route">
						                  </div>
						                  <div id="reivew-button">
						                      <input class="btn btn-info" type="submit" value="글쓰기">
						                   </div>
							</form>
			              </div><!-- question-box -->


                </div><!--middle-small-box-2-->
              
        </div><!--middle box-->
        
        
        <div id="bottom-box">
        
             <div id="bottom-phrase">Help | Feedback | Privacy | Terms | ⓒUAI Project Company</div>
        
        
        
        </div><!-- bottom box div -->
        
       </div><!-- wrapper -->
   <!-- Optional JavaScript -->
     <!-- jQuery first, then Popper.js, then Bootstrap JS -->
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>