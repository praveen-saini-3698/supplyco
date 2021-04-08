exports.success = (res, data = null, message = null) => {
    res.status(200).send({
        name: data?.constructor?.name || "Success",
        message: message || "Data Fetch Successfully.",
        data: data || null,
        statusCode: 200
    });
};

exports.error = (res, error, statusCode = 500) => {
    res.status(statusCode).send({
        name: error?.constructor?.name || "Error",
        message: error.toString() || "Some error occurred while retrieving reccord.",
        statusCode: statusCode,
        error: error || "Bad Request"
    });
}