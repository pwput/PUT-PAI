function isWhiteSpaceOrEmpty(str) {
    return /^[\s\t\r\n]*$/.test(str);
}

function checkEmail(str) {
    let email = /^[a-zA-Z_0-9\.]+@[a-zA-Z_0-9\.]+\.[a-zA-Z][a-zA-Z]+$/;
    return !email.test(str);
}

function checkStringAndFocus(obj, msg, fun) {
    let str = obj.value;
    let errorFieldName = "e_" + obj.name.substr(2, obj.name.length);
    if (fun(str)) {
        document.getElementById(errorFieldName).innerHTML = msg;
        obj.focus();
        return false;
    } else {
        document.getElementById(errorFieldName).innerHTML = "";
        return true;
    }
}
function validate(form) {
    checkStringAndFocus(form.elements["f_imie"], "Podaj imię!",isWhiteSpaceOrEmpty);
    checkStringAndFocus(form.elements["f_nazwisko"], "Podaj nazwisko!",isWhiteSpaceOrEmpty);
    checkStringAndFocus(form.elements["f_kod"], "Podaj kod!",isWhiteSpaceOrEmpty);
    checkStringAndFocus(form.elements["f_ulica"], "Podaj ulicę!",isWhiteSpaceOrEmpty);
    checkStringAndFocus(form.elements["f_miasto"], "Podaj miasto!",isWhiteSpaceOrEmpty);
    checkStringAndFocus(form.elements["f_email"], "Podaj właściwy e-mail",checkEmail);
}