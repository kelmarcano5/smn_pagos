addNew();
//alertBox ('${lbl:b_record_added}: ${fld:id}', '${lbl:b_continue_button}', null, 'search(); setFocusOnForm("form1");');
showMessage('','${lbl:b_record_added}: ${fld:id}','success');
setFocusOnForm("form1");
clearSelect2();
search();

