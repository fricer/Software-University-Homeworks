﻿var app = app || {};

app.ajaxRequester = (function () {
    function makeRequest(method, headers, url, data, success, error) {
        $.ajax({
            method: method,
            headers: headers,
            url: url,
            contentType: "application/json",
            data: JSON.stringify(data),
            success: success,
            error: error
        });
    }

    function makeGetRequest(headers, url, success, error) {
        return makeRequest("GET", headers, url, null, success, error);
    }

    function makePostRequest(headers, url, data, success, error) {
        return makeRequest("POST", headers, url, data, success, error);
    }

    function makePutRequest(headers, url, data, success, error) {
        return makeRequest("PUT", headers, url, data, success, error);
    }

    function makeDeleteRequest(headers, url, success, error) {
        return makeRequest("DELETE", headers, url, null, success, error);
    }

    return {
        get: makeGetRequest,
        post: makePostRequest,
        put: makePutRequest,
        delete: makeDeleteRequest
    }
}());