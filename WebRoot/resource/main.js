// JavaScript Document
$('.dropdown-toggle').dropdown();

function but1() {  //给submit绑定点击事件
    var b = document.getElementById("one"); //获取透明层
    b.style.display = "block";  //点击提交显示透明层
}
function but2() {  //给submit绑定点 击事件
    var b = document.getElementById("two"); //获取透明层
    b.style.display = "block";  //点击提交显示透明层
}

function fToggle(objId){
         
        //触发事件后，根据传入的参数获取值
        var state = document.getElementById(objId).style.display;
 
        //再进行设置显示或是隐藏就行了
        if( state == 'block' ){
            document.getElementById(objId).style.display = 'none';
        }
        else{
            document.getElementById(objId).style.display = 'block';
        }



    }

