function years(obj, Cyear) {
    var len = 24; // select����,��option����
    var selObj = document.getElementById(obj);
    var selIndex = len - 1;
    var newOpt; // OPTION����

    // ѭ�����OPIONԪ�ص����select������
    for (i = 1; i <= len; i++) {
        if (selObj.options.length != len) { // ���Ŀ��������������Ȳ������趨�ĳ�����ִ�����´���
            newOpt = window.document.createElement("OPTION"); // �½�һ��OPTION����
            newOpt.text = Cyear - len + i; // ����OPTION���������
            newOpt.value = Cyear - len + i; // ����OPTION�����ֵ
            selObj.options.add(newOpt, i); // ��ӵ�Ŀ�������
        }

    }
}

function months(){
    var month = document.getElementById("month");
    month.length = 0;  
    for (i = 1; i < 13; i++) {  
        month.options.add(new Option(i, i));  
    }
    
}


function change_date(){ 
// var birthday = document.birthday; 
var year = document.getElementById("year"); 
var month = document.getElementById("month"); 
var day = document.getElementById("date"); 
vYear = parseInt(year.value); 
vMonth = parseInt(month.value); 
day.length=0; 
//�������»�ȡ���� 
var max = (new Date(vYear,vMonth, 0)).getDate(); 
for (var i=1; i <= max; i++) { 
day.options.add(new Option(i, i)); 
} 
}

