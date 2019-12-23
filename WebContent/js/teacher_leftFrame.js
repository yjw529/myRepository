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
	case 'a_mainpage':frame_maincontent.attr("src","teacher_main.jsp");break;
	
	case 'a_editexam':frame_maincontent.attr("src","teacher_editexam.jsp");break;
	
	case 'a_examinfo':frame_maincontent.attr("src","teacher_examinfo.jsp");break;///ExamSystem/myexaminfo teacher_examinfo.jsp
	case 'a_managestudent':frame_maincontent.attr("src","teacher_managestudent.jsp");break;
	/*case 'a_managebind':frame_maincontent.attr("src","teacher_managebind.jsp");break;*/
	case 'a_managenotify':frame_maincontent.attr("src","teacher_managenotify.jsp");break;
	
	case 'a_exammanager':frame_maincontent.attr("src","teacher_afterexam.jsp");break;
		
	case 'a_modifypwd':frame_maincontent.attr("src","teacher_modifypwd.jsp");break;
	case 'a_exit':		
	    if(confirm("确定退出吗？"))
	    {	    	    	
	    	maincontent.location.href="../Login.jsp";break;
	    }
	    else
	    {
	        break;
	    }				
	}	
}

