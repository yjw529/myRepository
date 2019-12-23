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
	case 'm_mainpage':frame_maincontent.attr("src","admin_main.jsp");break;
	
	case 'm_manageteacher':frame_maincontent.attr("src","admin_manageTeacher.jsp");break;
	
	case 'm_addteacher':frame_maincontent.attr("src","admin_addTeacher.jsp");break;///ExamSystem/myexaminfo teacher_examinfo.jsp
	case 'm_clearexam':frame_maincontent.attr("src","admin_clearexam.jsp");break;
	/*case 'm_system':frame_maincontent.attr("src","admin_system.jsp");break;*/
	case 'm_modifypwd':frame_maincontent.attr("src","admin_modifypwd.jsp");break;
	case 'm_exit':		
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

