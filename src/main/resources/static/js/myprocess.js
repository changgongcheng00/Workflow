
$(document).ready(function(){
    var grid=$("#grid-data").bootgrid({
        navigation:2,
        columnSelection:false,
        ajax:true,
        url:"getProcessList",
        formatters: {
            "commands": function(column, row)
            {
                return "<a class=\"btn btn-xs btn-default ajax-link\" target=\"_blank\" href=\"traceProcess/" + row.processInstanceId + "\">查看流程图</a>";
            }
        }
    }).on("loaded.rs.jquery.bootgrid", function(){
    });


});

