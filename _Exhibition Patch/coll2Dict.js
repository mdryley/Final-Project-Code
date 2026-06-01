autowatch = 1;
outlets = 1;

var destDict;
var isFirstEntry = true;

function convert() {
    destDict = new Dict("LSOA_WardDict");
    isFirstEntry = true;
    var sourceColl = this.patcher.getnamed("LSOA_WardColl");
    sourceColl.message("dump");
    post("dump sent\n");
}

function list() {
    if(isFirstEntry) {
        isFirstEntry = false;
        post("skipping header row\n");
        return;
    }
    
    var args = arrayfromargs(arguments);
    
    var lsoa_code = args[0];
    var lsoa_name = args[1];
    var ward_code = args[2];
    var ward_name = args[3];
    
    destDict.setparse(lsoa_code + "::lsoa_name " + lsoa_name);
    destDict.setparse(lsoa_code + "::ward_code " + ward_code);
    destDict.setparse(lsoa_code + "::ward_name " + ward_name);
    
    post("stored: " + lsoa_code + "\n");
}