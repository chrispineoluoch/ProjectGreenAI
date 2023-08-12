/**This code runs the spining button animation*/
$(document).ready(function () {
    $("#sample-query-1").click(function () {
        $("#myspinicon-1").addClass("ld ld-ring ld-spin");
    });
});

/**This code runs the spining button animation*/
$(document).ready(function () {
    $("#sample-query-2").click(function () {
        $("#myspinicon-2").addClass("ld ld-ring ld-spin");
    });
});

/**This code runs the spining button animation*/
$(document).ready(function () {
    $("#sample-query-3").click(function () {
        $("#myspinicon-3").addClass("ld ld-ring ld-spin");
    });
});

/**This code runs the processsampleRequest function*/
$("#sample-query-1").click(function () {
    processfirstRequest();
});

/**This code runs the processsampleRequest function*/
$("#sample-query-2").click(function () {
    processsecondRequest();
});

/**This code runs the processsampleRequest function*/
$("#sample-query-3").click(function () {
    processthirdRequest();
});

function processfirstRequest() {
    var userPrompt = $("#sample-question-1").text();
    var date = new Date();
    var formattedDate = date.toLocaleDateString("en-us", { month: "long", day: "numeric", year: "numeric" });
    var data = { Title: formattedDate, Speech: userPrompt };

    /**This code uploads the sample users prompts to the database */
    $.ajax({
        type: "POST",
        url: "/Home/CreateUserPrompt",
        data: JSON.stringify(data),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            GetAppResponse(userPrompt);
        },
        failure: function (response) {
            console.log(response);
        }
    });
}

function processsecondRequest() {
    var userPrompt = $("#sample-question-2").text();
    var date = new Date();
    var formattedDate = date.toLocaleDateString("en-us", { month: "long", day: "numeric", year: "numeric" });
    var data = { Title: formattedDate, Speech: userPrompt };

    /**This code uploads the sample users prompts to the database */
    $.ajax({
        type: "POST",
        url: "/Home/CreateUserPrompt",
        data: JSON.stringify(data),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            GetAppResponse(userPrompt);
        },
        failure: function (response) {
            console.log(response);
        }
    });
}

function processthirdRequest() {
    var userPrompt = $("#sample-question-3").text();
    var date = new Date();
    var formattedDate = date.toLocaleDateString("en-us", { month: "long", day: "numeric", year: "numeric" });
    var data = { Title: formattedDate, Speech: userPrompt };

    /**This code uploads the sample users prompts to the database */
    $.ajax({
        type: "POST",
        url: "/Home/CreateUserPrompt",
        data: JSON.stringify(data),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            GetAppResponse(userPrompt);
        },
        failure: function (response) {
            console.log(response);
        }
    });
}

/**This code gets the apps response by passing the user prompt to OpenAI API*/
function GetAppResponse(userPrompt) {

    $.ajax({
        type: "GET",
        url: "/Home/GetAppResponse",
        data: { userprompt: userPrompt },
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        success: function (response) {
            var appResponse = response;
            CreateAppResponse(appResponse);
        },
        failure: function (response) {
            console.log(response);
        }
    });
}

/**This code uploads the app response to the database*/
function CreateAppResponse(appResponse) {
    var date = new Date();
    var formattedDate = date.toLocaleDateString("en-us", { month: "long", day: "numeric", year: "numeric" });
    var data = { Title: formattedDate, Speech: appResponse };

    $.ajax({
        type: "POST",
        url: "/Home/CreateAppResponse",
        data: JSON.stringify(data),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            window.location.href = "/Home/Consultations";
        },
        failure: function (response) {
            console.log(response);
        }
    });
}