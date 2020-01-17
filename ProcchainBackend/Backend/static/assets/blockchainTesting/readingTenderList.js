
$(document).ready(function() {
    var tenders;
    alert("Hello!");
    $.getJSON('{% static "assets/blockchainTesting/tenderlist.json" %}', function(data) {
        tenders = data.items();
        console.log(tenders);
    });
});