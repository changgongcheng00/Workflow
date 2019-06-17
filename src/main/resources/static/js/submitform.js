
$(document).ready(function(){
    $(".box-content").hide();
    var grid=$("#grid-data").bootgrid({
        navigation:2,
        columnSelection:false,
        ajax:true,
        url:"getSMTaskList",
        formatters: {
            "taskCreateTime":function(column, row){
                return getTime(row.taskCreateTime);
            },
            "leaveTime" : function(column, row){
                return "<span id='leaveTime'>"+row.leaveTime+"</span>";
            },
            "commands": function(column, row)
            {
                return "<button class=\"btn btn-xs btn-default ajax-link command-run1\" data-row-id=\"" + row.taskid + "\">处理</button>";
            }
        }
    }).on("loaded.rs.jquery.bootgrid", function()
    {
        grid.find(".command-run1").on("click", function(e)
        {
            var taskid=$(this).data("row-id");
            $.post("dealtask",{"taskid":taskid},function(data){
                var obj = JSON.parse(data);
                $("#userId").val(obj.userId);
                $("#applyTime").val(getTime(obj.applyTime));
                $("#startTime").val(obj.startTime);
                $("#endTime").val(obj.endTime);
                $("#leaveTimes").val(obj.leaveTime);
                $("#reason").val(obj.reason);
                $("#leaveType").find("option[value='"+obj.leaveType+"']").attr("selected","selected");
                $("#userJobId").find("option[value='"+obj.userJobId+"']").attr("selected","selected");
                // $("form").attr("action","task/submitcomplete/"+taskid);
            });
            $(".box-content").show();
            $(".btn").click(function(){
                var datas = $("form").serialize();
                var submitType = $("#submitType option:selected").val();
                if (/=(&|$)/.test(datas)){
                    alert("所有值不能为空");
                    return;
                }
                // $.post("task/submitcomplete/"+taskid,datas,function(a){
                //     alert("处理成功");
                //     LoadAjaxContent("submitform");
                // });
                $(".btn").attr("disabled","disabled");
                $.ajax({
                    url:"task/submitcomplete/"+taskid+"/"+submitType,
                    type:"post",
                    contentType:"application/json;charset=UTF-8",
                    data:datas,
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
            });
        });

    });



    //     .on("loaded.rs.jquery.bootgrid", function(){
    //     grid.find(".btn").on("click", function(e) {
    //         var taskid=$(this).data("row-id");
    //         var tlApprove = $("#tlApproveSelect option:selected").val();
    //         var obj = {};
    //         obj.taskid = taskid;
    //         obj.approve = tlApprove;
    //         $("#btn").attr("disabled","disabled");
    //         // $.post("task/plcomplete/",JSON.stringify(obj),function(a){//$("form").serialize()//JSON.stringify(obj),
    //         //     alert("处理成功");
    //         //     $("#btn").removeAttr("disabled");
    //         // });
    //         $.ajax({
    //             url:"task/plcomplete/",
    //             type:"post",
    //             contentType:"application/json;charset=UTF-8",
    //             data:JSON.stringify(obj),
    //             dataType:"json",
    //             success : function(data){
    //                 if(data.code == 0){
    //                     alert("处理成功");
    //                     $("#btn").removeAttr("disabled");
    //                 }else{
    //                     alert(data.msg);
    //                 }
    //             }
    //         })
    //     })
    // });


});
