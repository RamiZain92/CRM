const HttpStatusCodes = {
    OK: 200,
    CREATED: 201,
    NO_CONTENT: 204,
    BAD_REQUEST: 400,
    UNAUTHORIZED: 401,
    FORBIDDEN: 403,
    NOT_FOUND: 404,
    INTERNAL_SERVER_ERROR: 500,
};
const HttpResponseMessages = {
    OK: 'Successful',
    CREATED: 'Successfully Created',
    UPDATED: 'Successfully Updated',
    NO_CONTENT: 'No Content',
    BAD_REQUEST: 'Bad Request',
    UNAUTHORIZED: 'Unauthorized access',
    FORBIDDEN: 'Forbidden to access required resource',
    NOT_FOUND: 'Resource not found',
    INTERNAL_SERVER_ERROR: 'Something went wrong',
};
  
module.exports = { HttpStatusCodes, HttpResponseMessages };