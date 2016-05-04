
$(document).ready(function() {
    $('select').material_select();
});

var months=["January","February","March","April","May","June","July","August","September","October","November","December"];
var selm = document.getElementById('mnth');
var fragm = document.createDocumentFragment();

months.forEach(function (month,index) {
    var optm = document.createElement('option');
    optm.innerHTML=month;
    optm.value=index;
    fragm.appendChild(optm);
});
selm.appendChild(fragm);

var days=["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"];
var sel=document.getElementById('dt');
var fragment = document.createDocumentFragment();

days.forEach(function (day,index) {
    var opt = document.createElement('option');
    opt.innerHTML=day;
    opt.value=index;
    fragment.appendChild(opt);
});
sel.appendChild(fragment);

var loadFile = function (event) {
    var reader = new FileReader();
    reader.onload = function () {
        var output = document.getElementById('dpimg');
        output.src = reader.result;
    };
    reader.readAsDataURL(event.target.files[0]);
};