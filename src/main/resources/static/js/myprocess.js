$(document).ready(function(){
    var grid=$("#grid-data").bootgrid({
        navigation:2,
        columnSelection:false,
        ajax:true,
        url:"getProcessList",
        formatters: {
            "commands": function(column, row)
            {
                return "<a class=\"btn-xs btn-default ajax-link\" target=\"_blank\" href=\"traceProcess/" + row.processInstanceId + "\">查看流程图</a>"+
                "<button id='remove' class=\"btn btn-xs btn-default ajax-link\" data-row-id=\"" + row.processInstanceId + "\">撤销</button>";
            }
        }
    }).on("loaded.rs.jquery.bootgrid", function(){
        grid.find(".btn").on("click", function(e) {
            var taskid=$(this).data("row-id");
            $("#remove").attr("disabled","disabled");
            $.ajax({
                url:"endProcess/"+taskid,
                type:"get",
                success : function(data){
                    if(data.code == 0){
                        alert("处理成功");
                        $("#remove").removeAttr("disabled");
                        LoadAjaxContent("myprocess");
                    }else{
                        alert(data.msg);
                    }
                }
            })
        });
    });
});

