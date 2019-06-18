$(document).ready(function(){
    var grid=$("#grid-data").bootgrid({
        navigation:2,
        columnSelection:false,
        ajax:true,
        url:"getUserInfoList"
    }).on("loaded.rs.jquery.bootgrid", function(){
    });
});

