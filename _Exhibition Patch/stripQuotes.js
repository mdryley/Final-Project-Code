autowatch = 1;
inlets =1;
outlets = 1;

function word(s) {
    var cleaned = s.toString().replace(/\x22/g, '');
	post(cleaned);
    outlet(0, cleaned);
}