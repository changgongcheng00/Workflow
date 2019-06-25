
$(document).ready(function(){
    var grid=$("#grid-data").bootgrid({
        navigation:2,
        columnSelection:false,
        ajax:true,
        url:"getTLTaskList",
        formatters: {
            "taskCreateTime":function(column, row){
                return getTime(row.taskCreateTime);
            },
            "leaveTime" : function(column, row){
                return "<span id='leaveTime'>"+row.leaveTime+"</span>";
            },
            "options" : function(column, row){
                return "<select id=\"tlApproveSelect\"><option value=\"true\">同意</option><option value=\"false\">拒绝</option></select>";
            },
            "commands": function(column, row)
            {
                return "<button class=\"btn btn-xs btn-default ajax-link command-run1\" data-row-id=\"" + row.taskid + "\">提交</button>";
            }
        }
    }).on("loaded.rs.jquery.bootgrid", function(){
        grid.find(".btn").on("click", function(e) {
            var taskid=$(this).data("row-id");
            var leaveTime =$("#leaveTime").text();
            var tlApprove = $("#tlApproveSelect option:selected").val();
            var obj = {};
            obj.leaveTime = leaveTime;
            obj.taskid = taskid;
            obj.approve = tlApprove;
            $(".btn").attr("disabled","disabled");
            // $.post("task/tlcomplete/",JSON.stringify(obj),function(a){//$("form").serialize()//JSON.stringify(obj),
            //     alert("处理成功");
            //     $("#btn").removeAttr("disabled");
            // },"json");
            $.ajax({
                url:"task/tlcomplete/",
                type:"post",
                contentType:"application/json;charset=UTF-8",
                data:JSON.stringify(obj),
                dataType:"json",
                success : function(data){
                    if(data.code == 0){
                        alert("处理成功");
                        $(".btn").removeAttr("disabled");
                        LoadAjaxContent("tlapprove");
                    }else{
                        alert(data.msg);
                    }
                }
            })
        })
    });
});

