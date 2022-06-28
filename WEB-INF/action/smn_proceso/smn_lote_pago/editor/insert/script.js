addNew();
showMessage('','${lbl:b_record_added}: ${fld:id}','success');
setFocusOnForm("form1");
clearSelect2();
search();

//alertBox ('${lbl:b_record_added}: ${fld:id}', '${lbl:b_continue_button}', null, 'search(); setFocusOnForm("form1");');
