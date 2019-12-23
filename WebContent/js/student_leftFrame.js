window.onload=function(){
	var oList = document.querySelectorAll('.list h2'),
        oHide = document.querySelectorAll('.hide'),
        oIcon = document.querySelectorAll('.list i'),
        lastIndex = 0;    
    for(var i=0;i<oList.length;i++){
        oList[i].index = i;//自定义属性
        oList[i].isClick = false;
        oList[i].initHeight = oHide[i].clientHeight;
        oHide[i].style.height = '0';
        oList[i].onclick = function () {
            if(this.isClick){
                oHide[this.index].style.height = '0';
                oIcon[this.index].className = '';
                oList[this.index].className = '';
                oList[this.index].isClick = false;
            }
            else{
                oHide[lastIndex].style.height = '0';
                oIcon[lastIndex].className = '';
                oList[lastIndex].className = '';
                oHide[this.index].style.height = 'auto';
                oIcon[this.index].className = 'on';
                oList[this.index].className = 'on';
                oList[lastIndex].isClick = false;
                oList[this.index].isClick = true;
                lastIndex = this.index;
            }
        }
    }
}

function mainpage(id){
	
	
	var frame_maincontent=$("#frame_maincontent" , parent.document);
	var maincontent=parent.document;
	switch(id){
		case 'a_mainpage':
			frame_maincontent.attr("src","student_main.jsp");break;
		case 'a_looksubmit':
			frame_maincontent.attr("src","student_submit.jsp");break;
		case 'a_modifypwd':
			frame_maincontent.attr("src","student_modifypwd.jsp");break;
		case 'a_exit':		
		    if(confirm("确定退出吗？"))
		    {	    	    	
		    	var xmlhttp;
		    	if (window.XMLHttpRequest)
		    	{
		    	    //  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
		    	    xmlhttp=new XMLHttpRequest();
		    	}
		    	else
		    	{
		    	    // IE6, IE5 浏览器执行代码
		    	    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		    	}
		    	xmlhttp.open("GET","/ExamSystem/mystudent_exit",true);
		    	xmlhttp.send();
		    	
		    	var text=xmlhttp.responseText;
		    	xmlhttp.onreadystatechange=function()
		    	{
		    	    if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    	    {
		    	    	var maincontent=parent.document;
		    	    	maincontent.location.href="../Login.jsp";
		    	    }
		    	}
		    }
		    break;
	}
}